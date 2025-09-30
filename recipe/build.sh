#!/bin/bash
export DISABLE_AUTOBREW=1

# Add rpath for pgconftest
sed -i 's/-L${PG_LIBDIR}/-Wl,-rpath,${PG_LIBDIR} -L${PG_LIBDIR}/' configure

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
