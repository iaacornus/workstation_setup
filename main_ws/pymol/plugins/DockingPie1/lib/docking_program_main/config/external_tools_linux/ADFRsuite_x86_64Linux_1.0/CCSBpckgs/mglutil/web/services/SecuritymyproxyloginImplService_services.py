################################################################################
##
## This library is free software; you can redistribute it and/or
## modify it under the terms of the GNU Lesser General Public
## License as published by the Free Software Foundation; either
## version 2.1 of the License, or (at your option) any later version.
## 
## This library is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## Lesser General Public License for more details.
## 
## You should have received a copy of the GNU Lesser General Public
## License along with this library; if not, write to the Free Software
## Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301 USA
##
## (C) Copyrights Dr. Michel F. Sanner and TSRI 2016
##
################################################################################

################################################## 
# ./SecuritymyproxyloginImplService_services.py 
# generated by ZSI.wsdl2python 
# 
# 
##################################################


import urlparse, types
from ZSI.TCcompound import Struct
from ZSI import client
import ZSI

class SecuritymyproxyloginImplServiceInterface:
    def getSecuritymyproxyloginImpl(self, portAddress=None, **kw):
        raise NonImplementationError, "method not implemented"


class SecuritymyproxyloginImplServiceLocator(SecuritymyproxyloginImplServiceInterface):
    SecuritymyproxyloginImpl_address = "https://gama.nbcr.net:9443/axis/services/SecurityMyproxyloginService"
    def getSecuritymyproxyloginImplAddress(self):
        return SecuritymyproxyloginImplServiceLocator.SecuritymyproxyloginImpl_address

    def getSecuritymyproxyloginImpl(self, portAddress=None, **kw):
        return SecurityMyproxyloginServiceSoapBindingSOAP(portAddress or SecuritymyproxyloginImplServiceLocator.SecuritymyproxyloginImpl_address, **kw)


class SecurityMyproxyloginServiceSoapBindingSOAP:

    def __init__(self, addr, **kw):
        netloc = (urlparse.urlparse(addr)[1]).split(":") + [80,]
        if not kw.has_key("host"):
            kw["host"] = netloc[0]
        if not kw.has_key("port"):
            kw["port"] = int(netloc[1])
        if not kw.has_key("url"):
            kw["url"] =  urlparse.urlparse(addr)[2]
        self.binding = client.Binding(**kw)


    def loginUserMyProxy(self, request):
        """
        @param: request to loginUserMyProxyRequest::
          _passwd: str
          _username: str

        @return: response from loginUserMyProxyResponse::
          _loginUserMyProxyReturn: str
        """

        if not isinstance(request, loginUserMyProxyRequest) and\
            not issubclass(loginUserMyProxyRequest, request.__class__):
            raise TypeError, "%s incorrect request type" %(request.__class__)
        kw = {}
        response = self.binding.Send(None, None, request, soapaction="", **kw)
        response = self.binding.Receive(loginUserMyProxyResponseWrapper())

        if not isinstance(response, loginUserMyProxyResponse) and\
            not issubclass(loginUserMyProxyResponse, response.__class__):
            raise TypeError, "%s incorrect response type" %(response.__class__)
        return response



class loginUserMyProxyRequest (ZSI.TCcompound.Struct): 
    def __init__(self, name=None, ns=None):
        self._username = None
        self._passwd = None

        oname = None
        if name:
            oname = name
            if ns:
                oname += ' xmlns="%s"' % ns
            ZSI.TC.Struct.__init__(self, loginUserMyProxyRequest, [ZSI.TC.String(pname="username",aname="_username",optional=1),ZSI.TC.String(pname="passwd",aname="_passwd",optional=1),], pname=name, aname="%s" % name, oname=oname )

class loginUserMyProxyRequestWrapper(loginUserMyProxyRequest):
    """wrapper for rpc:encoded message"""

    typecode = loginUserMyProxyRequest(name='loginUserMyProxy', ns='urn:axis')
    def __init__( self, name=None, ns=None, **kw ):
        loginUserMyProxyRequest.__init__( self, name='loginUserMyProxy', ns='urn:axis' )

class loginUserMyProxyResponse (ZSI.TCcompound.Struct): 
    def __init__(self, name=None, ns=None):
        self._loginUserMyProxyReturn = None

        oname = None
        if name:
            oname = name
            if ns:
                oname += ' xmlns="%s"' % ns
            ZSI.TC.Struct.__init__(self, loginUserMyProxyResponse, [ZSI.TC.String(pname="loginUserMyProxyReturn",aname="_loginUserMyProxyReturn",optional=1),], pname=name, aname="%s" % name, oname=oname )

class loginUserMyProxyResponseWrapper(loginUserMyProxyResponse):
    """wrapper for rpc:encoded message"""

    typecode = loginUserMyProxyResponse(name='loginUserMyProxyResponse', ns='urn:axis')
    def __init__( self, name=None, ns=None, **kw ):
        loginUserMyProxyResponse.__init__( self, name='loginUserMyProxyResponse', ns='urn:axis' )