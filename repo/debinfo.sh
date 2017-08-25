#!/bin/bash

YELLOW='\033[1;33m'
NC='\033[0m'

printf "\n"

fileSize=$(stat -c%s $1)
printf "${YELLOW}File Size :${NC} $fileSize\n"

md5=($(md5sum $1))
printf "${YELLOW}md5sum    :${NC} $md5\n"

sha1=($(sha1sum $1))
printf "${YELLOW}sha1sum   :${NC} $sha1\n"

sha256=($(sha256sum $1))
printf "${YELLOW}sha256sum :${NC} $sha256\n"

