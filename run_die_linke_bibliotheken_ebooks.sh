#!/bin/sh
java -classpath ./automated_digital_publishing/workflows/ odt2all1 ./odt2all1_die_linke_bibliotheken_ebooks_config.xml ./out/ > out.log 2>&1 | tee out.log
mv -f ./out/out.html ./out/die_linke_bibliotheken_ebooks.html
mv -f ./out/out.epub ./out/die_linke_bibliotheken_ebooks.epub
mv -f ./out/out.tex ./out/die_linke_bibliotheken_ebooks.tex
mv -f ./out/out.pdf ./out/die_linke_bibliotheken_ebooks.pdf
