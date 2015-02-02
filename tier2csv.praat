# Creates a csv file for each of the following tiers of an annotated aria:
# shengqiang, banshi, lyrics-lines, lyrics-syllables, luogu

name1$ = selected$("TextGrid")

for i from 6 to 10
    name2$ = do$("Get tier name...", i)
    name$ = name1$ + "-" + name2$ + ".csv"
    writeFile(name$, "")
    n = do("Get number of intervals...", i)
    for j to n
        w$ = do$("Get label of interval...", i, j)
        if w$ != ""
            v$ = replace$ (w$, "ps", "", 0)
            a = do("Get start point...", i, j)
            z = do("Get end point...", i, j)
            appendFileLine(name$, v$ + "," + string$(a) + "," + string$(z))
        endif
    endfor
endfor