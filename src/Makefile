# This is a makefile that builds the Nenets morphological parser
# *****************************************************************


# This is a preliminary file that builds a Skolt Sami parser based upon
# xfst and not twolc.



XFST = xfst 
LEXC = lexc 
TWOLC = twolc

ifeq (victorio.uit.no, $(shell hostname))
XFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
LEXC = /opt/sami/xerox/bin/lexc -utf8
TWOLC = /opt/sami/xerox/bin/twolc -utf8
endif


SRC = vep-lex.txt \
	noun-vep-morph.txt \
	noun-vep-lex.txt \
	adj-vep-lex.txt \
	adv-vep-lex.txt \
	verb-vep-lex.txt \
	verb-vep-morph.txt \
	num-vep-lex.txt \
	num-vep-morph.txt \
	pron-vep-morph.txt \
#	punct-vep-lex.txt \
	pp-vep-lex.txt

# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon vep.save

ivep.fst: ../bin/ivep.fst
../bin/ivep.fst: ../bin/vep.fst ../bin/vep-num.fst
	@echo
	@echo "*** Building the inverse ivep.fst ***"
	@echo
	@printf "load ../bin/vep.save \n\
	invert net \n\
	save stack ../bin/ivep.fst \n\
	quit \n" > ../../tmp/ivep-fst-script
	$(XFST) < ../../tmp/ivep-fst-script
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
	$(XFST) < ../../tmp/vep-fst-script
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
	$(XFST) < ../../tmp/caseconv-script
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
	$(XFST) < ../../tmp/vep-save-script
	@rm -f ../../tmp/vep-save-script

# The first goal is to build vep-lex.save
# This goal depends on a bunch of lexicon files

vep-lex.save: ../bin/vep-lex.save
../bin/vep-lex.save: $(SRC)
	@echo
	@echo "*** Building vep-lex.save ***" ;
	@echo
	printf "compile-source $(SRC) \n\
	save-source ../bin/vep-lex.save \n\
	quit \n" > ../../tmp/vep-lex-save-script
	$(LEXC) < ../../tmp/vep-lex-save-script
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
	$(XFST) < ../../tmp/xfst-vep-script
	@rm -f ../../tmp/xfst-vep-script


# And yes, the number generator.

vep-num.fst: ../bin/vep-num.fst
../bin/vep-num.fst: vep-num.txt
	@echo
	@echo "*** Building $(notdir $@) ***" ;
	@echo
	$(XFST) -e "read lexc < $< " \
		-e "save stack   $@ " \
		-stop



clean:
	@rm -f ../bin/*.bin ../bin/*.fst ../bin/*.save


