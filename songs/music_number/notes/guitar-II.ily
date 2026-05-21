#(if #{ \getOption naptaker.guitar-tabs #}
     #{ \set TabStaff.minimumFret = #9 #})
\cadenzaOn
\time 12/8
\repeat unfold 2 {
  \repeat unfold 4 { <cis gis' b f b' cis>8[ q8] r8 } \bar "|"
}
\bar "|"
\cadenzaOff
%% \once \numericTimeSignature
\time 4/4
\repeat unfold 2 {
  q8[ q8] r8
}
q8 r8 |
