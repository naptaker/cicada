\gridPutMusic "guitar strum" 2 \relative c {
  \reduceChords {
    \include "notes/guitar-B.ily"
  }
}

\gridPutMusic "guitar strum" 4 \relative c {
  \gridGetCellMusic "guitar strum" 2
}

\gridPutMusic "guitar strum" 8 \relative c {
  \stopStaff
  s1*8
  \repeat unfold 2 {
    s1*2 |
    \startStaff
    \reduceChords {
      <aes, ees' aes c>1 ~ |
      q4 <ges des' ges bes>4 <f c' f a>2 |
    }
    \stopStaff
  }
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
