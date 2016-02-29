# Uvod do "swingu"

###### 1. Co je to inzinierstvo?
*__Systematicky__ a kreativny __pristup k rieseniu__ (praktickych) __problemov__, pricom __riesenia__ tychto __problemov__ sa snazi __cerpat uz z existujucich poznatkov a osvecenych postupov__. __Nove problemy riesi__ ich __syntezou__*

###### 2. Co vsetko zahrname pod pojem softver?
1. *__Programy__ (aplikacie, resp. ich zdrojove kody)*
	* *__Postupy__ ako tieto programy pouzivat*
		* *__Dokumentaciu__ k tymto postupom a programom*
		* *__spolu__ s ich:
			* *__Specifikaciaou__*
			* *__Scenarmi pouzitia__*
			* *__Testovacimi scenarmi__*
			* *__Opismi navrhu__*
			* *__Testovacimi udajmi__*
			* *__Priruckami__*
			
###### 3. Co je to "Swing"?
* *__Disciplina__, systematicky sa zaoberajuca:*
	* __vyvojom__ softveru
		* Cinnosti vykonane predtym ako sa uvedie do prevadzky
	* jeho __prevadzkou__
	* __udrzbou__
		* Cinnosti administracie a uprav sw pocas toho ako je v prevadzke
	* a __vyradenim__
		* Odtranenie sw z prevadzky
		
###### 4. Aka stara je disciplina sw inzinierstvo?
* *1968 - tzv __softverova kriza__, kedy si mudre hlavy(inzinieri a vedci) uvedomili, ze vela sw projektov sa stava neuspesnych*
* *tak si povedali, ze vznikne disciplina, ktora sa bude zaoberat pristupmi k __tvorbe__, __udrzbe__, __prevadzke__ a __vyradeniu__ sw z prevadzky*

###### 5. Co je to sw projekt?
* *Projekt je __docasne usilie__, ktore si kladie za __ciel vytvorenie__ urciteho __vyrobku__ alebo __sluzby__*

###### 6. Kedy je sw projekt uspesny?
* *Ak splni vsetky __poziadavky__ do __stanoveneho terminu__ a v __stanovenom rozpocte__*

###### 7. Kedy je sw povazovany za uspesny?
* *Ak __naplna potreby__ svojich __pouzivatelov__*

###### 8. Od coho zavisi, ci bude sw projekt uspesny?
* *__stanoveny plan__ (cinnosti, ktore sa maju vykonat spolu s casom a zodpovednostami*
* *__stanoveny rozpocet__*
* *___stanovenie roli_ a _zodpovednosti ucastnikov_ projektu*

###### 9. Aky je rozdiel medzi vyvojom sw a programovanim?
* *Programovanie je len __jednou z aktivit vyvoja sw__.*
* *Programovanie je __nutnou podmienkou__ (ale __nie postacujucou__) podmienkou __vzniku sw__*
* *Programovaniu predchadza:*
	* __zber a dokumentovanie poziadaviek__ na vytvarany sw
	* vytvorenie a postupne zjemnovanie navrhu sw spolu s jeho testovanim
* *V ramci "swingu" rozlisujeme (a chapeme ako dve rozdielne veci):*
	* *__vyvoj sw__ a*
	* *__manazment vyvoja sw__*

###### 10. Ake roly rozlisujeme pocas zivota sw?
* *Neda sa to presne urcit a kazda spolocnost si to moze definovat po svojom*
* *__ALE__ takym zakladnym a najcastejsim oznacovanim (rozdelenim) roli je podla zivotneho cyklu sw:*
	* analytik
	* navrhar
	* programator (developer, svk: vyvojar - niekedy pod neho spada aj navrh, testovanie, ci dokonca analyza)
	* tester
	* udrzbar (maintance person)
	* operatori
	* administratori
	* *dalsi podporny personal*
	* *specializovane role:*
		* architekt (architektura sw - celkovy pohlad na sw)
		* navrhar pouzivatelskych rozhrani (graficky navrh a styl rozhrania)
		* konzultant (specialista poskytujuci odborny dozor, mentorovanie a odovzdavanie skusenosti - spravidla na kratsie casove obdobie)
	* *manazerske roly:*
		* projektovy manazer (mensie projekty)
		* manazer kvality (vacsie projekty)
		* manazer planovania (vacsie projekty)
		* manazer rizik (vacsie projekty)
	* zakaznik 
	* klienti sw
		* pouzivatel
		
###### 11. Aky je rozdiel medzi zakaznikom a pouzivatelom?
* Zakaznik je
	* osoba, alebo organizacia, ktora ma na vytvoreni a fungovani sw primarny zaujem
	* vklada don svoje financie
* Pouzivatelom je
	* osoba, ktora so sw interaguje
* zasadny rozdiel je v zaujime na existencii sw.
	* zakaznik ma eminentny zaujem
	* pouzivatel ho moze mat ale nemusi
		
###### 12. Co je to program (v kontexte "swingu")?
* Pocitacom vykonatelny postup, mnozina instrukcii vykonavana pocitacom na splnenie nejakej ulohy

###### 13. Aky je rozdiel medzi programom a sw produktom?
* Sw produkt je program upravny do takej podoby, ze je vyuzitelny clovekom inym ako je autor programu
* Sw produkt casto upravuu iny ludia ako autor(i)

###### 14. Co je to system?
* Je "vec", ktora je poskladana z viacerych casti, pricom jednotilve casti spolupracuju (interaguju), tak aby splnili urcity spolocny ucel

###### 15. Co je to programovy system?
* sustava viacerych spolupracujucich programov. (nema produktovu kvalitu)

###### 16. Co je to softverovy system?
* Sustava viacerych spolupracujucich softverov. (ma produktovu kvalitu)

###### 17. Porovnajte zdroje potrebne na vyvoj programu a vyvoj sw systemu
* Vytvorenie produktu (sw systemu) vyzaduje az 3-nasobok usilia oproti vytvoreniu programu.
	* pretoze produkt musi splnat viacere kvalitativne standardy, aby sme ho mohli realne predavat

###### 18. Porovnajste zdroje potrebne na vyvoj __jednoducheho__ programu a softveroveho systemu
* Takmer jednoradovy rozdiel

###### 19. Co je to model vyvoja softveru? Ake dva zakladne modely rozlisujeme?
* Hrubo definovany postup, urcujuci ake cinnosti a v akom poradi vykonavame pri vyvoji sw.
* Rozlisujeme 2 fundamentalne odlisne typy modelov vyvoja sw:
	* Linearny model
		* Najznamejsi zastupca - VODOPADOVY MODEL
		* V ramci neho postupne vykonavame cinnosti, analyzi, specifikacie, navrhu, implementacie a testovania sw.
		* Kazdou fazou tohto modelu prechadzame iba raz
	* Iterativno-Inkrementalny model
		* V ramci neho prechadzame cez rovnake fazy viac krat
		* zaoberame sa vzdy len nejakou castou sw
		
###### 20. Vysvetlite pojem "inkrementalne", resp. "inkrement" v suvislosti s vyvojom softveru
* *__Inkrement__ je nejaky __prirastok__ k sw*
	* *Moze ist o __novu__ funkcionalitu, alebo __rozsirenie__ uz existujucej, pricom v oboch pripadoch uvazujeme o malych a velkych zmenach(funkcionalitach)*
	* *Nemusi ist len o funkctionalitu, ale aj o kus kodu, dokumentu, databazy*\
* *__Inkrementalny__ vyvoj softveru je vyrvaranie sw pridavanim dalsich jeho casti.*
		
###### 21. Vysvetlite pojem "iterativne", resp. "iteracia" v suvislosti s vyvojom sw
* *__Iteracia__ znamena opakovanie.*
* *V suvislosti v vyvojom sw __Iterativnost__ znamena, ze opakovanie prechadzame (vsetkymi) fazami vyvoja softveru (analyza, navrh, implementacia, testovanie, ...) s cielom postupneho zlepsovania vysledneho sw.*
	* *Jedna iteracia je potom __jeden prechod__ tymto cyklom.*

###### 22. Preco je vyhodne pristupovat k vyvoju softveru inkrementalne?
* *Pri inkrementalnom postupe vytvarania sw mame tieto vyhody:*
	* *__Zjednodusenie zlozitosti__*
		* Dekompoziciou (rozdelenim problemu na mensie casti) si cely projekt vieme zjednodusit
	* *__Skorsie testovanie jednotlivych prirastkov__*
		* Kazdym prirastkom overujeme sw, co v podstate tiez prispieva k zjednodusovaniu celej prace na projekte
	* *__Priradenie priorit jednotlivym prirastkom__*
		* Najskor mozeme pracovat na tych prisrastkoch, ktore maju vyssiu prioritu a ukazat tak produkt zakaznikovi o nieco skor (znizuje to aj mieru rizika, nemusi vsak mieru nakladov - viacero testovani, dlhsi vyvoj)
###### 23. Preco je vyhodne pristupovat k vyvoju sw iterativne?
* *Pretoze si snizujeme riziko minutia prostriedkov na nieco co v konecne dosledku nebude plne zodpovedat predstave zakaznika*
* *Uz pri prvej iteracii su naklady na projekt v radoch zlomkoch z celkovej ceny, a zaroven mame pribliznu predstavu ako bude sw vyzerat a mozeme ho zakaznikovi prezentovat (s vedomim ze este nejde o finalny produkt, ale iba o "hruby nacrt"*

###### 24. Aka je najvyhodnejsia velkost prirastkov pri inkrementalnom vyvoji sw?
* *Kazdy prirastok by mal byt z pohladu funkcionality __zmysluplny__ (mal by pridavat nejaku funkcionalitu pre pouzivatela), no zaroven mozu existovat prisrastky, ktore si vyzaduju vacsiu obsirnost, no zakaznikovi na prvy pohlad neprinasaju ziadnu funkcionalitu*
* *Kazdy prirastok by mal byt rozmune velky*
* *Prilisna dekompozicia*
	* *sposobuje, ze jednotlive male prirastky moze byt casom velmi  tazke prepojit*
* *Prilisna velkost prirastkov*
	* *dany prirastok je zlozite implementovat (jeho vyvoj trva dlhsie)

###### 25. Ake typy sw produktov podla povodcu specifikacie pozname? a aky je medzi nimi rozdiel?
* *__Zakaznicky__*
	* Povodcom specifikacie je konkretny zakaznik (jeho poziadavky vyplyvaju z jeho potrieb)
* *__Genericky__*
	* Povodcom specifikacie je spolocnost sama
	* Poziadavky su zalozene na potrebach ludi, ktorym sa ma softver predavat

###### 26. 	Uvedte priklady foftverovych produktov generickeho typu
	
###### xx. Co znamen slaba opakovatelnost v tvorbe softveru
* So slabou opakovatelnostou sa stretavame v pripade ak sa snazime pri vytvarani projektu __uplatnit osvedcene postupy__, alebo __znovupouzit existujuci softver__.
* V oboch pripadoch je problem niektoru z danych veci pouzit, pretoze projekt ma ine specifikacie a su teeda nevyhnutne urcite modifikacie.
	
###### xx. 

		22.
		23.
		


	



