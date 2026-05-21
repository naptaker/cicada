\repeat unfold 3 {
  #(if #{ \getOption naptaker.guitar-tabs #}
       #{ \set TabStaff.minimumFret = #7 #})
  <b fis'>4
  \repeat unfold 2 {
    <<
      { b4 }
      \\
      {
        %% \set stemRightBeamCount = #0
        \once \set doubleSlurs = ##t
        \stemUp
        gis'8([ fis8]) }
    >>
  }
  #(if #{ \getOption naptaker.guitar-tabs #}
       #{ \set TabStaff.minimumFret = #4 #})
  r8 <gis, d'>8 ~ |
  q8 <gis dis'>8 q8 q4 q8 q4 |
}
#(if #{ \getOption naptaker.guitar-tabs #}
     #{ \set TabStaff.minimumFret = #0 #})
<fis cis' fis ais>2. q4 |
<f c' f a>2. q4 |
