\gridPutMusic "bass" 1 \relative c, {
  \Key
  \repeat unfold 2 {
    \include "notes/bass-Ia.ily"
    \include "notes/bass-Ib.ily"
    \include "notes/bass-Ic.ily"
    \include "notes/bass-Ib.ily"
  }
  \section
}

\gridPutMusic "bass" 2 \relative c {
  \include "notes/bass-II.ily"
  \section
}

\gridPutMusic "bass" 3 \relative c, {
  \include "notes/bass-Ia.ily"
  \include "notes/bass-Ib.ily"
  \include "notes/bass-Id.ily"
  \relative c, {
    \include "notes/bass-Ib.ily"
    \include "notes/bass-Ic.ily"
    \include "notes/bass-Ib.ily"
  }
  \section
}

\gridPutMusic "bass" 4 \relative c, {
  \gridGetCellMusic "bass" 2
}

\gridPutMusic "bass" 5 \relative c, {
  \include "notes/bass-III.ily"
  \section
}

\gridPutMusic "bass" 6 \relative c, {
  \include "notes/bass-Ia.ily"
  \include "notes/bass-Ib.ily"
  \include "notes/bass-Ia.ily"
  \include "notes/bass-Ib.ily"
  \include "notes/bass-Ic.ily"
  \include "notes/bass-Ib.ily"
  \section
}

\gridPutMusic "bass" 7 \relative c, {
  \gridGetCellMusic "bass" 2
}

\gridPutMusic "bass" 8 \relative c, {
  \gridGetCellMusic "bass" 3
}

\gridPutMusic "bass" 9 \relative c, {
  \gridGetCellMusic "bass" 2
}

\gridPutMusic "bass" 10 \relative c, {
  \gridGetCellMusic "bass" 5
}

\gridPutMusic "bass" 11 \relative c, {
  \gridGetCellMusic "bass" 5
}

\gridPutMusic "bass" 12 \relative c, {
  \include "notes/bass-IV.ily"
  \section
}

\gridPutMusic "bass" 13 \relative c,, {
  %% \key e \major
  \include "notes/bass-V.ily"
  \bar "|."
}
