\version "2.24.4"

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-tabs ##f
\setOption naptaker.guitar-tuning #guitar-tuning
\setOption naptaker.paper-orientation #'portrait
#(set! paper-alist (cons '("henle" . (cons (* 23.5 cm ) (* 31 cm))) paper-alist))
\setOption naptaker.paper-size "letter"
\setOption naptaker.staff-size #23

\include "preamble.ily"

\templateInit
  #'("meta" "guitar" "guitar strum" "bass") %% "drums up" "drums down")
  #'(16 4 12 4 8 12 8 24 11)
%% A B A′ B C A′ B A′ B C C D E

%% \gridSetRange #'(4 . 4)

ope = {
  \temporary \override NoteHead.color = #red
  \temporary \override Stem.color = #red
  \temporary \override Beam.color = #red
}

nope = {
  \revert NoteHead.color
  \revert Stem.color
  \revert Beam.color
}


rhythmic =
#(define-music-function (music) (ly:music?)
   #{
      \stopStaff
      \temporary \override Staff.StaffSymbol.line-count = #1
      \startStaff
      \improvisationOn
      \temporary \override NoteHead.Y-offset = #0
      \reduceChords {
        #music
      }
      \improvisationOff
      \revert NoteHead.Y-offset
      \stopStaff
      \revert Staff.StaffSymbol.line-count
      \startStaff
    #})

%% \Naptaker
\napPaper
\napIncludes

theScore = <<
  %% \napVox
  %% \napChords
  \napGuitar
  \napBass
  \napDrums
>>

\layout {
  \enablePolymeter
}

\score {
  \theScore

  \layout {
    \override Score.BarNumber.padding = #3
    \override Score.BarNumber.stencil =
      #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \override Score.RehearsalMark.extra-offset = #'(-10 . 2)
    \override Score.KeySignature.break-visibility = ##(#f #f #t)
    \override Score.TimeSignature.break-visibility = ##(#f #t #t)
    \override Score.VoltaBracket.thickness = #2
    \override Score.VoltaBracket.extra-offset = #'(0 . 1)
  }
}

\include "articulate.ly"

\score {
  \unfoldRepeats { \Tempo \articulate \theScore }
  \midi {
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"
