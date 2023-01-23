#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Noguchi Kousuke 
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### l/O TEST ###
out=$(./result.py)
[ "${out}"=] 


###STRANGE INPUT ###
out=$(echo | ./result.py)
[ "$?" = 1 ]        || ng $LINENO
[ "${out}" = "" ]   || ng $LINENO

out=$(echo | ./result.py)
[ "$?" = 1 ]        || ng $LINENO
[ "${out}" = "" ]   || ng $LINENO

[ "$res" = 0 ] && echo OK
exit $res
