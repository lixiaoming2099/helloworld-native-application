###########################################################################
# Copyright 2015, 2016, 2017 IoT.bzh
#
# author: Fulup Ar Foll <fulup@iot.bzh>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###########################################################################

# Project Info
# ------------------
set(PROJECT_NAME helloworld-service-client)
set(PROJECT_VERSION "0.1")
set(PROJECT_PRETTY_NAME "Helloworld-service-client")
set(PROJECT_DESCRIPTION "AGL binding helloworld-service client example")
set(PROJECT_URL "TODO")
set(PROJECT_ICON "icon.png")
set(PROJECT_AUTHOR "Le Martret, Ronan")
set(PROJECT_AUTHOR_MAIL "ronan.lemartret@iot.bzh")
set(PROJECT_LICENSE "APL2.0")
set(PROJECT_LANGUAGES,"C")

# Where are stored default templates files from submodule or subtree app-templates in your project tree
# relative to the root project directory
set(PROJECT_APP_TEMPLATES_DIR "conf.d/app-templates")

# Where are stored your external libraries for your project. This is 3rd party library that you don't maintain
# but used and must be built and linked.
# set(PROJECT_LIBDIR "libs")

# Where are stored data for your application. Pictures, static resources must be placed in that folder.
# set(PROJECT_RESOURCES "data")

# Which directories inspect to find CMakeLists.txt target files
# set(PROJECT_SRC_DIR_PATTERN "*")

# Compilation Mode (DEBUG, RELEASE)
# ----------------------------------
set(CMAKE_BUILD_TYPE "DEBUG")

# Kernel selection if needed. You can choose between a
# mandatory version to impose a minimal version.
# Or check Kernel minimal version and just print a Warning
# about missing features and define a preprocessor variable
# to be used as preprocessor condition in code to disable
# incompatibles features. Preprocessor define is named
# KERNEL_MINIMAL_VERSION_OK.
#
# NOTE*** FOR NOW IT CHECKS KERNEL Yocto environment and
# Yocto SDK Kernel version.
# -----------------------------------------------
#set (kernel_mandatory_version 4.8)
#set (kernel_minimal_version 4.8)

# Compiler selection if needed. Impose a minimal version.
# -----------------------------------------------
set (gcc_minimal_version 4.9)

# PKG_CONFIG required packages
# -----------------------------
set (PKG_REQUIRED_LIST
	libafbwsc
	json-c
	libsystemd>=222
	afb-daemon
	libmicrohttpd>=0.9.55
)

# Customize link option
# -----------------------------
#list(APPEND link_libraries -an-option)

# Compilation options definition
# Use CMake generator expressions to specify only for a specific language
# -----------------------------------------------------------------------
#add_compile_options()

# Print a helper message when every thing is finished
# ----------------------------------------------------
#set(CLOSING_MESSAGE "")
#set(PACKAGE_MESSAGE "Install widget file using in the target : afm-util install ${PROJECT_NAME}.wgt")

# (BUG!!!) as PKG_CONFIG_PATH does not work [should be an env variable]
# ---------------------------------------------------------------------
set(CMAKE_INSTALL_PREFIX $ENV{HOME}/opt)
set(CMAKE_PREFIX_PATH ${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig ${CMAKE_INSTALL_PREFIX}/lib/pkgconfig)
set(LD_LIBRARY_PATH ${CMAKE_INSTALL_PREFIX}/lib64 ${CMAKE_INSTALL_PREFIX}/lib)

# Optional location for config.xml.in
# -----------------------------------
#set(WIDGET_CONFIG_TEMPLATE ${CMAKE_CURRENT_SOURCE_DIR}/conf.d/wgt/config.xml.in)

# Mandatory widget Mimetype specification of the main unit
# --------------------------------------------------------------------------
# Choose between :
#- text/html : HTML application,
#	content.src designates the home page of the application
#
#- application/vnd.agl.native : AGL compatible native,
#	content.src designates the relative path of the binary.
#
# - application/vnd.agl.service: AGL service, content.src is not used.
#
#- ***application/x-executable***: Native application,
#	content.src designates the relative path of the binary.
#	For such application, only security setup is made.
#
set(WIDGET_TYPE MimeType_Not_Set)

# Mandatory Widget entry point file of the main unit
# --------------------------------------------------------------
# This is the file that will be executed, loaded,
# at launch time by the application framework.
#
set(WIDGET_ENTRY_POINT config.xml)

# Optional dependencies order
# ---------------------------
#set(EXTRA_DEPENDENCIES_ORDER)

# Optional Extra global include path
# -----------------------------------
#set(EXTRA_INCLUDE_DIRS)

# Optional extra libraries
# -------------------------
#set(EXTRA_LINK_LIBRARIES)

# Optional force binding installation
# ------------------------------------
# set(BINDINGS_INSTALL_PREFIX PrefixPath )

# Optional force binding Linking flag
# ------------------------------------
# set(BINDINGS_LINK_FLAG LinkOptions )

# Optional force package prefix generation, like widget
# -----------------------------------------------------
# set(PKG_PREFIX DestinationPath)

# Optional Application Framework security token
# and port use for remote debugging.
#------------------------------------------------------------
#set(AFB_TOKEN   ""      CACHE PATH "Default AFB_TOKEN")
#set(AFB_REMPORT "1234" CACHE PATH "Default AFB_TOKEN")

# This include is mandatory and MUST happens at the end
# of this file, else you expose you to unexpected behavior
# -----------------------------------------------------------
include(${PROJECT_APP_TEMPLATES_DIR}/cmake/common.cmake)
