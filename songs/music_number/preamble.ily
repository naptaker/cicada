\header {
  title = \markup \fontsize #8 "Music Number"
  subsubtitle  = \markup {
    \vspace #2
    \override #'(word-space . 2)
    \override #'(fret-diagram-details .
                 ((barre-type . straight)
                  (finger-code . in-dot)
                  (number-type . arabic)
                  (orientation . landscape)))
    \sans \line {
      \center-column {
        \concat { D \flat m \super 7 }
        \fret-diagram-verbose #'(
          (place-fret 2 12 4)
          (place-fret 3 10 2)
          (place-fret 5 11 3)
          (barre 6 1 9)
        )
      }
      \center-column {
        \concat { A \flat }
        \fret-diagram-verbose #'(
          (place-fret 3 5 2)
          (place-fret 4 6 4)
          (place-fret 5 6 3)
          (barre 6 1 4)
        )
      }
      \center-column {
        \concat { G \flat }
        \fret-diagram-verbose #'(
          (place-fret 3 3 2)
          (place-fret 4 4 4)
          (place-fret 5 4 3)
          (barre 6 1 2)
        )
      }
      \center-column {
        \concat { F }
        \fret-diagram-verbose #'(
          (place-fret 3 2 2)
          (place-fret 4 3 4)
          (place-fret 5 3 3)
          (barre 6 1 1)
        )
      }
      \center-column {
        \concat { E }
        \fret-diagram-verbose #'(
          (open 1)
          (open 2)
          (place-fret 3 1 2)
          (place-fret 4 2 4)
          (place-fret 5 2 3)
          (open 6)
        )
      }
      \center-column {
        \concat { G \sharp \super { \flat 5 } }
        \fret-diagram-verbose #'(
          (place-fret 4 6 4)
          (place-fret 5 5 3)
          (place-fret 6 4 2)
        )
      }
      \center-column {
        \concat { C \sharp }
        \fret-diagram-verbose #'(
          (place-fret 3 10 2)
          (place-fret 4 11 4)
          (place-fret 5 11 3)
          (barre 6 1 9)
        )
      }
      \center-column {
        \concat { F \sharp }
        \fret-diagram-verbose #'(
          (place-fret 3 3 2)
          (place-fret 4 4 4)
          (place-fret 5 4 3)
          (barre 6 1 2)
        )
      }
      \center-column {
        \concat { G \sharp }
        \fret-diagram-verbose #'(
          (place-fret 3 5 2)
          (place-fret 4 6 4)
          (place-fret 5 6 3)
          (barre 6 1 4)
        )
      }
    }
  }
  composer = \markup {
    \right-column {
      "Music by Naptaker"
      "Title by LD"
    }
  }
  copyright = "© 2025 Eric Bailey"
  tagline = \markup {
    \center-column {
      \with-url #"https://naptaker.bandcamp.com"
      \line {
        Recordings available @
        naptaker.bandcamp.com
      }
      \with-url #"https://github.com/naptaker"
      \line {
        More scores available @
        github.com/naptaker
      }
      \null
      \with-url #"https://lilypond.org"
      \line {
        Music engraving by LilyPond
        $(lilypond-version)
        \char ##x2014
        lilypond.org
      }
      \null
      \with-url #"https://github.com/naptaker/cicada/commits/main/songs/music_number"
      \line {
        Last updated on $(strftime "%-d %B, %Y" (localtime (current-time)))
      }
    }
  }
}

\paper {
  ragged-last = ##t
  two-sided = ##t
  %% first-page-number = #1
  %% print-first-page-number = ##t
  inner-margin = 25\mm
  outer-margin = 15\mm
  % evenHeaderMarkup = \markup {
  %   \column {
  %     \fill-line {
  %       \null
  %       \line {
  %         \if \should-print-page-number
  %         \fromproperty #'page:page-number-string
  %       }
  %     }
  %   }
  % }
  % oddHeaderMarkup = \markup {
  %   \column {
  %     \fill-line {
  %       \line {
  %         \if \should-print-page-number
  %         \fromproperty #'page:page-number-string
  %       }
  %       \null
  %     }
  %   }
  % }
}

Key = { \key aes \major }
Tempo = { \tempo "Vivace" 4 = 160 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

startOops = {
  \temporary \override NoteHead.color = #red
  \temporary \override Stem.color = #red
}

endOops = {
  \revert NoteHead.color
  \revert Stem.color
}
