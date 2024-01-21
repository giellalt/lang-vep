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

**RULE: Stem-internal vowel loss** = 
**Stem-internal vowel loss**

**RULE: QAO1 Sg Rule** = 

**RULE: QAO1 Pl Rule** = 

* *nado>hV1*
* *nado>ho*

* *marj>hV1*
* *marj>ha*

### Consonant change 

**devoicing of adjecent stops** vauged: vauktan

**d:z in vodes, voziš**  

**d:t in voden, vot**  

**d:0 in voden, vot**  

**z:s in meletuz:meletust**  

**’:0 before vowels**  

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/phonology.twolc](https://github.com/giellalt/lang-vep/blob/main/src/fst/morphology/phonology.twolc)</small>

---

