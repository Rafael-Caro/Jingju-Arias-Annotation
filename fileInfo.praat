# Creates a file with all the information contained in an individual aria file.

fileName$ = selected$ ("TextGrid") + ".txt"

writeFile (fileName$, "")

for i to 5
    line$ = do$ ("Get tier name...", i) + ": " + do$ ("Get label of interval...", i, 1)
    appendFileLine (fileName$, line$)
endfor

appendFileLine (fileName$, "")

shengqiang$ = do$ ("Get tier name...", 6) + ": "
for i to do ("Get number of intervals...", 6)
    label$ = do$ ("Get label of interval...", 6, i)
    if label$ != ""
        shengqiang$ = shengqiang$ + label$
    endif
endfor
appendFileLine (fileName$, shengqiang$)

banshi$ = do$ ("Get tier name...", 7) + ": "
for i to do ("Get number of intervals...", 7)
    label$ = do$ ("Get label of interval...", 7, i)
    if label$ != ""
        banshi$ = banshi$ + label$ + "、"
    endif
endfor
appendFileLine (fileName$, left$(banshi$, length(banshi$)-1))

appendFileLine (fileName$, "")

appendFileLine (fileName$, do$ ("Get tier name...", 8) + ":")
lines = do ("Get number of intervals...", 8)
for i to lines
    label$ = do$ ("Get label of interval...", 8, i)
    if label$ != ""
        appendFileLine (fileName$, label$)
    endif
endfor

appendFileLine (fileName$, "")

appendFileLine (fileName$, do$ ("Get tier name...", 9) + ":")
for i to lines
    label$ = do$ ("Get label of interval...", 8, i)
    if label$ != ""
        syllablesLine$ = ""
        lineStart = do ("Get start point...", 8, i)
        lineEnd = do ("Get end point...", 8, i)
        syllablesLineStart = do ("Get interval at time...", 9, lineStart)
        syllablesLineEnd = do ("Get interval at time...", 9, lineEnd) - 1
        for j from syllablesLineStart to syllablesLineEnd
            syllable$ = do$ ("Get label of interval...", 9, j)
            if syllable$ != ""
                syllablesLine$ = syllablesLine$ + syllable$
            endif
        endfor
        appendFileLine (fileName$, syllablesLine$)
    endif
endfor

appendFileLine (fileName$, "")
luogu$ = do$ ("Get tier name...", 10) + ": "
for i to do ("Get number of intervals...", 10)
    label$ = do$ ("Get label of interval...", 10, i)
    if label$ != ""
        luogu$ = luogu$ + label$ + "、"
    endif
endfor
appendFileLine (fileName$, left$(luogu$, length(luogu$)-1))