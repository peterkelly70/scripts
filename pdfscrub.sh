#!/bin/sh
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=%1.pdf -c .setpdfwrite -f %2.pdf
