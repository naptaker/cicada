\gridPutMusic "guitar" 1 \relative c {
  <a e' g c e a>4-> r <c g' bes ees g c>-> r |
  <d a' c f c' d>4-> r <ees bes' des ges bes ees>-> r |
}

\gridPutMusic "guitar" 2 \relative c {
  \repeat volta 2 {
    \include "notes/guitar-A.ily"
  }
}

\gridPutMusic "guitar" 3 \relative c {
  <>_\markup { \teeny "chords on repeat" }
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

\gridPutMusic "guitar" 6 \relative c {
  <>_\markup { \teeny "fuzz" }
  \fuzzOn
  \removeWithTag #'repeat { \include "notes/guitar-A.ily" }
  \fuzzOff
}
