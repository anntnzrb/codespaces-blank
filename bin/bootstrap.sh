#!/bin/sh

R --no-save << EOF
packages <- c("readr", "ggplot2", "dplyr", "readxl", "PerformanceAnalytics")
install.packages(packages[!packages %in% installed.packages()[,"Package"]])
EOF