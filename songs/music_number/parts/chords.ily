\gridPutMusic "chords" 2 \chordmode {
  \time 4/4
  cis1:7 |
  s1*3 |
}

\gridPutMusic "chords" 4 \chordmode {
  \gridGetCellMusic "chords" 2
}

\gridPutMusic "chords" 7 \chordmode {
  \gridGetCellMusic "chords" 2
}

\gridPutMusic "chords" 9 \chordmode {
  \gridGetCellMusic "chords" 2
}

\gridPutMusic "chords" 12 \chordmode {
  \repeat unfold 4 {
    \once \set chordChanges = ##f
    gis1
  }
  \override Score.ChordName.extra-offset = #'(0 . -6)
  \repeat unfold 2 {
    s1 |
    \once \set chordChanges = ##f
    gis2 ~ gis8 fis8 f4 |
  }
  \revert Score.ChordName.extra-offset
  s1*4
}

\gridPutMusic "chords" 13 \chordmode {
  e1 |
  gis1:5- |
  cis1 |
  gis1:5- |
  e2 fis2 |
  gis1 |
}
