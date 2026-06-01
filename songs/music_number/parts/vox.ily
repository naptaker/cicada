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
    \include "notes/vox-chorus.ily"
  }
}

\gridPutMusic "vox" 3 \with {
  lyrics = \verseTwo
  music = \relative c, {
    R1*3
    r2 r8 fis8 fis8 gis8 |
    b8 b8 b4. gis4. |
    r2 r4 fis8 gis8 |
    b8 cis4 b4. r4 |
    r2 r4 f'8 gis,8 |
    b4. b4. gis4 |
    r2 r8 dis'8 f8 dis8 |
    gis4 gis8 b,4. cis4 ~ |
    cis8 dis4. f2 |
  }
}

\gridPutMusic "vox" 4 \with {
  lyrics = \goodbyeBaby
  music = \relative c {
    \include "notes/vox-chorus.ily"
  }
}

\gridPutMusic "vox" 6 \with {
  lyrics = \verseThree
  music = \relative c, {
    R1*3
    r2 r4 fis8 gis8 |
    b8 b4 b4. \glissando \melisma gis4 \melismaEnd |
    r2 r4 fis8 gis8 |
    b4. cis b4 |
    r2 r4 f'8 gis,8 |
    b4. b4. gis4 |
    r2 r8 dis8 \glissando f'8 dis8 |
    gis4. f4. b,4 ~ |
    b4 f'4 gis8 gis8 \glissando \melisma f8 \melismaEnd gis8 \glissando \melisma |
  }
}


\gridPutMusic "vox" 7 \with {
  lyrics = \lyricmode {
    you, you,
    ch -- ch -- ch -- ch -- choo, __ you?
    Ooh __ __
  }
  music = \relative c {
    \time 12/8
    f4. \melismaEnd f4. f4. f8 f8 f8 |
    f8 f8 \glissando \melisma dis8 \melismaEnd gis4. ~ gis4.  r4. |
    \time 4/4
    dis'4. \melisma b \glissando gis4 \melismaEnd |
  }
}

\gridPutMusic "vox" 8 \with {
  lyrics = \verseFour
  music = \relative c, {
    R1*3
    r2 r8 fis8 dis'8 cis8 |
    gis'4. dis4. b4 ~ |
    b2 r4 gis4 |
    b8 gis4 cis4. gis4 ~ |
    gis2 r8 f8 b8 gis8 |
    %% ais4. ais4. b4 \glissando \melisma |
    b4. b4. b4 \glissando \melisma |
    gis2 \melismaEnd r8 dis'8 f8 dis8 |
    gis4 fis8 gis4 fis8 gis4 |
    fis8 gis4 fis8 gis4 fis8 gis8 \glissando \melisma |
  }
}

\gridPutMusic "vox" 9 \with {
  lyrics = \lyricmode {
    ch -- ch -- ch -- ch -- choo, __ you
    Ooh __ __
  }
  music = \relative c' {
    \time 12/8
    gis4 \glissando f8 ~ f4. \melismaEnd  r4. f8 f8 f8 |
    f8 f8 \glissando \melisma dis8 \melismaEnd gis4. ~ gis4.  r4. |
    \time 4/4
    dis'4. \melisma b \glissando gis4 \melismaEnd |
  }
}
