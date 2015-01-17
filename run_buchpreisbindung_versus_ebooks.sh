#!/bin/sh
java -classpath ./automated_digital_publishing/workflows/ odt2all1 ./odt2all1_buchpreisbindung_versus_ebooks_config.xml ./out/ > out.log 2>&1 | tee out.log
mv -f ./out/out.html ./out/buchpreisbindung_versus_ebooks.html
mv -f ./out/out.epub ./out/buchpreisbindung_versus_ebooks.epub
mv -f ./out/out.tex ./out/buchpreisbindung_versus_ebooks.tex
mv -f ./out/out.pdf ./out/buchpreisbindung_versus_ebooks.pdf
