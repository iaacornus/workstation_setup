# Author: Thomas Holder
# License: BSD-2-Clause
# Version: 1.0
'''
PyMOL Plugin: Secondary structure element picker wizard

(c) 2011-2012 Thomas Holder
'''

from pymol import cmd
from pymol.wizard import Wizard

class Sspick(Wizard):
    '''
    Secondary structure element picker
    '''

    def __init__(self, _self=cmd):

        cmd.unpick();
        Wizard.__init__(self, _self)

        self.mouse_selection_mode = cmd.get_setting_legacy('mouse_selection_mode')
        cmd.set('mouse_selection_mode',0) # set selection mode to atomic
        cmd.deselect() # disable the active selection (if any)

        self.error = None
        self.selection_mode = 1 if self.mouse_selection_mode == 6 else 0
        self.selection_modes = [
            'Residues',
            'C-alphas',
        ]

        smm = []
        smm.append([ 2, 'Selection Mode', '' ])
        for i, label in enumerate(self.selection_modes):
            smm.append([1, label, 'cmd.get_wizard().set_mode(%d)' % i])
        self.menu['selection_mode'] = smm

    def set_mode(self, i):
        self.selection_mode = i
        cmd.refresh_wizard()

    def get_panel(self):
        return [
            [1, 'SS Picker', ''],
            [3, self.selection_modes[self.selection_mode], 'selection_mode'],
            [2, 'Done', 'cmd.set_wizard()'],
            ]

    def cleanup(self):
        cmd.set('mouse_selection_mode', self.mouse_selection_mode)

    def get_prompt(self):
        self.prompt = ['Pick an atom']
        if self.error is not None:
            self.prompt.append(self.error)
        return self.prompt

    def do_select(self, name): # map selects into picks
        select_sspick(name, 'sele', self.selection_mode)
        cmd.enable('sele')
        cmd.refresh_wizard()

    def do_pick(self, bondFlag):
        self.do_select('(pk1)')
        cmd.unpick()

def set_wizard_sspick():
    wizard = Sspick()
    cmd.set_wizard(wizard)

def __init_plugin__(self):
    self.menuBar.addmenuitem('Plugin', 'command', 'SS Picker Wizard',
            label='SS Picker Wizard', command = set_wizard_sspick)

def select_sspick(selection, name=None, caonly=0, quiet=0):
    '''
DESCRIPTION

    Extend selection by connected secondary structure elements.

USAGE

    select_sspick selection [, name [, caonly [, quiet ]]]

ARGUMENTS

    selection = string: selection-expression

    name = string: create a named atom selection if not None {default: None}
    '''
    caonly, quiet = int(caonly), int(quiet)

    qkeys = set()
    cmd.iterate('bycalpha (%s)' % (selection),
            'qkeys.add(((model,segi,chain,ss), resv))', space={'qkeys': qkeys})

    def in_intervals(i, intervals):
        for interval in intervals:
            if interval[0] <= i <= interval[1]:
                return True
        return False

    elements = dict()
    for key, resv in qkeys:
        element = elements.setdefault(key, [])
        if in_intervals(resv, element):
            continue
        resv_set = set()
        cmd.iterate('/%s/%s/%s//CA and ss "%s"' % key, 'resv_set.add(resv)',
                space={'resv_set': resv_set})
        resv_min = resv
        resv_max = resv
        while (resv_min - 1) in resv_set:
            resv_min -= 1
        while (resv_max + 1) in resv_set:
            resv_max += 1
        element.append((resv_min, resv_max))

    sele_list = []
    ss_names = {'S': 'Strand', 'H': 'Helix', '': 'Loop', 'L': 'Loop'}
    for key in elements:
        model,segi,chain,ss = key
        for resv_min,resv_max in elements[key]:
            sele = '/%s/%s/%s/%d-%d' % (model, segi, chain, resv_min, resv_max)
            if caonly:
                sele += '/CA'
            sele_list.append(sele)
            if not quiet:
                print(ss_names.get(ss, ss).ljust(6) + ' ' + sele)

    sele = ' '.join(sele_list)
    if name is not None:
        cmd.select(name, sele)
    elif not quiet:
        print(' Selection: ' + sele)

    return sele

cmd.extend('select_sspick', select_sspick)

# vi:expandtab:smarttab
