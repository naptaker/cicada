\version "2.24.4"

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.guitar-tabs ##f
\setOption naptaker.guitar-tuning #guitar-tuning
\setOption naptaker.paper-orientation #'portrait
#(set! paper-alist (cons '("henle" . (cons (* 23.5 cm ) (* 31 cm))) paper-alist))
\setOption naptaker.paper-size "henle"
\setOption naptaker.staff-size #15

\include "preamble.ily"

\templateInit
  #'("meta" "chords" "vox" "guitar" "guitar strum" "bass" "drums up" "drums down")
  #'(16 4 12 4 8 12 4 12 4 8  8  12 6)
%%   A  B A′ B C A′ B A′ B C  C  D  E
%%   1  2 3  4 5 6  7 8  9 10 11 12 13

\include "parts/lyrics.ily"

%% \gridSetRange #'(8 . 9)

ope = {
  \temporary \override Beam.color = #red
  \temporary \override MultiMeasureRest.color = #red
  \temporary \override NoteHead.color = #red
  \temporary \override Rest.color = #red
  \temporary \override Stem.color = #red
}

nope = {
  \revert Beam.color
  \revert MultiMeasureRest.color
  \revert NoteHead.color
  \revert Rest.color
  \revert Stem.color
}

%% \Naptaker
\napPaper
\napIncludes

theScore = <<
  \napVox
  \napChords
  \napGuitar
  \napBass
  \napDrums
>>

\layout {
  \enablePolymeter
}

\score {
  \new StaffGroup <<
    \theScore
  >>

  \layout {
    \context {
      \FretBoards
      \remove "Fretboard_engraver"
    }
    \override Score.BarNumber.padding = #3
    \override Score.BarNumber.stencil =
      #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \override Score.CodaMark.font-size = #6
    \override Score.ChordName.extra-offset = #'(0 . -4)
    \override Score.KeySignature.break-visibility = ##(#f #f #t)
    \override Score.SegnoMark.font-size = #6
    \override Score.RehearsalMark.extra-offset = #'(-10 . 2)
    \override Score.TimeSignature.break-visibility = ##(#f #t #t)
    \override Score.VoltaBracket.extra-offset = #'(0 . 1)
    \override Score.VoltaBracket.thickness = #2
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
