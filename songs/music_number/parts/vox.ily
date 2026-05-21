\gridPutMusic "vox" 1 \with {
  lyrics = \verseOne
  music = \relative c, {
    R1*7
    r2 r4 fis8 gis |
    b4 gis8 b4. \glissando \melisma gis4 \melismaEnd |
    r2 r4 fis8 gis |
    b8 cis4. ~ 4 b4 |
    r2 r4 fis8 gis |
    b4 gis8 b4. \glissando \melisma gis4 \melismaEnd |
    r2 r4 fis8 gis |
    b4. cis b4 |
    R1 |
  }
}

\gridPutMusic "vox" 2 \with {
  lyrics = \goodbyeBaby
  music = \relative c {
    \time 12/8
    \repeat unfold 4 { f8[ f] r } |
    f8 f( dis) gis ~ gis2 r2 |
    %% \once \numericTimeSignature
    \time 4/4
    dis'4. \melisma b \glissando gis4 \melismaEnd |
  }
}

\gridPutMusic "vox" 3 \with {
  lyrics = \verseTwo
  music = \relative c {
    R1*3
    r2 r8 gis8 fis8 gis8 |
    b8 b8 b2 gis4 |
    r2 r4 fis8 gis8 |
    b8 cis4 b4. r4 |
    r2 r4 fis8 gis8 |
    b4. b4. gis4 |
    \ope
    R1*3
    \nope
  }
}
