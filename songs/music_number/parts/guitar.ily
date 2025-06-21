\gridPutMusic "guitar" 1 \relative c {
  \Key
  \include "notes/guitar-Ia.ily"
  \include "notes/guitar-Ib.ily"
  \include "notes/guitar-Ic.ily"
  \include "notes/guitar-Ib.ily"
  \bar "||"
  \palmMuteOn
  \include "notes/guitar-Id.ily"
  \palmMuteOff
  \bar "||"
}

\gridPutMusic "guitar" 3 \relative c {
  \include "notes/guitar-Ic.ily"
  \include "notes/guitar-Ib.ily"
  \repeat volta 2 {
    \palmMuteOn
    \include "notes/guitar-Id.ily"
    \palmMuteOff
  }
}

\gridPutMusic "guitar" 4 \relative c {
  %% \key aes \minor
  \include "notes/guitar-III.ily"
  \bar "||"
}

\gridPutMusic "guitar" 5 \relative c {
  %% \Key
  \include "notes/guitar-IV.ily"
  \bar "||"
}

\gridPutMusic "guitar" 6 \relative c, {
  \key e \major
  \include "notes/guitar-V.ily"
}
