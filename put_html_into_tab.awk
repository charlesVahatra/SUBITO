BEGIN{
	c=0
	# class="index-module_price__N7M2x index-module_small__4SyUf">:prix
	# class="pagination-container:fin
	 # risultati
}
#<a class="listing-block__link" href="/classified/redirect/41921074" target=_blank onclick="javascript:sendClickXiti(null, 'change_site');"><span class="listing-block__title"><span>Fella TS 1603</span></span></a>
/"urls":{"default":"/{
	split($0,ar8,/type="application\/json">/)
	split(ar8[2],ar9,/<\/script><\/body><\/html>/)
	z=split(ar9[1], ar, /"urls":{"default":"/)
	for(a=2;a<=z;a++){
	c++
	# print ar[a]
	split(ar[a], ar1, /"/)
	val["ANNONCE_LINK", c]=ar1[1]
	# https://www.subito.it/auto/opel-corsa-1-2-5-porte-cosmo-11-2011-neopatentati-reggio-emilia-538726779.htm
	gsub(".*-", "", ar1[1])
	gsub("htm", "", ar1[1])
	gsub("[^0-9]", "", ar1[1])
	val["ID_CLIENT", c]=ar1[1]
	#href="/vehicle/3085648" 
	# ,"subject":"PEUGEOT 107 1.0 68 CV 5p Active - 2012",
	#alt="2015 Audi A5"
	split(ar[a],ar4,/,"subject":"/)
	split(ar4[2],ar5,/"/)
	val["NOM", c]=ar5[1]
	# "/price","label":"Prezzo","values":[{"key":"6499","value":"6499 €"
	split(ar[a], ar6,/"\/price","label":"Prezzo","values":\[\{"key":"/)
	# print ar6[2]
	split(ar6[2], ar7, /",/)
	val["PRIX", c]=ar7[1]
	# :"Anno di immatricolazione","values":\[\{"key":"2012","
	split(ar[a], ar8, /"Anno di immatricolazione","values":\[\{"key":"/)
	split(ar8[2], ar9, /,/)
	val["ANNEE", c]=ar9[1]
	# "label":"Km","values":[{"key":"38662","
	split(ar[a], ar10, /\/mileage_scalar","label":"Km","values":\[\{"key":"/)
	split(ar10[2], ar11, /"/)
	val["KM", c]=ar11[1]
	# :"/register_date","label":"Immatricolazione","values":[{"key":"09/2012","value":"09/2012","
	split(ar[a], ar12, /"\/register_date","label":"Immatricolazione","values":\[\{"key":"/)
	split(ar12[2], ar13, /,/)
	# gsub("\/.*", "", ar13[1])
	val["MOIS", c]=ar13[1]
	# ,"geo":{"uri":"/geo","type":"geo","label":"Comune","region":{"id":"8","value":"Emilia-Romagna",
	split(ar[a], ar14, /,"geo":\{"uri":"\/geo","type":"geo","label":"Comune","region":{"id":".","value":"/)
	split(ar14[2], ar15, /,/)
	val["REGION", c]=ar15[1]
	# ,"userId":"100784926",
	split(ar[a], ar16, /"userId":"/)
	split(ar16[2], ar17, /,/)
	val["GARAGE_ID", c]=ar17[1]
	# "uri":"/geo/region"},"city":{"id":"1","value":"B
	split(ar[a], ar18, /"uri":"\/geo\/region"\},"city":\{"id":".","value":"/)
	split(ar18[2], ar19, /,/)
	val["VILLE", c]=ar19[1]
	# "shortName":"BO",
	split(ar[a], ar20, /"shortName":"/)
	split(ar20[2], ar21, /,/)
	val["DEPARTEMENT", c]=ar21[1]
	# "town":{"id":"037006",
	split(ar[a], ar22, /"town":\{"id":"/)
	split(ar22[2], ar23, /,/)
	val["CP", c]=ar23[1]
	}
}

END {
	max_c=c	
	for(c=1;c<=max_c;c++) {
		for(j=1;j<=max_i;j++) {
			gsub("\r|\t", "", val[title[j] ,c])
			gsub("\"", "", val[title[j] ,c])
			#gsub("[\\]", "", val[title[j] ,c])
			printf("%s\t", trim(val[title[j] ,c]))
			#printf("%s=\"%s\"\t", title[j], trim(val[title[j] ,c]))
		}
		printf("\n")
	}
}
function ltrim(s) {
	gsub("^[ \t]+", "", s);
	return s
}

function rtrim(s) {
	gsub("[ \t]+$", "", s);
	return s
}

function trim(s) {
	return rtrim(ltrim(s));
}
