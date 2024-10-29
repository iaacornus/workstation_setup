'''
Proof-of-concept scene based undo

Redefines:
  - commands: undo, redo
  - keys: CTRL-Z, CTRL-Y

'''

import time
import pymol
from pymol import cmd

# constants
NLEVELS = 10
PREFIX = 'UNDO_'

# instance variables
class self:
    interval = 2.0
    timestamp = 0
    index = 0
    suspended = -1
    busy = 0

def undoable(func):
    '''
    Decorator for undoable functions
    '''
    def wrapper(*args, **kwargs):
        return apply_undoable(func, args, kwargs)
    wrapper.__name__ = func.__name__
    wrapper.__doc__ = func.__doc__
    setattr(cmd, func.__name__, wrapper)
    return wrapper

def apply_undoable(func, args, kwargs):
    if not (self.busy or self.suspended) and \
            (time.time() - self.timestamp) > self.interval:
        store()
        moveindex(1)
    self.busy += 1
    try:
        return func(*args, **kwargs)
    finally:
        self.busy -= 1

def current_key():
    return PREFIX + str(self.index)

def moveindex(offset):
    self.index = (self.index + offset) % NLEVELS

def store():
    self.timestamp = time.time()
    cmd.scene(current_key(), 'store', view=0, active=0, frame=0)

def restore(offset=0):
    moveindex(offset)
    if -1 == cmd.scene(current_key(), 'recall', view=0, active=0, frame=0):
        moveindex(-offset)

def undo(redo=False):
    '''
DESCRIPTION

    undo recent color and representation changes, based on scenes

SEE ALSO

    redo
    '''
    if self.suspended:
        print(' Error: undo disabled (start it with "undo_enable")')
        return

    if self.busy:
        print(' Error: busy')
        return

    if redo:
        restore(1)
    else:
        store()
        restore(-1)

def redo():
    '''
DESCRIPTION

    see "undo"
    '''
    undo(True)

def undo_disable():
    '''
DESCRIPTION

    Pause the recording of scene based "undo" snapshots

SEE ALSO

    undo_enable, undo
    '''
    if not self.suspended:
        self.suspended = 1

def undo_enable():
    '''
DESCRIPTION

    see "undo_disable"
    '''
    setup_done = (self.suspended != -1)

    self.suspended = 0

    if setup_done:
        return

    # disable PyMOL's undo
    cmd.set('suspend_undo')

    for command in ['color', 'spectrum', 'alter', 'alter_state', 'show',
            'hide', 'as', 'label']:
        cmd.keyword[command][0] = undoable(cmd.keyword[command][0])

    cmd.extend(undo)
    cmd.extend(redo)
    cmd.extend(undo_disable)
    cmd.extend(undo_enable)

    cmd.set_key('CTRL-Z', undo)
    cmd.set_key('CTRL-Y', redo)

def __init_plugin__(app=None):
    from pymol.plugins import addmenuitem
    addmenuitem('SceneUndo|Undo', undo)
    addmenuitem('SceneUndo|Redo', redo)
    addmenuitem('SceneUndo|-')
    addmenuitem('SceneUndo|Disable', undo_disable)
    addmenuitem('SceneUndo|Enable', undo_enable)
    addmenuitem('SceneUndo|Delete History', lambda: [cmd.scene(n, 'delete')
        for n in cmd.get_scene_list() if n.startswith(PREFIX)])

if not pymol.invocation.options.no_gui:
    undo_enable()
