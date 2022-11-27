#!/bin/bash
#SPDX-FileCopyrightText: 2022 Makido1910
#SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### I/O ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(seq 5 | ./mul)
[ "${out}" = 120 ] || ng ${LINENO}

out=$(echo 5 4 3 > nums | cat nums | tr ' ' '\n' | ./loc)
[ "${out}" = 0.8 ] || ng ${LINENO}

out=$(echo 3 4 5 > nums | cat nums | tr ' ' '\n' | ./loc)
[ "${out}" = 0.0 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo a | ./plus)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo 5 | > nums | cat nums | tr ' ' '\n' | ./loc)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo 5 4 | > nums | cat nums | tr ' ' '\n' | ./loc)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo あ い う > nums | cat nums | tr ' ' '\n' | ./loc)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo a b c > nums | cat nums | tr ' ' '\n' | ./loc)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | > nums | cat nums | tr ' ' '\n' | ./loc)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}




[ "$res" = 0 ] && echo ok
exit $res





