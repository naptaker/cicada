\gridPutMusic "chords" 1 \chordmode {
  a2:m7 c2:m7 |
  d2:m7 ees2:m7 |
}

\gridPutMusic "chords" 3 \chordmode {
  a1:m7 ~ | 1 |
  c1:m7 ~ | 1 |
  d1:m7 ~ | 1 |
  <a c' e' g' e'>1 ~ | 1 |
}

\gridPutMusic "chords" 4 \chordmode {
  \repeat volta 2 {
    \repeat unfold 2 {
      a1:5 |
      e'1:5/b |
      ees1:5/bes ~ |
      ees1:5/bes |
    }
  }
}

\gridPutMusic "chords" 7 \chordmode {
  a2:m7 c2:m7 |
  d2:m7 ees2:m7 |
  <a c' e' g' e'>1\fermata |
}
