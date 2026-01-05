\gridPutMusic "chords" 2 \chordmode {
  des1:m7 |
  s1*3 |
}

\gridPutMusic "chords" 4 \chordmode {
  \once \override Score.ChordName.extra-offset = #'(0 . -6)
  \gridGetCellMusic "chords" 2
}

\gridPutMusic "chords" 8 \chordmode {
  \override Score.ChordName.extra-offset = #'(0 . -6)
  \repeat unfold 4 {
    \once \set chordChanges = ##f
    aes1
  }
  \repeat unfold 2 {
    s1 |
    \once \set chordChanges = ##f
    aes2 ~ aes8 ges8 f4 |
  }
  s1*4
}

\gridPutMusic "chords" 9 \chordmode {
  e1 |
  gis1:5- |
  cis1 |
  gis1:5- |
  e2 fis2 |
  gis1 |
}
