#!/bin/bash
echo "Enter file type (eg txt, pdf): "
read fileType
echo "Finding files of type '$fileType'"
find . -name '*' -type f -path '*.'$fileType
