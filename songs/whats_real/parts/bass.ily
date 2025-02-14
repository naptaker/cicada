\gridPutMusic "bass" 1 \relative c, {
  R1 |
  r4 a4 f'4 e4 |
}

\gridPutMusic "bass" 2 \relative c, {
  \repeat volta 2 {
    \include "notes/bass-A.ily"
  }
}

\gridPutMusic "bass" 3 \relative c, {
  %% \inStaffSegno
  \include "notes/bass-A.ily"
}

\gridPutMusic "bass" 4 \relative c, {
  \repeat volta 2 {
    \repeat unfold 2 {
      \include "notes/bass-B.ily"
    }
  }
}

\gridPutMusic "bass" 5 \relative c, {
  \repeat volta 2 {
    e4 e4 e4 e4 |
    gis4 gis4 gis4 gis4 |
    a4 a4 a4 a4 |
    \volta 1,2,3 {
      a4 a4 a4 d,4 |
    }
    \volta 4 {
      a'4 a4 f4 e4 |
    }
  }
}
