\header {
  title = "Music Number"
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
  %% print-first-page-number = ##t
  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \null
        \line {
          \if \should-print-page-number
          \fromproperty #'page:page-number-string
        }
      }
    }
  }

  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        \line {
          \if \should-print-page-number
          \fromproperty #'page:page-number-string
        }
        \null
      }
    }
  }
}

Key = { \key aes \major }
Tempo = { \tempo 4 = 160 }
global = { \Tempo \defaultTimeSignature \time 4/4 }
