||| Copyright (C) 1998-2009, Sumisho Computer Systems Corp.  All Rights Reserved.
|||
||| An OpenCurl project.

||| Licensed under the Apache License, Version 2.0 (the "License");
||| you may not use this file except in compliance with the License.
||| You may obtain a copy of the License at
||| 
|||     http://www.apache.org/licenses/LICENSE-2.0
||| 
||| Unless required by applicable law or agreed to in writing, software
||| distributed under the License is distributed on an "AS IS" BASIS,
||| WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
||| See the License for the specific language governing permissions and
||| limitations under the License.

====================
WSDK Release 1.1 for Curl API Versions 7.0 and 6.0. 
====================

This directory contains the 1.1 release of the Curl
Web Services Software Development Kit (WSDK)

The Curl Web Services SDK (WSDK) provides the technologies necessary
for building applications in Curl that make use of web services.
Utilities are provided for auto-generation of code, working directly
with XML Document Model, and binding XML elements using XPath.

To install the WSDK, unzip the distribution onto your machine.

The following sections describe the included material in more detail


DIRECTORIES
====================

The distribution is organized into directories which each serve a
specific purpose.

Deployable Library
--------------------
 
The 'deploy' directory contains a preprocessed library 
for use in deployed applications.

- COM.CURL.WSDK.1.1/manifest.mcurl   	WSDK library definition

Documentation
--------------------

The 'docs-install' directory contains library directories
prepared for addition to the Curl Documentation Viewer
using the IDE 'Install Documentation' command.
The directories include both documentation
and preprocessed library.

- COM.CURL.WSDK.1.1/manifest.mcurl   	WSDK library doc definition

Source Code
--------------------

The 'src' directory contains all source code for WSDK modules,
and could be used for modifying the WSDK itself. 
It also includes test suites, and some sample applets.

- code		source code
-- code/project.cprj	Curl IDE project

- lib		preprocessed library
-- WSDK/manifest.mcurl	WSDK library definition

- tests		test suite
-- start-tests.curl	test suite

- build		build applets

- tools		Curl IDE tool
-- wsdl/editor-info.txt		WSDL tool definition

Tool Installation
--------------------

The 'src/tools' directory contains a WSDL Service 
tool prepared for addition to the Curl IDE using the 
IDE 'Tools>Configure Editors...' command.

-  wsdl/editor-info.txt   	WSDK tool definition

If an earlier version of WSDL Services IDE tool has been installed, 
it must be replaced with the version in this distribution, 
in order to function with the Curl Version 7.0 IDE. 
The generated service packages will be marked with the 
curl version defined by their project. 

KNOWN ISSUES
====================

Some of the tests access web content or invoke web services,
and thus require privilege and web access to succeed.

CHANGES
====================

WSDK 1.1 CHANGES
--------------------

This WSDK Release is a maintenance release,
for use with Curl API Version 7.0.

- WSDK 1.1 is supported for both Curl API Version 7.0 and 6.0
-- get the appropriate distribution for your Curl API Version
- WSDL service classes contain methods for improved testability 
-- format-request, parse-response
- WSDL service classes avoid name conflicts caused by nested elements
- WSDL top level XML schema elements are always namespace-qualified
- SOAP ArrayType descriptors now correctly parsed
- WSDL parsing uses correct namespace when reporting errors
- WSConnection package is now an example
- WSDK Developer's Guide is indexed for full text search
- XML documentation for 'XDMNamespace' improved
- long-deprecated 'xdm-search' API has been retired
    
These changes affect the code generated for WSDL service packages,
so such packages should be regenerated for use with this release.
The 'WSDLHTTPRPCPostClient.generated-using-version' property has been 
incremented, so that incompatible service packages can be detected.

WSDK 1.0.6 CHANGES
--------------------

This WSDK Release is a maintenance release,
for use with Curl API Version 6.0.
    
The following changes have been made,

- WSDL arrays with attributes work correctly

- WSDL treatment of toplevel optional and nillable elements improved. 
  A consequence of this change is that the nullability of curl types
  for some fields and parameters in generated code may vary from what
  was generated in earlier WSDK versions.

- WSDL allows use of URN scheme in namespaces
    
These changes affect the code generated for WSDL service packages,
so such packages should be regenerated for use with this release.
The 'WSDLHTTPRPCPostClient.generated-using-version' property has been 
incremented, so that incompatible service packages can be detected.

WSDK 1.0.5 CHANGES
--------------------

This WSDK Release is a maintenance release,
for use with Curl API Version 5.0.
    
The following changes have been made,

 - SOAP messages with use='document' never use 'multiref' 
  representation (only allowed with use='encoded'.)

 - SOAP messages containing repeating elements are now supported

 - SOAP messages containing arrays of XDMElement are now supported 

 - SOAP responses containing structures with unspecified primitives
  are now supported

 - SOAP responses containing arrays with unspecified primitives
   are now supported

 - compressed responses may be requested from SOAP services

 - XDM change notifications for XDMNode.detach 
   are now correctly issued.

 - RecordSet-for change notifications (using RecordSetEvent)
   are now correctly issued.

 - correct treatment of SOAP fault detail elements

 - minor changes for release 6.0 consistency

 - experimental XHTML and CSS packages no longer included

 - samples using defunct services have been replaced or excluded


WSDK 1.0.4 CHANGES
--------------------

This WSDK Release is a maintenance release, 
for use with Curl API Version 5.0.

The following changes have been made,

 - SOAP messages containing runtime subtype declarations (using the
  xsi:type attribute) are now supported

 - classes representing SOAP structures represent unspecified
  primitive values using the generated <name>-specified? getter

 - the xs:date type is representated by DateTime.date rather than as
  XMLSimpleType

 - WSDL service package name generation has been adjusted for cases
  where conflicting names are defined.

 - Array types generated for nillable elements use nullable Curl types
  when appropriate

 - RecordSet-for.default constructor fields keyword allows explicit
  specification of RecordFields

 - This WSDK Developer's Guide now includes an updated Web Services
  Interoperability document. (The docuemnt had been included in prior
  releases, but was not accessible from the huide.)

These changes affect the code generated for WSDL service packages, so
such packages should be regenerated for use with this release. The
WSDLHTTPRPCPostClient.generated-using-version property has been added,
so that incompatible service packages can be detected.

If an earlier version of WSDL Services IDE tool has been installed, it
must be replaced with the version in this distribution, in order to
function with the Curl Version 5.0 IDE. The generated service packages
will be marked with the curl version defined by their
project. provided-with your WSDK distribution.

This can be installed in the Curl IDE with the Tools>Configure Editors
command using the editor description file tools/wsdl/editor-info.txt
provided-with your WSDK distribution. If for some reason you need to
use the earlier version of the tool, you can use the applet in
tools/wsdl/start.curl

The WSDK Extras package COM.CURL.WSDK.FILEDB is deprecated, as its
functionality is provided by FileConnection, ConnectedFileRecordSet,
CsvRecordSet and related classes.


WSDK 1.0.3 CHANGES
--------------------

The WSDK 1.0.3 Release is a maintenance release,
which contains some SOAP / WSDL bugfixes,
and documentation corrections.

- add WSDL support for repeating elements
- fix for SOAP transcoding when not UTF8
- adjust WSDL name generation when names conflict

WSDK 1.0 CHANGES
--------------------

The WSDK 1.0 Release is for use with Curl API Version 4.0.
Some changes have been made since the WSDK 0.2 Beta.

These include documentation updates, 
final adjustments to accomodate the Version 4.0 API, 
and fixes for several SOAP / WSDL bugs.

- WSDL service packages support all XSD simple types
- WSDL service packages support elements containing anonymous types
- WSDL syntax errors include the name of the offending item

WSDK 0.2 CHANGES
--------------------
 
A number of changes have been made since the WSDK 0.1 Beta 
(which used Curl API Version 3.0.6).

These include additional documentation and examples, 
adjustments to accommodate of the Version 4.0 API, 
and fixes for several SOAP / WSDL bugs.

A WSDL Services IDE tool is included, which generates Curl 
web service packages from WSDL files. 

There are substantial additions to XML Document Model, 
including the following:

- fuller conformance to XPath 1.0 specification
-- standardized API for path expressions 
-- use 'xpath' or 'XDMPath' to declare path expressions
-- use 'XDMNode.search' or 'XDMPath.search' to apply path expressions
- improved XML data data binding support 
-- use 'XDMForm' as a container for properties bound to path expressions
-- supports nested XML contexts using 'XDMForm.ref'
-- extends 'XDMDataBindingContext'
- display using 'XDMTreeControl'
- change management using 'StandardXDMDocument' and 'XDMEvent'
- specialization using 'GenericXDMBuilder'
- serialization support for 'StandardXDMNode' subclasses

The WSDK tests now use the new CurlUnit test framework. 
Note: The CurlUnit framework is a preliminary release of new features. 
These features are not yet in final form, and are subject to revision.

