\gridPutMusic "guitar strum" 2 \relative c {
  \reduceChords {
    \include "notes/guitar-B.ily"
  }
}

\gridPutMusic "guitar strum" 4 \relative c {
  \gridGetCellMusic "guitar strum" 2
}
