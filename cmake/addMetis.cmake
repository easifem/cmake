# This program is a part of EASIFEM library
# Copyright (C) 2020-2021  Vikas Sharma, Ph.D
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https: //www.gnu.org/licenses/>
#

#....................................................................
#
#....................................................................

IF( ${PROJECT_NAME} MATCHES "easifemBase" )
  OPTION(USE_METIS ON)
  IF(USE_METIS)
    FIND_LIBRARY(METIS_LIB metis)
    LIST( APPEND TARGET_COMPILE_DEF "-DUSE_METIS" )
    MESSAGE(STATUS "FOUND ${METIS_LIB}")
    MESSAGE(STATUS "METIS_LIB = ${METIS_LIB}")
    TARGET_LINK_LIBRARIES( ${PROJECT_NAME} PUBLIC ${METIS_LIB} )
  ELSE()
    MESSAGE(STATUS "NOT USING METIS")
  ENDIF()
ENDIF()
