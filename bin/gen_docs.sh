#!/bin/sh

DOCS_DIR='./docs'
SRC_FILE="${DOCS_DIR}/src/main.typ"
DEST_PDF="${DOCS_DIR}/proy-estadistica-g07.pdf"

typst compile --root ${DOCS_DIR}/src ${SRC_FILE} ${DEST_PDF}