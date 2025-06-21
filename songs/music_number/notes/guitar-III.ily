\repeat unfold 3 {
  #(if #{ \getOption naptaker.guitar-tabs #}
       #{ \set TabStaff.minimumFret = #7 #})
  <ces ges'>4
  \repeat unfold 2 {
    <<
      { ces4 }
      \\
      {
        %% \set stemRightBeamCount = #0
        \once \set doubleSlurs = ##t
        \stemUp
        aes'8([ ges8]) }
    >>
  }
  #(if #{ \getOption naptaker.guitar-tabs #}
       #{ \set TabStaff.minimumFret = #4 #})
  r8 <aes, eeses'>8 ~ |
  q8 <aes ees'>8 q8 q4 q8 q4 |
}
#(if #{ \getOption naptaker.guitar-tabs #}
     #{ \set TabStaff.minimumFret = #0 #})
<ges des' ges bes>2. q4 |
<f c' f a>2. q4 |
