\gridPutMusic "meta" 1 {
  \sectionLabel \markup \rounded-box "A"
  \global
  \Key
  \repeat unfold 2 {
    s1*4 \break
  }
  \repeat unfold 2 {
    s1*4 \break
  }
  \section
  \pageBreak
}

\gridPutMusic "meta" 2 {
  \sectionLabel \markup \rounded-box "B"
  s1*4 \break
  \section
}

\gridPutMusic "meta" 3 {
  \sectionLabel \markup \rounded-box "A′"
  s1*4 \break
  s1*4 \break
  s1*4 \break
  \section
  \pageBreak
}

\gridPutMusic "meta" 4 {
  %% \omit \sectionLabel
  \gridGetCellMusic "meta" 2
}

\gridPutMusic "meta" 5 {
  \sectionLabel \markup \rounded-box "C"
  s1*4 \break
  s1*4
  \section
}

\gridPutMusic "meta" 6 {
  \noPageBreak
  \gridGetCellMusic "meta" 3
  \noPageBreak
}

\gridPutMusic "meta" 7 {
  \gridGetCellMusic "meta" 2
}

\gridPutMusic "meta" 8 {
  \gridGetCellMusic "meta" 3
}

\gridPutMusic "meta" 9 {
  \gridGetCellMusic "meta" 2
}

\gridPutMusic "meta" 10 {
  \gridGetCellMusic "meta" 5
  \noPageBreak
}

\gridPutMusic "meta" 11 {
  \gridGetCellMusic "meta" 5
}

\gridPutMusic "meta" 12 {
  \pageBreak
  \sectionLabel \markup \rounded-box "D"
  \once \override Score.MetronomeMark.extra-offset = #'(0 . -3)
  \tempo "Andante" 4 = 80
  s1*4 \break
  s1*4 \break
  s1*4 \break
  \section
}

\gridPutMusic "meta" 13 {
  \sectionLabel \markup \rounded-box "E"
  s1*4
  \break
  s2
  s2
  s1
  \fine
}
