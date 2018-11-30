#!/bin/bash
if [ $# -lt 1 ];then
    echo "Usage: $0 <doc>"
    echo "e.g $0 azkaban"
    exit 1
fi
[ -d $1 ] || die "directory $1 not exists"

cd $1
asciidoctor-pdf -a pdf-fontdir=../fonts -a pdf-stylesdir=../themes -a pdf-style=tdp ${1}.adoc
