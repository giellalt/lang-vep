# Veps language model documentation

All doc-comment documentation in one large file.

---

# src-cg3-dependency.cg3.md 


# C O M M O N  S Á M I  D E P E N D E N C Y   G R A M M A R

This dep file is for sma, sme, smj, sje.

# DELIMITERS

Sentence delimiters are the following: <.> <!> <?> <...> <¶>

# TAGS AND SETS

N
V
A
Adv
CC
CS
Inf
Sup
Neg
Num
Po
Pr

Pcle
Prop

Pron
IV
TV
COMMA
DASH
CITATION to keep colouring we add a "
HYPHEN
QMARK
PUNCT
LEFT
RIGHT
CLB
Ind
Pot
Impr
ImprtII
Cond
ConNeg
Caus causative eus
VGen
Interj
ABBR
ACR
Prs
Prt
Cmpnd
RCmpnd
PrfPrc
PrsPrc
Actor
Actio
Ger
Indef
Nom
Acc
Ill
Com
Gen
Ess

IM For fao

## POS sub-categories

## Syntactic tags and sets

### Syntactic tags in input to this file

### Syntactic tags added in this file

* @FMV : finite main verb
- oaidná: Son oaidná ollislaš gova. - She sees the whole picture
* infinite main verb
* @FAUX : finite auxiliary verb
- ferte: Son ferte oaidnit ollislaš gova. - She must see the whole picture. 
* @FMVdic : finite main verb introducing direct speech
* @IMVdic : infinite main verb introducing direct speech
* @FS-IMV : infinite main verb of subclause 
* @FS-IAUX : infinite auxiliary verb in subclause
* @FS-N<IAUX : infinite auxiliary verb of a relative subclause
* @FS-N<IMV : infinite main verb of a relative subclause
* @FS-OBJ : finite verb in subclause functioning as object
* @FS-OBJ> : finite verb in subclause functioning as object
* @FS-<OBJ : finite verb in subclause functioning as object
* @FS-SUBJ : finite verb in subclause functioning as subject
* @FS-SUBJ> : finite verb in subclause functioning as subject
* @FS-<SUBJ : finite verb in subclause functioning as subject
* @FS-ADVL> : finite verb in subclause functioning as adverbial to the left of the main clause
* @FS-<ADVL : finite verb in subclause functioning as adverbial to the right of the main clause
* @S< : a clause modifying a sentence to the right of it
* @FS-ADVL : finite verb in subclause ...
* @-FS-<ADVL : infinite subclause - eus
* @-FS-ADVL> : infinite subclause - eus
* @FS-N< : relative clause to N
* @FS->N : relative clause to N to the left side of it - eus
* @FS-VFIN< : finite verb in sentence, statement
- eai: Idja ii leat šat, eai ge sii dárbbaš lámppá dahje beaivváža čuovgga, dasgo Hearrá Ipmil lea sin čuovga. - The night is not anymore, they do not need the lamp- or day- light either, because God the Lord is their light.
* @FS-<APP : finite subclause functioning as an apposition
* @ICL-ADVL : non-finite subclause ...
* @ICL-AUX< : "right" argument of auxiliary (?)
* @ICL-OBJ : infinitival clause object
* @ICL-SUBJ : infinitival clause subject
* @ICL-P< : infinitival clause complement of preprosition
* @IAUX : non-finite auxiliary
* <mv> : main verb. A temporarily tag omitted in the end of the file.
* <aux> : auxilary verb. A temporarily tag omitted in the end of the file.

### fao syntags

* @>V

### kal syntags

* @INS :
* @<INS :
* @INS> :

### eus syntags

* @FS-SPRED : finite verb in subclause functioning as a subject predicate - eus, but not sure if in use

### Syntactic set definitions

# Dep grammar

Correction rules

* **muitalit**

* **XX**

* **XX**

* **XX**

* **faoSumId=Rel**

## The finite verb

# Mapping rules

**lgRemove** removes the language tags <sma>, <sme>,  etc, before proceeding to the dep file.

* * *

<small>This (part of) documentation was generated from [src/cg3/dependency.cg3](https://github.com/giellalt/lang-vep/blob/main/src/cg3/dependency.cg3)</small>

---

# src-cg3-disambiguator.cg3.md 



Disambiguator for Veps

## Sets

Sentence delimiters are the following: "<.>" "<...>" "<!>" "<?>" "<¶>"

### Part-of-Speech
* N = noun
* A = adjective
* Num = numeral
* V = verb
* Adv = adverb
* Pcle = particle
* Pr = preposition
* Po = postposition
* Pron = pronoun
* Interj = interjection

### Numerus

* Sg = Singular
* Pl = Plural
* Sg1 = Singular 1.p.
* Sg2 = Singular 2.p.
* Sg3 = Singular 3.p.
* Pl1 = Plural 1.p.
* Pl2 = Plural 2.p.
* Pl3 = Plural 3.p.

### Cases
* Nom
* Gen
* Acc
* Par
* Ine
* Ill
* Ela
* Ade
* Abe
* All
* Abl
* Ess
* Tra
* Ins
* Com
* SUBJ-CASE = Nom Par

### Types
* Prop = Proper noun
* Interr = Interrogative
* Dem = demonstrative pron
* Rel = Relative pron
Relpronpl "mikkä ja "jokka"
Relpronsg "mikä" ja "joka"
Interrpronpl "kuka" ja "mikä"
* Pers = Personal pron
* Indef = Indef pron

* Inf = Infinitive
* ConNeg = Conjugated as Negative form
* PrfPrc = Perfectum Particip
* Imprt = Imperative
* Act = Active
* Neg = Negation verb

* COMMA = comma

* Foc/kaan = focus clitic -kaan
* Foc/kaan = focus clitic -kaan

## Sets with more members

* WORD = all PoS

* NPMOD = these can modify a noun
* NPMODADV = NPMOD plus adverb

* NOT-NPMOD = these cannot modify a noun

* NOT-NPMODADV = these cannot modify a noun, and is not adverb

* QVANT-ADV = e.g. paljon, vähän
* KUNKA = e.g. kunka missä (adverbs that start a sentence)

Boundaries

* S-BOUNDARY = words that start a sentence

Verbs

* SV-BOUNDARY = words that start a sentence and finite verb

## Disambiguation rules

### Dialects

### Early rules

* __person_test__ selects finite verb if there is a Pron Pers to the left

* __adv_after_V__ selects adverb if there is a verb to the right

* __prop_infrontof_kieli__ removes propernoun in fron of kieli, if it kan be something else, e.g. Kainun kieli

* **PropInit** removes  propernoun in the beginning of a sentence if it kan be a CC or a Pr (e.g. Mutta)

* **PropNotInit** selects  propernoun if it is not in the beginning of a sentence

Possessive suffixes

Numeral phrases

### Preposition/postposition/adverb rules

* **Prifgenpar** selects  preposition to the left of Gen or Par

* **Poifgenpar** selects  postposition to the right of Gen or Par

* **vasthaan**

## Rules for mapping @CVP and @CNP on the CC and CS

* **CVP** maps @CVP to CS and mutta

* **CNPifN** maps @CNP to CC between two N

* **CNPifInf** maps @CNP to CC between two Inf

## Case rules

### Partitive

Genitive

### Illative

## Number rules

## More disambiguation rules
* **SgNotPl**

### Elative

## Propernouns

## Verbs

### Specific verbs	

ei negation verb

eli

## Adverbs

### paljon

### kerran

### jälkhiin

## Adjectives

Conjunctions

## Subjunctions

että

jos

ko	

sillä	

## Pronouns

## Verb rules, Verbs

### Infinitive

## Present Sg3

## Present Pl3 or PrsPrc

## Present Pl3 or Passive

Imperative

## Past tense

### Prt Pl3 or Prt Sg2

## Negative verb

Relative pronouns

* **Pl3ollaifplrelpronandplinterrpron** selects Pl3 if olla

* **Sg3ollaifplrelpronandplinterrpron** selects Sg3 if olla

* **Sg3ollainpretandperf** selects Sg3 if COPULAS

* **Sg3ollainpretandperf** selects Sg3 if COPULAS

* **Relpronandnotintterpron** selects Rel Sg if Interr

* **Relpronandnotintterpron** selects Rel Sg if Interr

* **interrpron** selects Interr if ? in the end

* **DifferenceBetweenNiitäImprtAndNiitäDemAndPersIfSubj** selects Pron Dem Pl or Pron Pers Pl3 when finite verb to the right

* **paljonadvandnotpaljonoun** selects Adv if paljon

* **Relpronifitsanounoracommabeforeit** selects Rel Pl if N to the left

* **annaimperativeandnotannaname** removes Prop if Anna se

* **tulinounfromtuliprtsg3** selects V Sg

* **dempronandnotpronpers** selects Den if A of N to the right

* **Imperativefromconneg** selects and removes ConNeg

* **ImperativeafterNeg** removes Imprt if pronoun

* **interrel** selects Interr of Rel if CS to the right

* **+FMAINV**  to the remaining finite verbs which are not AUX    

## HNOUN MAPPING

* **@<ADVLcoor** (@<ADVL) for ADVLCASEAdv if @CNP to the left and ADVL to the left of it

* **X** maps X everywhere

* **REMOVE X** removes X whenever there is any other tag.

* WORDLEMMA = regex giving the lemma in question

* **errorth** removes Err/Orth if there is an analysis without Err/Orth with the same lemma

* * *

<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-vep/blob/main/src/cg3/disambiguator.cg3)</small>

---

# src-cg3-functions.cg3.md 



* Sets for POS sub-categories

* Sets for Semantic tags

* Sets for Morphosyntactic properties

* Sets for verbs

- V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.  
The REAL-V set thus awaits a fix to the preprocess V ... N bug.

* The set COPULAS is for predicative constructions

* NP sets defined according to their morphosyntactic features

* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")

* Miscellaneous sets

* Border sets and their complements

* Syntactic sets

These were the set types.

## HABITIVE MAPPING

* **hab1** 

* **hab2** 

* **hab3** (<hab> @ADVL>) for hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.

* **habNomLeft** 

* **hab4** 	

* **hab6** 

* **hab7** 

* **hab8** This is not HAB
* **hab5**  This is not HAB

* **habDain** (<hab> @ADVL>) for (Pron Dem Pl Loc) if leat followed by Nom to the right

* **habGen** (<hab> @<ADVL) hab for Gen; if Gen is located in the end of the sentence and Nom is sentence initial

* **spred<obj** (@SPRED<OBJ) for Acc; the object of an SPRPED. Not to be mistaken with OPRED. If SPRED is to the left, and copulas is to the left of it. Nom or Hab are found sentence initially.

* **Hab<spred** (@<SPRED) for Nom; if copulas, goallut or jápmit is FMAINV and habitive or human Loc is found to the left. OR: if Ill or @Pron< followed by HAB are found to the left.

* **Hab>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween HAB and <ext>.

* **Nom>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween Nom and <ext> @<SUBJ.

* **<spred** (<ext> @<SUBJ) for Nom; if copulas to the left, and some kind of adverb, N Loc, time related word or Po to the left of it. OR: if Ill or @Pron< to the left, followed by copulas and the before mentioned to the left of copulas. 

* **<spred** (<ext> @<SUBJ) for Nom, but not for Pers. To the left boahtit or heaŋgát as MAINV, and futher to the left is some kind of place related word, or time related word

* **<spredQst1** (<ext> @<SUBJ) for Nom in a typically question sentence; if A) Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. B) same as a, only the Qst-pcle is attached to copulas. C) Qst to the left, with copulas to its left, but not if two Nom:s are found somewhere to the right. D) copulas to the left, and BOS to the left. E) Loc or Ill to the left, and Loc or Hab to the left of this, Qst and copulas to the left. F) Num @>N to the left, Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. NOTE) for all these rules; human, Loc or Sem/Plc not allowed to the right.

* **<spredQst2** (@<SPRED) for Nom; in a typically question sentence; differs from <spredQst1 by not beeing as restricted to the right. Though you are not allowed to be Pers or human.

* **Nom<spredQst** (@<SPRED) for Nom; in a typically question sentence. Differs from <spredQst2 by letting Nom be found between SPRED and copulas

* **<spred** (@<SPRED) for A Nom or N Nom if; the subject Nom is on the same side of copulas as you: on the right side of copulas

* **<spredVeara** (@<SPRED) for veara + Nom; if genitive immediately to the right, and intransitive mainverb to the right of genitive

* **leftCop<spred** (@<SPRED) for Nom; if copulas is the main verb to the left, and there is no Ess found to the left of cop (note that Loc is allowed between target and cop). OR: if you are Coll or Sem/Group with copulas to your left. 

* **<spredLocEXPERIMENT** (@<SPRED) for material Loc; if you are to the right of copulas, and the Nom to the left of copulas is not a hab-actor

* **NumTime** (@<SPRED) for A Nom

* **<spredSg** (@<SPRED) for Sg Nom	

* **<spredPg** (@<SPRED) for Pl Nom	

* **<spred** (@<SPRED) for Nom; if copulas to the left, and Nom or sentence boundary to the left of copulas. First one to the right is EOS.

* **<spred** (@<SPRED) for N Ess

* **spredEss>** (@SPRED>) for N Ess; if copulas to the right of you, and if an NP with nom-case first one to your left.

* **HABSpredSg>** (@SPRED>) for Nom; if habitive first one to the left, followed by copulas.

* **GalleSpred>** (@SPRED>) for Num Nom; if sentence initial

* **spredSgMII>** (@SPRED>)

* **r492>** (@SPRED>) for Interr Gen; consisting only of negations. You are not allowed to be MII. You are not allowed to have an adjective or noun to yor right. You are not allowed to have a verb to your right; the exception beeing an aux.

* **AdjSpredSg>** (@SPRED>) for A Sg Nom; if copulas to the right, but not if A or @<SPRED are found to the right of copulas

* **SpredSg>Hab** (@SPRED>) for Nom; if you are sentence initial, copulas is located to the right, and there is a habitive to the right of copulas

* **Spred>SubjInf** (@SPRED>) for Nom; if copulas to the right, and the subject of copulas is an Inf to the right

* **spredCoord** (@<SPRED) coordination for Nom; only if there already is a SPRED to the left of CNP. Not if there is some kind of comparison involved.

* **subj>Sgnr1** (@SUBJ>) for Nom Sg, including Indef Nom if; VFIN + Sg3 or Pl3 to the right (VFIN not allowed to the left) 

* **subj>Du** (@SUBJ>) for dual nominatives, including Coll Nom. VFIN + Du3 to the right. 
* **subj>Pl** (@SUBJ>) for plural nominatives, including Coll and Sem/Group. VFIN + Pl3 to the right.

* **subj>Pl** (@SUBJ>) for plural nominatives

* **subj>Sgnr2** (@SUBJ>) for Nom Sg; if VFIN + Sg3 to the right.

* **<subjSg** (@<SUBJ) for Nom Sg; if VFIN Sg3 or Du2 to the left (no HAB allowed to the left).

* **f<advl** (@-F<ADVL) for infinite adverbials

* **f<advl** (@-F<ADVL) for infinite adverbials

* **s-boundary=advl>** (@ADVL>) for ADVL that resemble s-booundaries. Mainverb to the right.

* **-fobj>** (@-FOBJ>) for Acc 

* **-fobj>** (@-FOBJ>) for Acc

* **advl>mainV** (@ADVL>) if; finite mainverb not found to the left, but the finite mainverb is found to the right.

* **<advl** (@<ADVL) if; finite mainverb found to the left. Not if a comma is found immediately to the left and a finite mainverb is located somewhere to the right of this comma.

* **<advlPoPr** (@<ADVL) if mainverb to the left.
* **advlPoPr>** (@<ADVL) if mainverb to the right.

* **advlEss>** (@<ADVL) for weather and time Ess, if FMAINV to the left.

* **advl>inbetween** (@ADVL>) for Adv; if inbetween two sentenceboundaries where no mainverb is present.

* **comma<advlEOS** (@<ADVL) if; comma found to the left and the finite mainverb to the left of comma. To the right is the end of the sentence.

* **advlBOS>** (@ADVL>) if; you are N Ill and found sentnece initially. First one to your right is a clause.

* **<advlPoEOS** (@<ADVL) for Po; if you are found at the very end of a sentence. A mainverb is needed to the right though.

* **cleanupILL<advl** (@<ADVL) for N Ill if; there are no boundarysymbols to your left, if you arent already @N< OR @APP-N<, and no mainverb is to yor left.

* **<opredAAcc** (@<OPRED) for A Acc; if an other accusative to the left, and a transtive verb to the left of it. OR: if a transitive verb to the left, and an accusative to the left of it.

### sma object

* **<advlEss** (@<ADVL) for ESS-ADVL if; FMAINV to the left
* **<spredEss** (@<SPRED) for N Ess if; FMAINV to the left is intransitive or bargat

## SUBJ MAPPING - leftovers

## OBJ MAPPING - leftovers

## HNOUN MAPPING

* * *

<small>This (part of) documentation was generated from [src/cg3/functions.cg3](https://github.com/giellalt/lang-vep/blob/main/src/cg3/functions.cg3)</small>

---

# src-fst-morphology-affixes-adjectives.lexc.md 

# Adjective inflection

## Temporary lexicon

* **LEXICON A_** = , when we do not know. Redirecting to N_ (?) 

## Regolar lexica

* **LEXICON A_UZ1** = uz’:ud, goes to NMN_NORUZ

* **LEXICON A_RUSKED** = goes to NMN\_RUSKED

**LEXICON A_MUNA**   muna:mun

* **LEXICON A_NADO** =  nado:nado

* **LEXICON A_POIG** =  poig:poig

* **LEXICON A_MARJ** =  marj:marj

* **LEXICON A_JAUH** =  jauh:jauh

* **LEXICON A_OIGED** = oiged:oig%{eØ%}d
* **LEXICON A_KEL1** = kel':kel

* **LEXICON A_SAR1** = sar':sar

* **LEXICON A_VIDENZ1** =  videnz':viden (-den, -t, -zid)

* **LEXICON A_LANDEH** =  landeh:land

* **LEXICON A_VEDEKAZ** =  vedekaz:vedeka

* **LEXICON A_SEIBAZ** =  seibaz:seib

* **LEXICON A_CIPUINE** = cipuine:cipu

* **LEXICON A_TOSHTMINE** =  toštmine:toštmi

* **LEXICON A_KENGATOI** =  kengätoi:kengäto

* **LEXICON PRFPRC-DECLENSION** =  -nu

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/adjectives.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/affixes/adjectives.lexc)</small>

---

# src-fst-morphology-affixes-clitics.lexc.md 

# Veps clitics

K 3 clitics plus #

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/clitics.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/affixes/clitics.lexc)</small>

---

# src-fst-morphology-affixes-nouns.lexc.md 

# Veps Noun inflection
* Metrical feet
	* Disyllables
		* pyrrhic, dibrach : kala
		* iamb	  	  : veneh
		* trochee, choree  : sanha sana+N+Sg+Ill
		* spondee	: landeh
	* Trisyllables
		* tribrach
		* dactyl
		* amphibrach
		* anapaest, antidactylus : venehed 
		* bacchius
		* antibacchius
		* cretic, amphimacer
		* molossus

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

nominative singular in form and the other is identical to the 
genitive singular. This definition is dependent on the school
and its use should be associated with the user group, perhaps.

* Noun 'berry / marja' - full paradigm: Noun - marj examples:*
* *marj:* `marj+N+Sg+Nom`
* *marjan:* `marj+N+Sg+Gen`
* *[marj,* `marjan]:` (Eng. marj+N+Sg+Acc)
* *marjad:* `marj+N+Sg+Par`
* *marjaks:* `marj+N+Sg+Tra`
* *marjata:* `marj+N+Sg+Abe`
* *marjanke:* `marj+N+Sg+Com`
* *marjas:* `marj+N+Sg+Ine`
* *marjaspäi:* `marj+N+Sg+Ela`
* *marjaha:* `marj+N+Sg+Ill`
* *marjal:* `marj+N+Sg+Ade`
* *marjalpäi:* `marj+N+Sg+Abl`
* *marjale:* `marj+N+Sg+All`
* *marjan:* `marj+N+Sg+EssInst`
* *marjadme:* `marj+N+Sg+Prl`
* *marjanno:* `marj+N+Sg+Apr1`
* *marjannoks:* `marj+N+Sg+Apr2`
* *marjannopäi:* `marj+N+Sg+Egr`
* *marjahosai:* `marj+N+Sg+Ter1`
* *marjalesai:* `marj+N+Sg+Ter2`
* *marjassai:* `marj+N+Sg+Ter3`
* *marjahopäi:* `marj+N+Sg+Add1`
* *marjalepäi:* `marj+N+Sg+Add2`

* *marjad:* `marj+N+Pl+Nom`
* *[marjoid'en,* `marjoiden]` (Eng. # checking needed: marj+N+Pl+Gen)
* *marjad:* `marj+N+Pl+Acc`
* *marjoid:* `marj+N+Pl+Par`
* *marjoikš:* `marj+N+Pl+Tra`
* *marjoita:* `marj+N+Pl+Abe`
* *marjoidenke:* `marj+N+Pl+Com`
* *marjoiš:* `marj+N+Pl+Ine`
* *marjoišpäi:* `marj+N+Pl+Ela`
* *marjoihe:* `marj+N+Pl+Ill`
* *marjoil:* `marj+N+Pl+Ade`
* *marjoilpäi:* `marj+N+Pl+Abl`
* *marjoile:* `marj+N+Pl+All`
* *marjoin:* `marj+N+Pl+EssInst`
* *marjoidme:* `marj+N+Pl+Prl`
* *marjoidenno:* `marj+N+Pl+Apr1`
* *marjoidennoks:* `marj+N+Pl+Apr2`
* *marjoidennopäi:* `marj+N+Pl+Egr`
* *marjoihesai:* `marj+N+Pl+Ter1`
* *marjoilesai:* `marj+N+Pl+Ter2`
* *marjoihepäi:* `marj+N+Pl+Add1`
* *marjoilepäi:* `marj+N+Pl+Add2`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *leib:* `leib+N+Sg+Nom`
* *leibän:* `leib+N+Sg+Gen`
* *leibid:* `leib+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *poig:* `poig+N+Sg+Nom`
* *poigan:* `poig+N+Sg+Gen`
* *poigid:* `poig+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *mezʼ:* `mezʼ+N+Sg+Nom`
* *mehen:* `mezʼ+N+Sg+Gen`
* *mehid:* `mezʼ+N+Pl+Par`

* Noun ' / ' examples:*
* *čai:* `čai+N+Sg+Nom`
* *čajun:* `čai+N+Sg+Gen`

Plural

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

* Noun ' / ' examples:*
* *:* `+N+Sg+Nom`
* *n:* `+N+Sg+Gen`
* *d:* `+N+Pl+Par`

LEXICON N_NADO  nado:nado

* Noun ' wife's sister-in-law/ ' examples:*
* *nado:* `nado+N+Sg+Nom`
* *nadon:* `nado+N+Sg+Gen`
* *nadoid:* `nado+N+Pl+Par`

## Nominals

* SG-NOM-SUF ;  rusked:

# ACTUAL CASES 

# Start Plural

# Possessor Indices

Not yet written...

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/nouns.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/affixes/nouns.lexc)</small>

---

# src-fst-morphology-affixes-numerals.lexc.md 


# Olonets numerals 

# Numeral inflection
Numeral inflection is like nominal, except that numerals compound in all
forms which requires great amount of care in the inflection patterns.

* **LEXICON ARABICCOMPOUNDS**  ! 1-osainen

* **LEXICON ARABICCASES**  adds +Arab

* **LEXICON ARABICCASE**  adds +Arab

* **LEXICON ARABICCASE0**  adds +Arab

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/numerals.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/affixes/numerals.lexc)</small>

---

# src-fst-morphology-affixes-pronouns.lexc.md 

# Pronouns

Veps pronouns ...

PRONOUN-TYPES split in types: prs, interr, neg, dem.

PERS  split in persons

PersSg1 split in Nom, Gen, Acc

PersSg2 split in Nom, Gen, Acc

PersSg3 split in Nom, Gen, Acc, Par and 10 other cases

PersPl1 split in Nom and obl

PersPl2 split in Nom and obl

PersPl3 split in Nom and obl

PERS-PL_01 add case suffix

INTERR add case suff

DEM-PRON split in Nom Gen par

NEG-PRON split in Nom Gen Par

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/pronouns.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/affixes/pronouns.lexc)</small>

---

# src-fst-morphology-affixes-propernouns.lexc.md 

# Proper noun inflection

Veps proper nouns inflect in the same cases as regular
nouns. Veps acronyms, however, take a hyphen ('-') as a separator.

PROPER NOUNS 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/propernouns.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/affixes/propernouns.lexc)</small>

---

# src-fst-morphology-affixes-quantifiers.lexc.md 

# quantifier affixes

**LEXICON NUM_KAKS1** 

**LEXICON NUM_YKS1** 

**LEXICON NUM_NORUZ** 

**LEXICON NUM_** 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/quantifiers.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/affixes/quantifiers.lexc)</small>

---

# src-fst-morphology-affixes-symbols.lexc.md 


# Symbol affixes

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/symbols.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/affixes/symbols.lexc)</small>

---

# src-fst-morphology-affixes-verbs.lexc.md 


# Verb inflection in Vepsian

## Lexica from the *stems* file

### Irregular verbs
V_EI all forms of the *ei* verb

### Regular verbs

largest verb group vedada:ved
V_ada/ab/i/agaha =  vedada:ved
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ata/ab/oi/akaha =  ahjata:ahj
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg,

preterite stem vowel

V_da/vab/voi/gaha =  kaida:kai
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg,

preterite stem vowel

V_ada/ab/oi/agaha =  jagada:jag
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

preterite stem vowel

V_da/b/i/gaha =  joda:jo
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

V_ta/ab/i/kaha = ülenzoitta:ülenzoit, čorskta:čorsk
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

problems with tta, ta, da

preterite stem vowel

V_ta/dab/zhi/kaha = avaita:avai, avaidab avaiži
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ta/dab/zi/kaha = amunta:amun
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ta/dab/di/kaha = souta:sou
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ta/cheb/chi/kaha adivoita:adivoi
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_da/cheb/chi/kaha dominoida:dominoi
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_da/b/0/gaha adivoita:adivoi
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_da/eb/i/gaha = arvostelda:arvostel
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ta/ndab/nzi/kaha = henota:heno
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ta/ndeb/nzi/kaha = virigata:viriga
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ta/neb/ni/kaha = harjeta:harje, pageta:page
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ata/neb/ni/akaha = hapata:hap
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ta/ib/i/kaha = bruncta:brunc
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_da/ib/i/gaha = barabanda:baraban, hobda:hob
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ta/ab/oi/kaha = kastta:kast
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ta/eb/i/kaha = joksta:joks
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_shta/zheb/zhi/shkaha = pagišta:pagi
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_sta/zeb/zi/skaha = pesta:pez
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_kta/gub/gui/ggaha = kirkta:kir
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_kta/gib/gi/ggaha = henkta:hen
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_pta/bub/bui/pkaha = kirkta:kir
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_elta/leb/li/elkaha = muštelta:mušt
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_da/eb/i/kaha = lugeda:lug OR should this be -gaha ühtnegoi
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_tta/dab/doi/tkaha = antta:an
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_kta/gab/goi/ggaha = haikta:hai
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_kta/gab/gi/ggaha = haikta:hai
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_kta/geb/gi/ggaha = polkta:pol
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da %^DEVOICE

preterite stem vowel

V_äda/äb/i/ägaha = eläda:el
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg, NomAg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_ta/äb/i/kaha = heitta:heit, heitäb heiti
preceding vowel always required for affix
refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_OLDA (adding :le to vowstem)

refl-ind-prs, act-imprt-sg2, act-ind-prs, ind-sg-conneg

sometimes requires preceding vowel

problems with tta, ta, da

preterite stem vowel

V_TEHTA = tehta:te (adding :ge to vowst and indprs3)

V_SIRTA =  sirta:sir

V_JOKSTA = joksta:joks

V_LETA = leta:le

V_MAKSTA = maksta:maks

V_ASTTA = astta:ast

V_HUBETA = hubeta:hube

V_OTTA = otta:ot

V_ABIDOITTA = abidoitta:abidoi

V_OIGETA

V_TUGETA = tugeta:tuge

V_HOMAITA =  homaita:homai

V_VALITA  =  valita:vali

### Default lexicon

V_ default verb lexicon

## The three contlex types ??2024-11-08

### PNDPRS3

INDPRTSG1 for Sg1

INDPRTSG2 for Sg2

INDPRTSG3 for Sg3

INDPRTPL1 for Pl1

INDPRTPL2 for Pl2

INDPRTPL3 for Pl3

### Vowel stems

V-VowelStem

V-VowelStem-PRS This lexicon gives all forms for formatives with obligatory onset vowel

#### Present Morphology

ACT_IND_PRSSG1 for Sg1

ACT_IND_PRSSG2 for Sg2

ACT_IND_PRSSG3 for Sg3

ACT_IND_PRSPL1 for Pl1

ACT_IND_PRSPL2 for Pl2

ACT_IND_PRSPL3 for Pl3

#### IMPERATIVE 

#### present reflexive

#### Preterite 

#### conditional present 

#### Imperfect Reflexive 

#### Conditional Present Reflexive

### Consonant Stems

V-ConsonantStem V-ConsonantStem_OTHER ;

V-ConsonantStem_OTHER 

#### Imperative 

#### Conditional Imperfect 

#### Reflexive 

#### Imperative 

V-ConsonantStem_d/g

V-ConsonantStem_d/k 

V-ConsonantStem_t/k 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/verbs.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/affixes/verbs.lexc)</small>

---

# src-fst-morphology-phonology.twolc.md 

# The Veps morphophonological/twolc rules file 

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-vep/blob/main/src/fst/phonology.twolc) 

## Alphabet, sets, definitions

### Alphabet
#### The letters
* a b d e f g h i j k l m n o p r s š t u v z ž ü ä ö  
* A B D E F G H I J K L M N O P R S Š T U V Z Ž Ü Ä Ö  
* š ž y  
* Š Ž Y  
* ʼ  = U+02BC MODIFIER LETTER APOSTROPHE
* '  = U+0027  APOSTROPHE

#### Archiphonemes
* %{eØ%}:e   vowel loss in oiged:oiktan
* %{uØ%}:u   vowel loss in sapug:sapkan
* %{iØ%}:i   vowel loss in paltin:paltnan
* %{aØ%}:a   vowel loss in samal:samlan
* %{oØ%}:o   vowel loss in zerkol:zerklon
* AÄ1:a   Vowel harmony with "(t)a/ä"
* AÄ1:ä   Vowel harmony with "(t)a/ä"
* AÄ1:0   Vowel harmony with 0

* OÖ1:o   
* OÖ1:ö   

* UY1:u   
* UY1:ü   

* V1:a     
* V1:e     
* V1:i     
* V1:o     
* V1:u     
* V1:ü     
* V1:ä     
* V1:ö     

* V2:a    
* V2:e    
* V2:i    
* V2:o    
* V2:u    
* V2:ü    
* V2:ä    
* V2:ö    

* V3:a    
* V3:e    
* V3:i    
* V3:o    
* V3:u    
* V3:ü    
* V3:ä    
* V3:ö    
* V3:0    

* %^RmVow:0  for removing vowels
*  AO1:0   
*   A1:0   
*   D1:0    
*   E1:0   
*  EH1:0   
*  EI1:0   
*   I1:0   
* INE1:0   
* QAO1:0    
* QAO1:a   
* QAQ1:0   
* QEQ1:0   
* QÄQ1:0   
*   U1:0   
*  ZD1:0   
*  ZD1:0   
*  ZS1:0   
*  ZS1:0   

*  %^DEVOICE:0     vezi:vet; pen’:pen’t
*  %^PEN:0         Control final vs penultimate

* K1:k    
* %^NoGrad:0    This will be placed after a stem to break Gradation

* %^WGStem:0    

* %^TS:0    

* %^RVow:0   

* %-     Hyphen in  constructions 
* %>   
* #       Word boundary for both lexicalised and dynamic compounds

* Cx   these are probably not needed
* Cy   
* X   
* Y   

#### Triggers
* %^LVow:0		    
* %^LCns:0		    
* %^WCns:0		    
* %^AtoO:0		    
* %^ÄtoÖ:0		    
* %^OddSyll:0		    
* %^StretchSyll2:0    
* %^SyllBr:0		    
* %^E1:0			    

### sets

* VowBack = a o u ;  
* VowFront = ä ö y ü ;  
* VowNeutral = e i ;  
* VowNonHigh = a o ä ö e ;  
* Vow = a o u ä ö y ü e i ;  
* Cns = b d f g h j k l m n p r s š t v z ž ;  
* CnsVoiceless = f h k p s š t ;  
* Letters = Vow Cns ;  

### Definitions

Front Trigger

Back Trigger 

Short vowel

Inessive lengthening of vowel

Right context for gradation

## Rules

### Vowel change 

**RULE: StemVowLoss before _i_** = 
**StemVowLoss before _i_**  
* *oiged^PEN^DEVOICE^RmVow^DEVOICEa>n*
* *oik0t0000a>n*

**RULE: Stem-internal vowel loss** = 
**Stem-internal vowel loss**

**RULE: QAO1 Sg Rule** = 

**RULE: QAO1 Pl Rule** = 

* *nado>hV1*
* *nado>ho*

* *marj>hV1*
* *marj>ha*

**vowel loss** vauged: vauktan

### Consonant change 

**devoicing of adjecent stops** vauged: vauktan
oiged+A+Sg+Gen: __right/oikea__
* *oiged^PEN^DEVOICE^RmVow^DEVOICEa>n*
* *oik0t0000a>n*

**d:z in vodes, voziš**  

**d:t in voden, vot**  

**d:0 in voden, vot**  

**z:s in meletuz:meletust**  

**’:0 before vowels**  

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/phonology.twolc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/phonology.twolc)</small>

---

# src-fst-morphology-root.lexc.md 



# Multichar_Symbols and *Root* lexicon for Veps 

## Miscellaneuos tags

Thes are  to be evaluated (are they in use?)
TODO: Have a look at these: 

* **+Arab** 
* **+CLBfinal** 
* **+Cmp** 
* **+CmpNP/First** 
* **+CmpNP/None** 
* **+Cmp/SplitR** 
* **+Cmp/Hyph** 
* **+Coll** 
* **+Com** 
* **+Err/Hyph** 
* **+Err/Lex** 
* **+Err/SpaceCmp** 
* **+Err/MissingSpace** 
* **+MWE** 
* **+OLang/ENG** 
* **+OLang/FIN** 
* **+OLang/NNO** 
* **+OLang/NOB** 
* **+OLang/RUS** 
* **+OLang/SMA** 
* **+OLang/SME** 
* **+OLang/SWE** 
* **+OLang/UND** 
* **+Prf** 
* **+PrfPrs** 
* **+Rom** 

* **+Use/-PMatch** 
* **+Use/Circ** 
* **+Use/NG** 
* **+Use/PMatch** 
* **+Use/SpellNoSugg**
* **+Use/TTS** – **only** retained in the HFST Text-To-Speech disambiguation tokeniser
* **+Use/-TTS** – **never** retained in the HFST Text-To-Speech disambiguation tokeniser

* **+v1** 
* **+v2** 
* **@C.ErrOrth@** 
* **@D.ErrOrth.ON@** 
* **@P.ErrOrth.ON@** 

## Grammatical tags 

The morphological analyses of wordforms of Veps are presented 
in this system in terms of the following symbols. 
(It is highly suggested to follow existing standards when adding new tags). 

### The parts-of-speech 
* **+A**  = adjective 
* **+Adp**  = adposition 
* **+Adv**  = adverb 
* **+CS**  = subordinating conjunction 
* **+CC**  = coordinating conjunction 
* **+Interj**  = interjection 
* **+N**  = noun 
* **+Num**  = numeral 
* **+Pcle**  = particle 
* **+Pr**  = preposition 
* **+Po**  = postposition 
* **+Pron**  = pronoun 
* **+Qnt**  = quantifier 
* **+V**  = verb 

### Subtags 

### Noun subtags 

* **+Prop**  = proper 

#### Pronoun tags 

* **+Dem**  = demonstrative 
* **+Indef**  = indefinite 
* **+Interr**  = interrogative 
* **+Pers**  = personal 
* **+Recipr**  = reciprocal 
* **+Refl**  = reflexive 
* **+Rel**  = relative 

#### Verb tags 
##### Voice and transitivity

* **+Aux**  = auxiliary verb
* **+Act**  = active voice 
* **+Pss**  = passive voice 
* **+TV** = transitive and
* **+IV**  = intransitive verbs

##### Verb moods are: 

* **+Cond**  = conditional 
* **+Ind**  = indicative 
* **+Imprt**  = imperative 

##### Tenses 
* **+Prs**  = 
* **+Prt**  = 
* **+Pos**  = 

##### Verb personal forms are: 

* **+Sg1** Singular First Person 
* **+Sg2** Singular Second Person 
* **+Sg3** Singular Third Person 
* **+Pl1** Plural First Person 
* **+Pl2** Plural Second Person 
* **+Pl3** Plural Third Person 
* **+RcSg1** 
* **+RcSg2** 
* **+RcSg3** 
* **+RcPl1** 
* **+RcPl2** 
* **+RcPl3**  = 
* **+RcSg** 
* **+RcPl** 
* **+ScSg** 
* **+ScPl**  = 

##### Other verb forms are 

* **+Inf** 
* **+Ger** 
* **+Neg**  = 
* **+ConNeg** 
* **+ConNegII**  = 
* **+ImprtII**  = 
* **+PrsPrc** 
* **+PrfPrc**  = nu 
* **+Sup** 
* **+VGen** 
* **+VAbess**  = 

#### Nominal tags

* **+Sg**  = singular 
* **+Pl**  = plural 
* **+Abe**  = abessive 
* **+Acc**  = accusative 
* **+Abl**  = ablative case 
* **+Ade**  = adessive 
* **+All**  = allative 
* **+Dat**  = dative case 
* **+Ela**  = elative 
* **+Ess**  = essive 
* **+Exe**  = essive 
* **+Gen**  = genitive case 
* **+Ill**  = illative 
* **+Ine**  = inessive 
* **+Ins**  = instrumental 
* **+Instr**  = instructive -IN 
* **+Lat**  = Lative 
* **+Loc**  = Locative 
* **+Nom**  = nominative case 
* **+Par**  = partitive 
* **+Prl**  = prolative 
* **+Tra**  = translative 
* **+Voc**  = Vocative 
* **+Pros**  = 
* **+Adc**  = 
* **+Apr**  = 
* **+Egr**  = 
* **+Ter1**  = 
* **+Ter2**  = 
* **+Ter3**  = 
* **+Add1**  = 
* **+Add2**  = 
* **+Apr1**  = 
* **+Apr2**  = 
* **+EssInst**  = 

##### Possessive suffixes: 

* **+PxSg1**  = 
* **+PxSg2**  = 
* **+PxSg3**  = 
* **+PxPl1**  = 
* **+PxPl2**  = 
* **+PxPl3**  = 

##### Comparative tags: 

* **+Comp**  = 
* **+Superl**  = 

#### Subtags for Numerals: 

* **+Attr**  = 
* **+Card**  = 
* **+Ord**  = 

#### ADVERBS 
* **+Manner**  = 
* **+Spat**  = 
* **+Temp**  = 

#### Abbreviated words are classified with: 

* **+ABBR** 
* **+Symbol**  = independent symbols in the text stream, like £, €, © 
* **+ACR**  = 

#### Special symbols are classified with: 

* **+CLB** 
* **+PUNCT** 
* **+LEFT** 
* **+RIGHT**  = 

#### Special multiword units are analysed with: 
* **+Multi**  = 

#### Guess tag, used to catch new wores

* **+Guess**  = 

#### Question and Focus particles: 

* **+Qst** 
* **+Foc**  = 
* **+Clt**  = 
* **+Foc/i**  = perhaps +Addative
* **+Foc/ki**  = 
* **+Foc/žo**  = 
* **+Appr**  = 
* **+Advc**  = 
* **+Ter**  = 
* **+Pro**  = 
* **+Car**  = 
* **+PstI**  = 
* **+PstII**  = 

#### Usage tags: 

* **+Err/Orth**  = 
* **+Use/-Spell**  = 

#### Semtags 
* **+Sem/Mal** 
* **+Sem/Fem** 
* **+Sem/Sur**  = 
* **+Sem/Plc**  = 
* **+Sem/Org**  = 
* **+Sem/Obj**  = 
* **+Sem/Ani**  = 
* **+Sem/Hum**  = 
* **+Sem/Plant**  = 
* **+Sem/Group**  = 
* **+Sem/Time**  = 
* **+Sem/Txt**  = 
* **+Sem/Route**  = 
* **+Sem/Measr**  = 
* **+Sem/Wthr**  = 
* **+Sem/Build**  = 
* **+Sem/Edu**  = 
* **+Sem/Veh**  = 
* **+Sem/Clth**  = 

#### More semtags 
* **+Sem/Amount** 
* **+Sem/Build-room** 
* **+Sem/Cat** 
* **+Sem/Curr** 
* **+Sem/Date** 
* **+Sem/Domain** 
* **+Sem/Domain_Hum** 
* **+Sem/Dummytag** 
* **+Sem/Edu_Hum** 
* **+Sem/Event** 
* **+Sem/Food-med** 
* **+Sem/Group_Hum** 
* **+Sem/ID** 
* **+Sem/Lang** 
* **+Sem/Mat** 
* **+Sem/Money** 
* **+Sem/Obj-el** 
* **+Sem/Obj-ling** 
* **+Sem/Org_Prod-audio** 
* **+Sem/Org_Prod-vis** 
* **+Sem/Part** 
* **+Sem/Prod-vis** 
* **+Sem/Rule** 
* **+Sem/Sign** 
* **+Sem/State** 
* **+Sem/State-sick** 
* **+Sem/Substnc** 
* **+Sem/Time-clock** 
* **+Sem/Tool-it** 
* **+Sem/Year** 

#### Derivations  

Derivations are classified under the morphophonetic form of the suffix, the 
source and target part-of-speech. 

* **+V→N** 
* **+V→V** 
* **+V→A**  = 
* **+Der**  =
* **+Der/NomAg**  = tehta : tegii
* **+Der/Uz1**  = sur»uz' A»N 
* **+Der/Ta**  = 
* **+Der/Te**  = 
* **+Der/ma**  = 
* **+Der/Tu**  = 
* **+Der/IA**  = 
* **+Der/Toi**  = nime»toi N»A 
* **+Der/Matoi**  = V»A 
* **+Der/Mine**  = V»N 

### Morphophonology 
To represent phonologic variations in word forms we use the following 
symbols in the lexicon files: 

#### Archiphonemes and fluctuation symbols
* **%{eØ%}**  vowel loss in oiged:oiktan 
* **%{uØ%}**  vowel loss in sapug:sapkan 
* **%{iØ%}**  vowel loss in paltin:paltnan 
* **%{aØ%}**  vowel loss in samal:samlan 
* **%{oØ%}**  vowel loss in zerkol:zerklon 
* **{aä}** 
* **{oö}** 
* **{uü}** 

#### More archiphonemes (Protoletters for xfst)

* **%^DEVOICE**  = haikta: haig
* %^PEN         Control final vs penultimate
* **QAQ1** 
* **QAO1** 
* **QÄQ1** 
* **EH1** 
* **QEQ1** 
* **INE1** 
* **ZD1** 
* **ZS1** 
* **V1** 
* **AO1** 
* **A1** 
* **EI1** 
* **ZS1** 
* **ZD1**  These are for developing underlying morphology rules 
* **D1** 
* **E1** 
* **U1** 
* **I1** 
* **AÄ1** 
* **OÖ1** 
* **UY1** 
* **V1** 
* **V2** 
* **V3** 

#### And following triggers to control variation 

* **{front}** front vowel stems
* **{back}** back vowel stems
* **%^RmVow**  for removing vowels 
* **%^WGStem** 
* **%^TS** 
* **%^RVow** 
* **%^LVow** 
* **%^LCns** 
* **%^WCns** 
* **%^AtoO** 
* **%^ÄtoÖ** 
* **%^OddSyll** 
* **%^StretchSyll2** 
* **%^SyllBr** 
* **%^E1** 

#### Boundary symbols

* **%>**  = 
* **%-**  = 

## Flag diacritics 

We have manually optimised the structure of our lexicon using following 
flag diacritics to restrict morhpological combinatorics - only allow compounds 
with verbs if the verb is further derived into a noun again: 

| Flag | Explanation 
| ---- | ----------- 
|  **@P.NeedNoun.ON@**  | (Dis)allow compounds with verbs unless nominalised 
|  **@D.NeedNoun.ON@**  | (Dis)allow compounds with verbs unless nominalised 
|  **@C.NeedNoun@**  | (Dis)allow compounds with verbs unless nominalised 

For languages that allow compounding, the following flag diacritics are needed 
to control position-based compounding restrictions for nominals. Their use is 
handled automatically if combined with +CmpN/xxx tags. If not used, they will 
do no harm. 

| Flag | Explanation 
| ---- | ----------- 
|  **@P.CmpFrst.FALSE@**  | Require that words tagged as such only appear first 
|  **@D.CmpPref.TRUE@**  | Block such words from entering ENDLEX 
|  **@P.CmpPref.FALSE@**  | Block these words from making further compounds 
|  **@D.CmpLast.TRUE@**  | Block such words from entering R 
|  **@D.CmpNone.TRUE@**  | Combines with the next tag to prohibit compounding 
|  **@U.CmpNone.FALSE@**  | Combines with the prev tag to prohibit compounding 
|  **@P.CmpOnly.TRUE@**  | Sets a flag to indicate that the word has passed R 
|  **@D.CmpOnly.FALSE@**  | Disallow words coming directly from root. 

Use the following flag diacritics to control downcasing of derived proper 
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use 
these flags. There exists a ready-made regex that will do the actual down-casing 
given the proper use of these flags. 

| Flag | Explanation 
| ---- | ----------- 
|  **@U.Cap.Obl@**  | Allowing downcasing of derived names: deatnulasj. 
|  **@U.Cap.Opt@**  | Allowing downcasing of derived names: deatnulasj. 

| Flag diacritic | Explanation
| :------------- |:-----------
| @U.number.one@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.two@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.three@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.four@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.five@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.six@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.seven@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.eight@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.nine@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.zero@ | Flag used to give arabic numerals in smj different cases ;

## Lexc lexica

### Root lexicon

The word forms in Veps start from the lexeme roots of basic 
word classes. 

### Other lexica

CC_ 

CS_ 

INTERJ_ 

NUMBERSUF 

ORDINAL 

CADJ 
DADJ 
VADJ 

ADV_ 

ADV_MANNER 

ADV_LAT 
ADV_SPAT 

ADV_TEMP 

CASESUF 
PRON 
DEM 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/root.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/root.lexc)</small>

---

# src-fst-morphology-stems-abbreviations.lexc.md 

# Veps abbreviations 
[Original file](https://github.com/giellalt/lang-vep/blob/main/src/fst/stems/abbreviations.lexc)

## Lexica for adding tags and periods

Splitting in 3 groups, because of the preprocessor

**LEXICON Abbreviation** 

Now splitting according to POS, and according to dot or not

**LEXICON ab** 

**LEXICON ab-noun** 

Here come POS and Case tags, and no period.

**LEXICON ab-nodot-noun**  The bulk

**LEXICON ab-nodot** 

**LEXICON ab-dot** 

**LEXICON ab-dot-noun** 

The idea is that the nominal ones may have case, like e.g. P.E.N.

## The abbreviation lexicon itself

**LEXICON noperiod** 

###           Intransitive abbreviations           

**LEXICON ITRAB** 

###    Transitive number-related abbreviations      !

**LEXICON TRNUMAB** 

###              Transitive abbreviations           !

**LEXICON TRAB** 

**LEXICON TRAB** 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/abbreviations.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/stems/abbreviations.lexc)</small>

---

# src-fst-morphology-stems-acronyms.lexc.md 

# Acronyms
[Original file](https://github.com/giellalt/lang-vep/blob/main/src/fst/stems/acronyms.lexc)

Veps acronyms ...

**LEXICON Acronym** 

**LEXICON acr2-cyr** 

**LEXICON acr3-cyr** 

**LEXICON acr4-cyr** 

**LEXICON acr5-cyr** 

**LEXICON acr3-lat** 

**LEXICON acr4-lat** 

**LEXICON acr5-lat** 

**LEXICON acros** 

**LEXICON acrotag** 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/acronyms.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/stems/acronyms.lexc)</small>

---

# src-fst-morphology-stems-adjectives_newwords.lexc.md 

# New adjectives for Veps
[Original file](https://github.com/giellalt/lang-vep/blob/main/src/fst/stems/adjectives_newwords.lexc)

This is where new words are added as lexc entries before they are 
added to the xml source files.
kala:kala A_ "(eng) fish/(fin) kala|fisu/(rus) рыба" ;

**LEXICON A_NEWWORDS** 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adjectives_newwords.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/stems/adjectives_newwords.lexc)</small>

---

# src-fst-morphology-stems-nouns_newwords.lexc.md 

# Newwords (nouns)

This is where new words are added as lexc entries before they are 
added to the xml source files.
kala:kala N_ "(eng) fish/(fin) kala|fisu/(rus) рыба" ;

**LEXICON N_NEWWORDS

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/nouns_newwords.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/stems/nouns_newwords.lexc)</small>

---

# src-fst-morphology-stems-numerals.lexc.md 

# Veps numerals

Numerals have been split in three sections, the compounding parts
of cardinals and ordinals, and the non-compounding ones:

* Numeral examples:*
* *kaksikymmentäkolmetuhatta:* `kaksi+Num+Sg+Nom#kymmenen+Num+Sg+Par#kolme+Num+Sg+Nom#tuhat+Num+Sg+Par` (Eng. ! 23,000)
* *kakskymmentäkolmetuhatta:* `kaksi+Num+Sg+Nom#kymmenen+Num+Sg+Par#kolme+Num+Sg+Nom#tuhat+Num+Sg+Par`
* *kahđessađasneljes:* `kahđes+A+Ord+Sg+Nom#sađas+A+Ord+Sg+Nom#neljes+A+Ord+Sg+Nom` (Eng. ! 204rd)
* *viitisenkymmentä:* `viitisen+Num#kymmentä` (Eng. ! 50-ish)

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/numerals.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/stems/numerals.lexc)</small>

---

# src-fst-morphology-stems-pronouns.lexc.md 

# Pronouns

**LEXICON pronouns** = contains the 6 personal

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/pronouns.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/stems/pronouns.lexc)</small>

---

# src-fst-morphology-stems-propernouns.lexc.md 



**LEXICON propernouns** =

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/propernouns.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/stems/propernouns.lexc)</small>

---

# src-fst-morphology-stems-propernouns_newwords.lexc.md 

This is where new words are added as lexc entries before they are 
added to the Verdd source files.
kala:kala N_ "(eng) fish/(fin) kala|fisu/(rus) рыба" ;

**LEXICON PROP_NEWWORDS** = 
ADD NOUNS BELOW

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/propernouns_newwords.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/stems/propernouns_newwords.lexc)</small>

---

# src-fst-morphology-stems-verbs_newwords.lexc.md 

# Veps verbs (newwords)
[Original file](https://github.com/giellalt/lang-vep/blob/main/src/fst/stems/verbs_newwords.lexc)

This is where new words are added as lexc entries before they are 
added to the xml source files.
avaita:avai V_ "" ;

**RULE: V_NEWWORDS** = 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/verbs_newwords.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/stems/verbs_newwords.lexc)</small>

---

# src-fst-phonetics-txt2ipa.xfscript.md 



retroflex plosive, voiceless			t`  ʈ	    0288, 648 (` = ASCII 096)
retroflex plosive, voiced			d`	ɖ		0256, 598
labiodental nasal					F 	ɱ		0271, 625
retroflex nasal						n` 	ɳ		0273, 627
palatal nasal						J 	ɲ		0272, 626
velar nasal							N 	ŋ		014B, 331
uvular nasal							N\	ɴ		0274, 628
	
bilabial trill						B\ 	ʙ		0299, 665
uvular trill							R\ 	ʀ		0280, 640
alveolar tap							4	ɾ		027E, 638
retroflex flap						r` 	ɽ		027D, 637
bilabial fricative, voiceless		p\ 	ɸ		0278, 632
bilabial fricative, voiced			B 	β		03B2, 946
dental fricative, voiceless			T 	θ		03B8, 952
dental fricative, voiced				D 	ð		00F0, 240
postalveolar fricative, voiceless	S	ʃ		0283, 643
postalveolar fricative, voiced		Z 	ʒ		0292, 658
retroflex fricative, voiceless		s` 	ʂ		0282, 642
retroflex fricative, voiced			z` 	ʐ		0290, 656
palatal fricative, voiceless			C 	ç		00E7, 231
palatal fricative, voiced			j\ 	ʝ		029D, 669
velar fricative, voiced	        	G 	ɣ		0263, 611
uvular fricative, voiceless			X	χ		03C7, 967
uvular fricative, voiced				R 	ʁ		0281, 641
pharyngeal fricative, voiceless		X\ 	ħ		0127, 295
pharyngeal fricative, voiced			?\ 	ʕ		0295, 661
glottal fricative, voiced			h\	ɦ		0266, 614

alveolar lateral fricative, vl.		K 
alveolar lateral fricative, vd.		K\

labiodental approximant				P (or v\) 
alveolar approximant					r\ 
retroflex approximant				r\` 
velar approximant					M\

retroflex lateral approximant		l` 
palatal lateral approximant			L 
velar lateral approximant			L\
Clicks

bilabial								O\	(O = capital letter) 
dental								|\
(post)alveolar						!\ 
palatoalveolar						=\ 
alveolar lateral						|\|\
Ejectives, implosives

ejective								_>	e.g. ejective p		p_>
implosive							_<	e.g. implosive b	b_<
Vowels

close back unrounded					M
close central unrounded 				1 
close central rounded				} 
lax i								I 
lax y								Y 
lax u								U

close-mid front rounded				2 
close-mid central unrounded			@\ 
close-mid central rounded			8 
close-mid back unrounded				7

schwa	ə							@

open-mid front unrounded				E 
open-mid front rounded				9
open-mid central unrounded			3 
open-mid central rounded				3\ 
open-mid back unrounded				V 
open-mid back rounded				O

ash (ae digraph)						{ 
open schwa (turned a)				6

open front rounded					& 
open back unrounded	        		A 
open back rounded					Q
Other symbols

voiceless labial-velar fricative		W 
voiced labial-palatal approx.		H 
voiceless epiglottal fricative		H\ 
voiced epiglottal fricative			<\ 
epiglottal plosive					>\

alveolo-palatal fricative, vl. 		s\ 
alveolo-palatal fricative, voiced	z\ 
alveolar lateral flap				l\ 
simultaneous S and x					x\ 
tie bar								_
Suprasegmentals

primary stress						" 
secondary stress						% 
long									: 
half-long							:\ 
extra-short							_X 
linking mark							-\
Tones and word accents

level extra high						_T 
level high							_H
level mid							_M 
level low							_L 
level extra low						_B
downstep								! 
upstep								^	(caret, circumflex)

contour, rising						 
contour, falling						_F 
contour, high rising					_H_T 
contour, low rising					_B_L 

contour, rising-falling				_R_F 
(NB Instead of being written as diacritics with _, all prosodic 
marks can alternatively be placed in a separate tier, set off 
by < >, as recommended for the next two symbols.)
global rise						<R> 
global fall						<F>
Diacritics						
									
voiceless						_0	(0 = figure), e.g. n_0
voiced							_v 
aspirated						_h 
more rounded						_O	(O = letter) 
less rounded						_c 
advanced							_+
retracted						_-
centralized						_" 
syllabic							=	(or _=) e.g. n= (or n_=) 
non-syllabic						_^ 
rhoticity						`
									
breathy voiced					_t 
creaky voiced					_k
linguolabial						_N 
labialized						_w 
palatalized						'	(or _j) e.g. t' (or t_j) 
velarized						_G 
pharyngealized					_?\
									
dental							_d 
apical							_a 
laminal							_m
nasalized						~	(or _~) e.g. A~ (or A_~) 
nasal release					_n
lateral release					_l 
no audible release				_}

velarized or pharyngealized		_e 
velarized l, alternatively		5 
raised							_r 
lowered							_o 
advanced tongue root				_A 
retracted tongue root			_q

* * *

<small>This (part of) documentation was generated from [src/fst/phonetics/txt2ipa.xfscript](https://github.com/giellalt/lang-vep/blob/main/src/fst/phonetics/txt2ipa.xfscript)</small>

---

# src-fst-transcriptions-transcriptor-abbrevs2text.lexc.md 



We describe here how abbreviations are in Veps are read out, e.g.
for text-to-speech systems.

For example:

* s.:syntynyt # ;  
* os.:omaa% sukua # ;  
* v.:vuosi # ;  
* v.:vuonna # ;  
* esim.:esimerkki # ; 
* esim.:esimerkiksi # ; 

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-abbrevs2text.lexc](https://github.com/giellalt/lang-vep/blob/main/src/fst/transcriptions/transcriptor-abbrevs2text.lexc)</small>

---

# tools-grammarcheckers-grammarchecker.cg3.md 


[ L A N G U A G E ]  G R A M M A R   C H E C K E R

# DELIMITERS

# TAGS AND SETS

## Tags

This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.

### Beginning and end of sentence
BOS
EOS

### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB
LEFT
RIGHT
WEB
PPUNCT
PUNCT

COMMA
¶

### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall

### Tags for morphosyntactic properties

Nom
Acc
Gen
Ill
Loc
Com
Ess
Ess
Sg
Du
Pl
Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp
Superl
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Du1
Du2
Du3
Pl1
Pl2
Pl3
Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess

Err/Orth

### Semantic tags

Sem/Act
Sem/Ani
Sem/Atr
Sem/Body
Sem/Clth
Sem/Domain
Sem/Feat-phys
Sem/Fem
Sem/Group
Sem/Lang
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt

HUMAN

PROP-ATTR
PROP-SUR

TIME-N-SET

###  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X

## Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.

### Sets for Single-word sets

INITIAL

### Sets for word or not

WORD
NOT-COMMA

### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

### Verb sets

NOT-V

### Sets for finiteness and mood

REAL-NEG

MOOD-V

NOT-PRFPRC

### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V

### Pronoun sets

### Adjectival sets and their complements

### Adverbial sets and their complements

### Sets of elements with common syntactic behaviour

### NP sets defined according to their morphosyntactic features

### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

### Border sets and their complements

### Grammarchecker sets

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-vep/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>

---

# tools-tokenisers-tokeniser-disamb-gt-desc.pmscript.md 

# Tokeniser for vep

Usage:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1. unknown word-like forms, and
2. unmatched strings
We want to give 1) a match, but let 2) be treated specially by
`hfst-tokenise -a`
Unknowns are made of:
* lower-case ASCII
* upper-case ASCII
* select extended latin symbols
ASCII digits
* select symbols
* Combining diacritics as individual symbols,
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

## Unknown handling
Unknowns are tagged ?? and treated specially with `hfst-tokenise`
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-disamb-gt-desc.pmscript](https://github.com/giellalt/lang-vep/blob/main/tools/tokenisers/tokeniser-disamb-gt-desc.pmscript)</small>

---

# tools-tokenisers-tokeniser-gramcheck-gt-desc.pmscript.md 

# Grammar checker tokenisation for vep

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript](https://github.com/giellalt/lang-vep/blob/main/tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript)</small>

---

# tools-tokenisers-tokeniser-tts-cggt-desc.pmscript.md 

# TTS tokenisation for smj

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```sh
make
echo "ja, ja" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```sh
echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa \
boasttu olmmoš, man mielde lahtuid." \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "márffibiillagáffe" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://kitwiki.csc.fi/twiki/bin/view/KitWiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Needs hfst-tokenise to output things differently depending on the tag they get

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-tts-cggt-desc.pmscript](https://github.com/giellalt/lang-vep/blob/main/tools/tokenisers/tokeniser-tts-cggt-desc.pmscript)</small>
