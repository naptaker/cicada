\gridPutMusic "bass" 1 \relative c, {
  \Key
  \repeat volta 2 {
    \include "notes/guitar-Ia.ily"
    \include "notes/guitar-Ib.ily"
    \include "notes/guitar-Ic.ily"
    \include "notes/guitar-Ib.ily"
  }
}

\gridPutMusic "bass" 3 \relative c, {
  \include "notes/guitar-Ic.ily"
  \include "notes/guitar-Ib.ily"
  \gridGetCellMusic "bass" 1
}
