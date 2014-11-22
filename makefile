

.PHONY: all clean



all: ./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.epub

./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.epub: ./werkzeugkiste_fuer_selfpublisher_und_jedermann/ ./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.odt ./werkzeugkiste_fuer_selfpublisher_und_jedermann/config.xml
	java -classpath ./automated_digital_publishing/workflows/ odt2epub2 ../../werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.odt ../../werkzeugkiste_fuer_selfpublisher_und_jedermann/config.xml ../../werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.epub 2>&1 | tee out.log

clean:
	rm -f ./out.log
	rm -f ./werkzeugkiste_fuer_selfpublisher_und_jedermann/werkzeugkiste_fuer_selfpublisher_und_jedermann.epub

