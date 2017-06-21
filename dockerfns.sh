#
# Some Docker related bash shell functions
#
# Copyright (C) 2016 Richard Mortier <mort@cantab.net>. All Rights Reserved.
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License version 2 as published by the Free
# Software Foundation
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, write to the Free Software Foundation, Inc., 59 Temple
# Place - Suite 330, Boston, MA 02111-1307, USA.

function docker-kill {
    docker ps --all --quiet | xargs docker stop -t 2
    docker ps --all --quiet | xargs docker rm
}

function docker-clean {
    docker images | grep "<none>" | tr -s " " | cut -d" " -f 3 \
        | xargs docker rmi
}

function d {
    docker run -ti --rm -v "$(pwd -P)":/cwd -w /cwd $DARGS "$@"
}

## base distros

function alpine {
    if [ -z "$@" ] ; then
        d alpine /bin/sh
    else
        d alpine /bin/sh -c "$*"
    fi
}

function debian {
    if [ -z "$@" ] ; then
        d debian:latest bash
    else
        d debian:latest bash -c "$*"
    fi
}

function ubuntu {
    if [ -z "$@" ] ; then
        d ubuntu:latest bash
    else
        d ubuntu:latest bash -c "$*"
    fi
}

## containerised apps

function casperjs  { d mor1/casperjs:latest         "$@" ;}
function coffee    { d mor1/coffeescript:latest     "$@" ;}
function dos2unix  { d mor1/dos2unix:latest         "$@" ;}
function gawk      { d mor1/gawk:latest             "$@" ;}
function jekyll    { d mor1/jekyll:latest           "$@" ;}
function jhead     { d mor1/jhead:latest            "$@" ;}
function jq        { d mor1/jq:latest               "$@" ;}
function lessc     { d mor1/lessc:latest            "$@" ;}
function lilypond  { d markauskas/lilypond lilypond "$@" ;}
function lynx      { d mor1/lynx:latest             "$@" ;}
function pandoc    { d -v ~/.pandoc:/root/.pandoc mor1/pandoc:latest "$@" ;}
function pdftk     { d mor1/pdftk:latest            "$@" ;}
function phantomjs { d mor1/phantomjs:latest        "$@" ;}
function poly      { d mor1/polyml:latest           "$@" ;}
function python3   { d mor1/python3:latest          "$@" ;}
function unzip     { d mor1/unzip:latest            "$@" ;}
function wget      { d mor1/wget:latest             "$@" ;}
