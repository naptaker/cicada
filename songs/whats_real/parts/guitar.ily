\gridPutMusic "guitar" 1 \relative c {
  R1 |
  r4 a4 f'4\5 e4 |
}

\gridPutMusic "guitar" 2 \relative c {
  \repeat volta 2 {
    \include "notes/guitar-A.ily"
  }
}

\gridPutMusic "guitar" 3 \relative c {
  <>_\markup { \teeny "3 V. col fuzz" }
  \repeat volta 2 {
    \include "notes/guitar-A.ily"
  }
}

\gridPutMusic "guitar" 4 \relative c {
  \repeat volta 2 {
    \repeat unfold 2 {
      \include "notes/guitar-B.ily"
    }
  }
}

\gridPutMusic "guitar" 5 \relative c'' {
  \include "notes/guitar-C.ily"
}
