\gridPutMusic "meta" 1 {
  %% \sectionLabel \markup \rounded-box "A"
  \global
  \Key
  \repeat unfold 2 {
    s1*4 \break
  }
  \bar "||"
  \repeat unfold 2 {
    s1*4 \break
  }
  \section
  \pageBreak
}

\gridPutMusic "meta" 2 {
  %% \sectionLabel \markup \rounded-box "B"
  \segnoMark \default
  s1*4 \break
  \bar "||"
  \break
  \section
}

\gridPutMusic "meta" 3 {
  %% \sectionLabel \markup \rounded-box "A′"
  s1*4 \break
  s1*4 \break
  s1*4 \break
  \section
}

\gridPutMusic "meta" 4 {
  \pageBreak
  \omit \segnoMark \default
  \gridGetCellMusic "meta" 2
}

\gridPutMusic "meta" 5 {
  %% \sectionLabel \markup \rounded-box "C"
  s1*4 \break
  s1*4
  \codaMark \default
  \bar "||"
  \pageBreak
  \section
}

\gridPutMusic "meta" 6 {
  \gridGetCellMusic "meta" 3
  \jump "D.S. al Coda"
  \pageBreak
}

\gridPutMusic "meta" 7 {
  %% \sectionLabel \markup \rounded-box "C"
  \sectionLabel "Coda"
  s1
  s1*3 \break
  s1*4
  \bar "||"
  \break
  \section
}

\gridPutMusic "meta" 8 {
  \sectionLabel \markup \rounded-box "D"
  \once \override Score.MetronomeMark.extra-offset = #'(0 . -3)
  \tempo "Andante" 4 = 80
  s1*4 \break
  s1*4 \pageBreak
  s1*4 \bar "||"
  \break
  \section
}

\gridPutMusic "meta" 9 {
  \sectionLabel \markup \rounded-box "E"
  s1*4
  \break
  s2
  %% \key fis \major
  s2
  %% \key gis \major
  s1
  \fine
}
