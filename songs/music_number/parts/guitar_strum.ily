\gridPutMusic "guitar strum" 2 \relative c {
  \reduceChords {
    \include "notes/guitar-B.ily"
  }
}

\gridPutMusic "guitar strum" 4 \relative c {
  \gridGetCellMusic "guitar strum" 2
}

\gridPutMusic "guitar strum" 8 \relative c {
  \reduceChords {
    \cadenzaOn
    \repeat unfold 4 {
      <aes, ees' aes c>\breve \bar "|"
    }
    \cadenzaOff
    \repeat unfold 2 {
      \cadenzaOn
      <aes, ees' aes c>\breve \bar "||"
      \cadenzaOff
      <aes, ees' aes c>1 ~ |
      q4 <ges des' ges bes>4 <f c' f a>2 |
    }
  }
  \stopStaff
  s1*8
  \startStaff
}

%{
\gridPutMusic "guitar strum" 9 \relative c, {
  \key e \major
  \reduceChords {
    \include "notes/guitar-V.ily"
    \bar "|."
  }
}
%}
