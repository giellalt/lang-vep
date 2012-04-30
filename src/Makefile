# This is a makefile that builds the XXX morphological parser
# *****************************************************************
# This is a dummy file. XXX refers to the name of the language, vep to the 
# ISO code of the language, for use in file names.

# This is a preliminary file that builds a XXX parser based upon
# xfst and not twolc.

# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon vep.save


XFST = xfst
LEXC = lexc
TWOLC = twolc

ifeq (victorio.uit.no, $(shell hostname))
XFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
LEXC = /opt/sami/xerox/bin/lexc -utf8
TWOLC = /opt/sami/xerox/bin/twolc -utf8
endif

scripts=$(GTHOME)/gt/script

LEX = xxx-lex.txt 
	  noun-xxx-morph.txt \
	  noun-xxx-lex.txt \
	  adj-xxx-lex.txt \
	  verb-xxx-lex.txt \
	  verb-xxx-morph.txt \
	  pron-xxx-lex.txt \
	  adv-xxx-lex.txt \
	  pp-xxx-lex.txt \
	  punct-xxx-lex.txt


all: ixxx.fst

ivep.fst: ../bin/ivep.fst
../bin/ivep.fst: ../bin/vep.fst
	@echo
	@echo "*** Building the inverse ivep.fst ***"
	@echo
	@printf "load ../bin/vep.save \n\
	invert net \n\
	save stack ../bin/ivep.fst \n\
	quit \n" > ../../tmp/ivep-fst-script
	@xfst < ../../tmp/ivep-fst-script
	@rm -f ../../tmp/ivep-fst-script


# This goal is to build the final analyser. It depends on all the files.

vep.fst: ../bin/vep.fst
../bin/vep.fst: ../bin/vep.save ../bin/caseconv.fst 
	@echo
	@echo "*** Building vep.fst ***" ;
	@echo
	@printf "read regex [[@\"../bin/vep.save\"] .o. \
	[@\"../bin/caseconv.fst\"]] ; \n\
	save stack ../bin/vep.fst \n\
	quit \n" > ../../tmp/vep-fst-script
	@xfst < ../../tmp/vep-fst-script
	@rm -f ../../tmp/vep-fst-script


# The second goal is to build the caseconv.fst file
# This goal depends on case.regex

caseconv.fst: ../bin/caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > ../../tmp/caseconv-script
	@xfst < ../../tmp/caseconv-script
	@rm -f ../../tmp/caseconv-script



vep.save: ../bin/vep.save
../bin/vep.save: ../bin/xfst-vep.bin ../bin/vep-lex.save
	@echo
	@echo "*** Building the parser vep.save ***"
	@echo
	@printf "read regex [[@\"../bin/vep-lex.save\"] .o. \
	[@\"../bin/xfst-vep.bin\"]] ; \n\
	save stack ../bin/vep.save \n\
	quit \n" > ../../tmp/vep-save-script
	@xfst < ../../tmp/vep-save-script
	@rm -f ../../tmp/vep-save-script

# The first goal is to build vep-lex.save
# This goal depends on a bunch of lexicon files

vep-lex.save: ../bin/vep-lex.save
../bin/vep-lex.save: $(LEX)
	@echo
	@echo "*** Building vep-lex.save ***" ;
	@echo
	printf "compile-source $(LEX) \n\
	save-source ../bin/vep-lex.save \n\
	quit \n" > ../../tmp/vep-lex-save-script
	@lexc < ../../tmp/vep-lex-save-script
	rm -f ../../tmp/vep-lex-save-script

# The second goal is to build xfst-vep.bin
# This goal depends on xfst-vep.txt

xfst-vep.bin: ../bin/xfst-vep.bin
../bin/xfst-vep.bin: xfst-vep.txt
	@echo
	@echo "*** Building xfst-vep.bin ***" ;
	@echo
	@printf "source xfst-vep.txt \n\
	save stack ../bin/xfst-vep.bin \n\
	quit \n" > ../../tmp/xfst-vep-script
	@xfst < ../../tmp/xfst-vep-script
	@rm -f ../../tmp/xfst-vep-script

clean:
	@rm -f ../bin/*.bin ../bin/*.fst ../bin/*.save


