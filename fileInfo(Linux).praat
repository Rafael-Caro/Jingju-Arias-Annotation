fileName$ = selected$ ("TextGrid") + ".txt"

deleteFile (fileName$)

for i to 5
    title$ = Get tier name... i
    content$ = Get label of interval... i 1
    line$ = title$ + ": " + content$ + newline$
    line$ >> 'fileName$'
endfor

newline$ >> 'fileName$'

sq$ = Get tier name... 6
sqline$ = sq$ + ": "
sqnum = Get number of intervals... 6
for i to sqnum
    sqlab$ = Get label of interval... 6 i
    if sqlab$ != ""
        sqline$ = sqline$ + sqlab$ + "、"
    endif
endfor
sqlinefinal$ = left$(sqline$, length(sqline$)-1)
sqlinefinal$ >> 'fileName$'

newline$ >> 'fileName$'

bs$ = Get tier name... 7
bsline$ = bs$ + ": "
bsnum = Get number of intervals... 7
for i to bsnum
    bslab$ = Get label of interval... 7 i
    if bslab$ != ""
        bsline$ = bsline$ + bslab$ + "、"
    endif
endfor
bslinefinal$ = left$(bsline$, length(bsline$)-1)
bslinefinal$ >> 'fileName$'