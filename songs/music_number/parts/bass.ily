\gridPutMusic "bass" 1 \relative c, {
  \Key
  \repeat unfold 2 {
    \include "notes/guitar-Ia.ily"
    \include "notes/guitar-Ib.ily"
    \include "notes/guitar-Ic.ily"
    \include "notes/guitar-Ib.ily"
    \bar "||"
  }
}

\gridPutMusic "bass" 2 \relative c {
  \include "notes/bass-II.ily"
  \bar "||"
}

\gridPutMusic "bass" 3 \relative c, {
  \include "notes/guitar-Ic.ily"
  \include "notes/guitar-Ib.ily"
  \repeat volta 2 {
    \include "notes/guitar-Ia.ily"
    \include "notes/guitar-Ib.ily"
    \include "notes/guitar-Ic.ily"
    \include "notes/guitar-Ib.ily"
  }

}

\gridPutMusic "bass" 4 \relative c, {
  \include "notes/bass-III.ily"
  \bar "||"
}

\gridPutMusic "bass" 5 \relative c, {
  \include "notes/bass-IV.ily"
  \bar "||"
}

\gridPutMusic "bass" 6 \relative c,, {
  \key e \major
  \include "notes/bass-E.ily"
  \bar "|."
}
