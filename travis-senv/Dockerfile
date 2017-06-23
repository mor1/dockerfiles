FROM ocaml/opam:ubuntu-16.04_ocaml-4.04.1
MAINTAINER Richard Mortier <mort@cantab.net>

ENV OPAMJOBS=2 OPAMYES=1

RUN sudo -u opam sh -c "opam depext -u travis-senv" \
    && sudo -u opam sh -c "opam install travis-senv"

WORKDIR /cwd
ENTRYPOINT [ "opam", "config", "exec", "--" ]
CMD [ "travis-senv" ]
