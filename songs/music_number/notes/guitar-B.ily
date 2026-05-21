#(if #{ \getOption naptaker.guitar-tabs #}
     #{ \set TabStaff.minimumFret = #9 #})
\cadenzaOn
\time 6/8
\repeat unfold 4 {
  \repeat unfold 2 {
    <cis gis' b f b' cis>8[ q8] r8
  }
  \bar "|"
}
\cadenzaOff
\once \numericTimeSignature
\time 4/4
\repeat unfold 2 {
  q8[ q8] r8
}
q8 r8 |
