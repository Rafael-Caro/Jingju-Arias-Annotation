### Creates tiers for jingju aria annotations.
### Only one sound file must be selected.

do ("To TextGrid...", "aria MBID artist school role-type shengqiang...
    ...banshi lyrics-lines lyrics-syllables luogu", "")

name$ = selected$ ("TextGrid")

plusObject ("Sound " + name$)

do ("View & Edit")