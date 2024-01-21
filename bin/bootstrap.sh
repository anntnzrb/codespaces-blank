#!/bin/sh

R --no-save << EOF
packages <- c("readr", "ggplot2", "dplyr")
install.packages(packages[!packages %in% installed.packages()[,"Package"]])
EOF