\include "predefined-guitar-fretboards.ly"

\storePredefinedDiagram #default-fret-table
  \chordmode { a:m7 }
  #guitar-tuning
  #'((place-fret 5 7 3)
     (barre 6 1 5))

\storePredefinedDiagram #default-fret-table
  \chordmode { c:m7 }
  #guitar-tuning
  #'((place-fret 5 10 3)
     (barre 6 1 8))

\storePredefinedDiagram #default-fret-table
  \chordmode { d:m7 }
  #guitar-tuning
  #'((place-fret 2 13 4)
     (place-fret 5 12 3)
     (barre 6 1 10))

\storePredefinedDiagram #default-fret-table
  \chordmode { ees:m7 }
  #guitar-tuning
  #'((place-fret 5 13 3)
     (barre 6 1 11))

\storePredefinedDiagram #default-fret-table
  \chordmode { a:m6+9 }
  #guitar-tuning
  #'((open 1)
     (place-fret 2 12 3)
     (place-fret 3 11 2)
     (place-fret 4 10 1)
     (open 5))

\storePredefinedDiagram #default-fret-table
  \chordmode { a:5 }
  #guitar-tuning
  #'(#|
     (mute 1)
     (mute 2)
     (mute 3)
     |#
     (place-fret 4 7 4)
     (place-fret 5 7 3)
     ;; (barre 6 4 5)
     (place-fret 6 5 1)
     )

\storePredefinedDiagram #default-fret-table
  \chordmode { e:5/b }
  #guitar-tuning
  #'(#|
     (mute 1)
     (mute 2)
     |#
     (place-fret 3 9 4)
     (place-fret 4 9 3)
     (barre 6 3 7))

\storePredefinedDiagram #default-fret-table
  \chordmode { ees:5/bes }
  #guitar-tuning
  #'(#|
     (mute 1)
     (mute 2)
     |#
     (place-fret 3 8 4)
     (place-fret 4 8 3)
     (barre 6 3 6))

\gridPutMusic "chords" 3 \chordmode {
  %% \unset TabStaff.minimumFret
  a1:m7 ~ | 1 |
  c1:m7 ~ | 1 |
  d1:m7 ~ | 1 |
  a1:m6+9 ~ | 1 |
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

\gridPutMusic "chords" 6 \chordmode {
  a2:m7 c2:m7 |
  d2:m7 ees2:m7 |
  a1:m6+9\fermata |
}
