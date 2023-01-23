#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Noguchi Kousuke 
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### l/O TEST ###
out=$(./result.py < number)
[ "${out}"= 
