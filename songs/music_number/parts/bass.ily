\gridPutMusic "bass" 1 \relative c, {
  \Key
  \repeat unfold 2 {
    \include "notes/bass-Ia.ily"
    \include "notes/bass-Ib.ily"
    \include "notes/bass-Ic.ily"
    \include "notes/bass-Ib.ily"
    \bar "||"
  }
}

\gridPutMusic "bass" 2 \relative c {
  \include "notes/bass-II.ily"
  \bar "||"
}

\gridPutMusic "bass" 3 \relative c, {
  \repeat unfold 2 {
    \include "notes/bass-Ia.ily"
    \include "notes/bass-Ib.ily"
  }
  \include "notes/bass-Ic.ily"
  \include "notes/bass-Ib.ily"
}

\gridPutMusic "bass" 4 \relative c, {
  \gridGetCellMusic "bass" 2
}

\gridPutMusic "bass" 5 \relative c, {
  \include "notes/bass-III.ily"
  \bar "||"
}

\gridPutMusic "bass" 6 \relative c, {
  \gridGetCellMusic "bass" 3
}

\gridPutMusic "bass" 7 \relative c, {
  \gridGetCellMusic "bass" 5
}

\gridPutMusic "bass" 8 \relative c, {
  \include "notes/bass-IV.ily"
  \bar "||"
}

\gridPutMusic "bass" 9 \relative c,, {
  \key e \major
  \include "notes/bass-V.ily"
  \bar "|."
}
