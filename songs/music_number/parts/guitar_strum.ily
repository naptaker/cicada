\gridPutMusic "guitar strum" 2 \relative c {
  \reduceChords {
    \include "notes/guitar-II.ily"
  }
  \section
}

\gridPutMusic "guitar strum" 4 \relative c {
  \gridGetCellMusic "guitar strum" 2
}

\gridPutMusic "guitar strum" 8 \relative c {
  \reduceChords {
    \repeat unfold 4 {
      <gis, dis' gis c>1 |
    }
    %% \bar "||"
    \stemDown
    \repeat unfold 2 {
      \stopStaff
      s1 |
      \startStaff
      <gis, dis' gis c>2 ~ q8
      \noBeam
      \once \override Stem.length = #11
      <fis cis' fis ais>8
      \once \override Stem.length = #14
      <f c' f a>4 |
    }
    \stemNeutral
  }
  %% \bar "||"
  \stopStaff
  s1*4
  \startStaff
}

%{
\gridPutMusic "guitar strum" 9 \relative c {
  \key e \major
  \reduceChords {
    \include "notes/guitar-V.ily"
  }
  \bar "|."
}
%}
