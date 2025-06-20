\gridPutMusic "guitar" 1 \relative c {
  \repeat volta 2 {
    <>_\markup { \concat { 2 \super a} volta ad lib smorzata }
    \include "notes/guitar-Ia.ily"
    \include "notes/guitar-Ib.ily"
    \include "notes/guitar-Ic.ily"
    \include "notes/guitar-Ib.ily"
  }
}

\gridPutMusic "guitar" 2 \relative c {
  \include "notes/guitar-II.ily"
}

\gridPutMusic "guitar" 3 \relative c {
  \include "notes/guitar-Ic.ily"
  \include "notes/guitar-Ib.ily"
  \repeat volta 2 {
    s1*8 |
  }
}

\gridPutMusic "guitar" 4 \relative c {
  \key aes \minor
  \include "notes/guitar-III.ily"
}

\gridPutMusic "guitar" 5 \relative c {
  \Key
  \include "notes/guitar-IV.ily"
}

\gridPutMusic "guitar" 6 \relative c, {
  \include "notes/guitar-V.ily"
}
