\gridPutMusic "guitar" 1 \relative c {
  \Key
  \include "notes/guitar-Ia.ily"
  \include "notes/guitar-Ib.ily"
  \include "notes/guitar-Ic.ily"
  \include "notes/guitar-Ib.ily"
  \bar "||"
  %% \ottava #-1
  \palmMuteOn
  \repeat unfold 2 {
    \include "notes/guitar-Id.ily"
  }
  \palmMuteOff
  %% \ottava #0
  \bar "||"
}

\gridPutMusic "guitar" 3 \relative c {
  \include "notes/guitar-Ia.ily"
  \include "notes/guitar-Ib.ily"
  \palmMuteOn
  \repeat unfold 2 {
    \include "notes/guitar-Id.ily"
  }
  \palmMuteOff
}

\gridPutMusic "guitar" 5 \relative c {
  \include "notes/guitar-III.ily"
  \bar "||"
}

\gridPutMusic "guitar" 6 \relative c {
  \gridGetCellMusic "guitar" 3
}

\gridPutMusic "guitar" 7 \relative c {
  \gridGetCellMusic "guitar" 5
}

\gridPutMusic "guitar" 8 \relative c {
  %% \Key
  \include "notes/guitar-IV.ily"
  \bar "||"
}
