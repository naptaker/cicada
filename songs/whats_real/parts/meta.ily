\gridPutMusic "meta" 1 {
  \global
  %% \sectionLabel \markup \rounded-box "Intro"
  s1*2
}

\gridPutMusic "meta" 2 {
  \repeat volta 2 {
    s1*8
  }
  \break
  \section
}


\gridPutMusic "meta" 3 {
  %% https://lists.nongnu.org/archive/html/lilypond-devel/2022-08/msg00068.html
  \sectionLabel \markup \rounded-box "A"
  \repeat volta 2 {
    s1*6^\segno |
    s1^\coda |
    s1 |
  }
  \break
  \section
}

\gridPutMusic "meta" 4 {
  \sectionLabel \markup \rounded-box "B"
  \repeat volta 2 {
    s1*8 |
  }
  \break
  \section
}

\gridPutMusic "meta" 5 {
  \sectionLabel \markup \rounded-box "C"
  \repeat volta 4 {
    s1*3 |
    \alternative {
      \volta 1,2,3 {
        s1 |
      }
      \volta 4 {
        s1 |
      }
    }
  }
  \jump \markup \tiny "D.S 3 v. e poi la Coda"
  \section
  \break
}

\gridPutMusic "meta" 6 {
  \tweak Y-offset #7.0
  \sectionLabel \markup \rounded-box "Coda"
  s1*3
  \bar "|."
}
