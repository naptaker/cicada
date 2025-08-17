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
  \repeat volta 2 {
    s1*8 \break
  }
  \break
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
  \break
  \section
}

\gridPutMusic "meta" 6 {
  \gridGetCellMusic "meta" 3
  \jump "D.S. al Coda"
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
  s1*8 \pageBreak
  s1*8 \break
  s1*8
  \bar "||"
  \break
  \section
}

\gridPutMusic "meta" 9 {
  \sectionLabel \markup \rounded-box "E"
  s1*2
  s1*2
  s1*2
  s1*2
  \break
  s1
  %% \key fis \major
  s1
  %% \key gis \major
  s1
  \fine
}
