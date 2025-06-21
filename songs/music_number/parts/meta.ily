\gridPutMusic "meta" 1 {
  \mark \markup \rounded-box "A"
  \global
  \Key
  \repeat unfold 2 {
    s1*4 \break
  }
  \bar "||"
  \repeat unfold 2 {
    s1*4 \break
  }
}

\gridPutMusic "meta" 2 {
  \mark \markup \rounded-box "B"
  s1*4 \break
  \bar "||"
  \break
}

\gridPutMusic "meta" 3 {
  \mark \markup \rounded-box "A′"
  s1*4 \break
  \repeat volta 2 {
  s1*8 \break
  }
  %% \bar "||"
  \break
}

\gridPutMusic "meta" 4 {
  \mark \markup \rounded-box "C"
  s1*4 \break
  s1*4
  \bar "||"
  \break
}

\gridPutMusic "meta" 5 {
  \mark \markup \rounded-box "D"
  s1*8 \pageBreak
  s1*8 \break
  s1*8
  \bar "||"
  \break
}

\gridPutMusic "meta" 6 {
  \mark \markup \rounded-box "E"
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
  \bar "|."
}

