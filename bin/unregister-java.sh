#!/bin/bash

JENV_HOME=~/.jenv
JENV=${JENV_HOME}/bin/jenv

for version in `${JENV} versions --bare`; do
	${JENV} remove ${version}
done

rm -f ${JENV_HOME}/*.time
rm -f ${JENV_HOME}/versions/*
