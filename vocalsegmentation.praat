name$ = selected$("TextGrid")

selectObject("TextGrid " + name$)

numint = do("Get number of intervals...", 7)

j=1

for i to numint
    label$ = do$("Get label of interval...", 7, i)
    if label$ != ""
        start[j] = do("Get start point...", 7, i)
        end[j] = do("Get end point...", 7, i)
        j=j+1
    endif
endfor

selectObject("Sound " + name$)
do("Convert to mono")
selectObject("Sound " + name$ + "_mono")
do("View & Edit")
editor Sound 'name$'_mono
    do("Select...", start[1], end[1])
    do("Extract selected sound (time from 0)")
    do("Close")
endeditor

for k from 2 to j-1
    selectObject("Sound " + name$ + "_mono")
    do("View & Edit")
    editor Sound 'name$'_mono
        do("Select...", start[k], end[k])
        do("Copy selection to Sound clipboard")
        do("Close")
    endeditor

    selectObject("Sound untitled")
    end = do("Get end time")
    do("View & Edit")
    editor Sound untitled
        do("Move cursor to...", end)
        do("Paste after selection")
        do("Close")
    endeditor
endfor

selectObject("Sound untitled")
do("Save as WAV file...", name$ + " (vocal).wav")