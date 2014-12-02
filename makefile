

.PHONY: all clean



all: ./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.epub ./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.pdf

./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.epub: ./werkzeugkiste_fuer_selfpublisher_und_jedermann/ ./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.odt ./werkzeugkiste_fuer_selfpublisher_und_jedermann/config.xml
	java -classpath ./automated_digital_publishing/workflows/ odt2epub2 ../../werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.odt ../../werkzeugkiste_fuer_selfpublisher_und_jedermann/config.xml ../../werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.epub 2>&1 | tee out.log

./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.pdf: ./werkzeugkiste_fuer_selfpublisher_und_jedermann/ ./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.odt
	java -classpath ./automated_digital_publishing/workflows/ odt2pdf1 ../../werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.odt 2>&1 | tee out.log
	cp ./automated_digital_publishing/workflows/temp/pdf/output.pdf ./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.pdf

clean:
	rm -f ./out.log
	rm -f ./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.epub
	rm -f ./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.pdf

