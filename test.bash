#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Noguchi Kousuke 
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out=$(echo 3 |./result)
[ "${out}"= 奇数 ]  || ng $LINENO 


###STRANGE INPUT ###
out=$(echo あ | ./result)
[ "$?" = 1 ]        || ng $LINENO
[ "${out}" = "" ]   || ng $LINENO

out=$(echo | ./result)
[ "$?" = 1 ]        || ng $LINENO
[ "${out}" = "" ]   || ng $LINENO

[ "$res" = 0 ] && echo OK
exit $res
