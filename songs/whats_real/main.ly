%%% ================================================================ [ main.ly ]
%%% Description: Cicada - Main score for "What's Real?"
%%% Copyright:   (c) 2025 Eric Bailey
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.24.4"


%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

chExceptionMusic = {
  <a c' e' g' e'>1-\markup \concat { m \super 7 \teeny "(alt.)" }
}

chExceptions =
  #(append (sequential-music-to-chord-exceptions chExceptionMusic #t)
           ignatzekExceptions)

\setOption naptaker.extra-layout \layout {
  \context {
    \ChordNames
    chordNameExceptions = #chExceptions
  }
  \context {
    \FretBoards
    \remove "Fretboard_engraver"
  }
}
\setOption naptaker.guitar-tabs ##f
\setOption naptaker.guitar-tuning #guitar-tuning
#(set! paper-alist (cons '("henle" . (cons (* 23.5 cm ) (* 31 cm))) paper-alist))
\setOption naptaker.paper-size "henle"
\setOption naptaker.paper-orientation #'portrait
\setOption naptaker.staff-size #14

%%% ================================================================= [ Header ]

Key    = { \key a \major }
Tempo  = { \tempo 4 = 180 }
global = { \Tempo \defaultTimeSignature \time 4/4 }


\header {
  title     = \markup \fontsize #8 "What's Real?"
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
        \concat { Am \super 7 }
        \fret-diagram-verbose #'(
          (place-fret 5 7 3)
          (barre 6 1 5)
        )
      }
      \center-column {
        \concat { Cm \super 7 }
        \fret-diagram-verbose #'(
          (place-fret 5 10 3)
          (barre 6 1 8)
        )
      }
      \center-column {
        \concat { Dm \super 7 }
        \fret-diagram-verbose #'(
          (place-fret 2 13 4)
          (place-fret 5 12 3)
          (barre 6 1 10)
        )
      }
      \center-column {
        \concat { E \flat m \super 7 }
        \fret-diagram-verbose #'(
          (place-fret 5 13 3)
          (barre 6 1 11)
        )
      }
      \left-column {
        \concat { Am \super 7 \teeny "(alt.)" }
        \fret-diagram-verbose #'(
          (open 1)
          (place-fret 2 8 3)
          (place-fret 3 9 2)
          (place-fret 4 10 1)
          (open 5)
        )
      }
      \hspace #-1.75
      \center-column {
        \concat { A \super 5 }
        \fret-diagram-verbose #'(
          #|
          (mute 1)
          (mute 2)
          (mute 3)
          |#
          (place-fret 4 7 4)
          (place-fret 5 7 3)
          ;; (barre 6 4 5)
          (place-fret 6 5 1)
        )
      }
      \left-column {
        \concat { E \super 5 / B }
        \fret-diagram-verbose #'(
          #|
          (mute 1)
          (mute 2)
          |#
          (place-fret 3 9 4)
          (place-fret 4 9 3)
          (barre 6 3 7)
        )
      }
      \left-column {
        \concat { E \flat \super 5 / B \flat }
        \fret-diagram-verbose #'(
          #|
          (mute 1)
          (mute 2)
          |#
          (place-fret 3 8 4)
          (place-fret 4 8 3)
          (barre 6 3 6)
        )
      }
    }
  }
  opus      = "Cicada"
  composer  = "Andrew Smith"
  %% poet      = "Andrew Smith"
  arranger  = "Naptaker"
  copyright = "© 2025 Eric Bailey"
  %% tagline   = ##f
}


%%% ================================================================= [ Layout ]

pageNumberColor = #(if (defined? 'pageNumberColor) pageNumberColor black)


\paper {
  two-sided = ##f
  print-first-page-number = ##f
  ragged-last = ##t

  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \null
        \line {
          \with-color \pageNumberColor
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
          \with-color \pageNumberColor
          \if \should-print-page-number
          \fromproperty #'page:page-number-string
        }
        \null
      }
    }
  }
}


%%% =================================================================== [ Grid ]

%% Intro A B C A B C 3/4A Coda
%% New? Intro A B A B C A B A B C A Coda
\templateInit
#'("meta" "chords" "guitar" "bass" "drums up" "drums down")
#'(2 8 8 8 5 6 3)
%% \gridSetRange #'(5 . 5)

\Naptaker

\include "naptaker/mtf-improviso.ily"

\gridDisplay
\gridCheck

\score {
  <<
    \napVox
    \napChords
    \napGuitar
    \napBass
    \napDrums
  >>

  \midi { }
}

%%% ==================================================================== [ EOF ]
