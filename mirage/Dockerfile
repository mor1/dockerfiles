FROM ocaml/opam:ubuntu-16.04_ocaml-4.04.1
MAINTAINER Richard Mortier <mort@cantab.net>

ENV OPAMJOBS=2 OPAMYES=1

RUN sudo -u opam sh -c "opam depext -u mirage mirage-xen mirage-unix" \
    && sudo -u opam sh -c "opam install mirage mirage-xen mirage-unix"

VOLUME /home/opam/.opam
WORKDIR /cwd
ENTRYPOINT ["opam", "config", "exec", "--", "mirage"]
