%%% ================================================================ [ main.ly ]
%%% Description: Cicada - Main score for "What's Real?"
%%% Copyright:   (c) 2025 Eric Bailey
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.24.4"


%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-tabs ##f
\setOption naptaker.guitar-tuning #guitar-tuning
#(set! paper-alist (cons '("henle" . (cons (* 23.5 cm ) (* 31 cm))) paper-alist))
\setOption naptaker.paper-size "henle"
\setOption naptaker.paper-orientation #'portrait
\setOption naptaker.staff-size #15

%%% ================================================================= [ Header ]

Key    = { \key a \major }
Tempo  = { \tempo 4 = 180 }
global = { \Tempo \defaultTimeSignature \time 4/4 }


\header {
  title     = \markup \fontsize #8 "What's Real?"
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
  %% ragged-last = ##t

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

%% Intro A B C A B C A
\templateInit
#'("meta" "chords" "guitar" "bass" "drums up" "drums down")
#'(2 8 8 8 5 3)
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
