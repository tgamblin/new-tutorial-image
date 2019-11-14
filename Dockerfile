FROM ecpe4s/spack-tutorial:v0.13

COPY /tutorial-test.sh /tutorial/.test/tutorial-test.sh

RUN chmod -R go+r /mirror \
 && chmod -R go+r /etc/spack \
 && chmod go+r /tutorial/.test/tutorial-test.sh

USER spack
WORKDIR /home/spack
ENTRYPOINT bash
