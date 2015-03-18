### Returns an audio file with only the vocal part, maintaining the
### instrumental part as silence.

### An audio and a textgrid has to be selected.

select all

soundName$ = selected$ ("Sound")
textGridName$ = selected$ ("TextGrid")

selectObject ("TextGrid " + textGridName$)

n = do ("Get number of intervals...", 9)

for i to n
    interval$ = do$ ("Get label of interval...", 9, i)
    if interval$ == ""
        start = do ("Get start point...", 9, i)
        end = do ("Get end point...", 9, i)
        selectObject ("Sound " + soundName$)
        do ("Set part to zero...", start, end, "at exactly these times")
        selectObject ("TextGrid " + textGridName$)
    endif
endfor