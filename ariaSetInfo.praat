# Creates a single text file displaying the information for all the arias' TextGrid files selected, containing:
    # title of the text-grid file
    # title of the aria
    # MBID
    # Name of the artist
    # School of the artist
    # Role-type that sings the aria
    # Shengqiang(s) in the aria
    # Banshi(s) in the aria
    # Percussion patterns

n = numberOfSelected("TextGrid")

file$ = "ariasInfo.txt"
writeFile (file$, "")

for x to n
    selectObject (x)

    fileName$ = selected$ ("TextGrid")

    appendFileLine (file$, fileName$)

    for i to 5
        line$ = do$ ("Get tier name...", i) + ": " + do$ ("Get label of interval...", i, 1)
        appendFileLine (file$, line$)
    endfor

    shengqiang$ = do$ ("Get tier name...", 6) + ": "
    for i to do ("Get number of intervals...", 6)
        label$ = do$ ("Get label of interval...", 6, i)
        if label$ != ""
            shengqiang$ = shengqiang$ + label$
        endif
    endfor
    appendFileLine (file$, shengqiang$)

    banshi$ = do$ ("Get tier name...", 7) + ": "
    for i to do ("Get number of intervals...", 7)
        label$ = do$ ("Get label of interval...", 7, i)
        if label$ != ""
            banshi$ = banshi$ + label$ + "、"
        endif
    endfor
    appendFileLine (file$, left$(banshi$, length(banshi$)-1))

    luogu$ = do$ ("Get tier name...", 10) + ": "
    for i to do ("Get number of intervals...", 10)
        label$ = do$ ("Get label of interval...", 10, i)
        if label$ != ""
            luogu$ = luogu$ + label$ + "、"
        endif
    endfor
    if luogu$ != do$ ("Get tier name...", 10) + ": "
        appendFileLine (file$, left$(luogu$, length(luogu$)-1))
    else
        appendFileLine (file$, do$ ("Get tier name...", 10) + ": no percussion pattern identified")
    endif

endfor