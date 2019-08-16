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

docker-kill() {
  docker ps --all --quiet | xargs docker stop -t 2
  docker ps --all --quiet | xargs docker rm
}

docker-clean() {
  docker images | grep "<none>" | tr -s " " | cut -d" " -f 3 \
    | xargs docker rmi
}

dr() {
  docker run --interactive --rm \
         --volume "$(pwd -P)":/cwd \
         --workdir /cwd \
         $DARGS "$@"
}
drtty() {
  dr --tty "$@"
}

## base distros

alpine() {
  if [ -z "$*" ] ; then
    drtty mor1/alpine /bin/sh
  else
    drtty mor1/alpine /bin/sh -c "$*"
  fi
}

centos() {
  if [ -z "$*" ] ; then
    drtty centos:latest bash
  else
    drtty centos:latest bash -c "$*"
  fi
}

debian() {
  if [ -z "$*" ] ; then
    drtty debian:latest bash
  else
    drtty debian:latest bash -c "$*"
  fi
}

opensuse() {
  if [ -z "$*" ] ; then
    drtty opensuse:latest bash
  else
    drtty opensuse:latest bash -c "$*"
  fi
}

ubuntu() {
  if [ -z "$*" ] ; then
    drtty ubuntu:latest bash
  else
    drtty ubuntu:latest bash -c "$*"
  fi
}

ubuntu14.04() {
  if [ -z "$*" ] ; then
    drtty ubuntu:14.04 bash
  else
    drtty ubuntu:14.04 bash -c "$*"
  fi
}

## containerised apps

a2ps      () { dr mor1/a2ps:latest             "$@" ;}
apkbuilder() { dr mor1/apkbuilder:latest       "$@" ;}
casperjs  () { dr mor1/casperjs:latest         "$@" ;}
coffee    () { dr mor1/coffeescript:latest     "$@" ;}
dos2unix  () { dr mor1/dos2unix:latest         "$@" ;}
gawk      () { dr mor1/gawk:latest             "$@" ;}
ghi       () { dr mor1/ghi:latest              "$@" ;}
jekyll    () { dr mor1/jekyll:latest           "$@" ;}
jhead     () { dr mor1/jhead:latest            "$@" ;}
jq        () { dr mor1/jq:latest -C            "$@" ;}
lessc     () { dr mor1/lessc:latest            "$@" ;}
lilypond  () { dr markauskas/lilypond lilypond "$@" ;}
lynx      () { dr mor1/lynx:latest             "$@" ;}
mutool    () { dr mor1/mutool:latest           "$@" ;}
pandoc    () { dr -v ~/.pandoc:/root/.pandoc mor1/pandoc:latest "$@" ;}
pdftk     () { dr mor1/pdftk:latest            "$@" ;}
phantomjs () { dr mor1/phantomjs:latest        "$@" ;}
polyml    () { dr mor1/polyml:latest           "$@" ;}
python2   () { dr mor1/python2:latest          "$@" ;}
pwclient  () { dr mor1/pwclient:latest         "$@" ;}
python3   () { dr mor1/python3:latest          "$@" ;}
tpaste    () { dr mor1/tpaste:latest           "$@" 2>/dev/null;}
travis    () { dr mor1/travis:latest           "$@" ;}
unzip     () { dr mor1/unzip:latest            "$@" ;}
wget      () { dr mor1/wget:latest             "$@" ;}
yaml      () { dr mor1/ruamel:latest           "$@" ;}
