BEGIN {nb_annonce=0}
/ads AdsCount_total-ads__9aTXA">/ {
	split($0, ar, /ads AdsCount_total-ads__9aTXA">/)
	split(ar[2], ar1, /<\/p>/)
	    gsub("\r", "", ar1[1])
        gsub("[^0-9]", "", ar1[1])
        nb_annonce=ar1[1]
}
END{
        print ""nb_annonce""
}