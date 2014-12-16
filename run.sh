#!/bin/sh
java -classpath ./automated_digital_publishing/workflows/ odt2all1 ./odt2all1_config.xml ./out/ > out.log 2>&1 | tee out.log
mv -f ./out/out.html ./out/digitaler_literaturbetrieb.html
mv -f ./out/out.epub ./out/digitaler_literaturbetrieb.epub
mv -f ./out/out.tex ./out/digitaler_literaturbetrieb.tex
mv -f ./out/out.pdf ./out/digitaler_literaturbetrieb.pdf
