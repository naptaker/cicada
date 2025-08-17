\gridPutMusic "chords" 2 \chordmode {
  des1:m7 |
  s1*3 |
}

\gridPutMusic "chords" 4 \chordmode {
  \gridGetCellMusic "chords" 2
}

\gridPutMusic "chords" 8 \chordmode {
  \cadenzaOn
  \set chordChanges = ##f
  \repeat unfold 4 {
    aes\breve
  }
  \cadenzaOff
  \repeat unfold 2 {
    s1*2 |
    aes1 ~ |
    \set chordChanges = ##t
    q4 ges4 f2 |
  }
  s1*8
}

\gridPutMusic "chords" 9 \chordmode {
  e\breve |
  gis\breve:5- |
  cis\breve |
  gis\breve:5- |
  e1 |
  fis1 |
  gis1 |
}
