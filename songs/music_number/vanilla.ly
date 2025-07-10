\version "2.24.4"

\include "oll-core/package.ily"
%% \loadPackage "snippets"
%% \loadModule snippets.templates.predefined-instruments
\include "snippets/templates/predefined-instruments/context-creating-function.ily"

\include "preamble.ily"
#(set-default-paper-size "a4landscape")
%% #(set-global-staff-size 16)

theStructure = {
  \global
  \Key

  \sectionLabel \markup \rounded-box "Intro"
  \repeat volta 4 {
    s1 |
    \alternative {
      \volta 1 { s1 | }
      \volta 2,4 { s1 | }
      \volta 3 { s1 | }
    }
  }
  \section
  \break

  \sectionLabel \markup \rounded-box "Verse"
  \repeat volta 2 {
    s1*3 |
    \alternative {
      { s1 | }
      { s1 | }
    }
  }
  \section
  \break

  \sectionLabel \markup \rounded-box "Chorus"
  s1*4 |
  \section
  \noBreak

  %% \sectionLabel \markup \rounded-box "Motif"
  % \repeat segno 2 {
  %   \repeat volta 2 {
  %     s1 |
  %     \alternative {
  %       { s1 | }
  %       { s1 | }
  %     }
  %   }
  %   \section
  %   \break

  %   \sectionLabel \markup \rounded-box "Verse"
  %   \repeat volta 4 {
  %     s1*3 |
  %     \alternative {
  %       \volta 1,3 { s1 | \noBreak }
  %       \volta 2,4 { s1 | }
  %     }
  %   }
  %   \section
  %   \break

  %   \sectionLabel \markup \rounded-box "Chorus"
  %   s1*4 |
  %   \section
  %   \noBreak
  % }
}

\newInstrument "Guitar"
\with {
  instrumentName = "Guitar"
  %% shortInstrumentName = "G"
  \RemoveEmptyStaves
  \override VerticalAxisGroup.remove-first = ##t
  \override StringNumber.stencil      = ##f
  \clef "treble_8"
}
\with {
  \consists "Staff_performer"
  midiInstrument    = "electric guitar (clean)"
  midiMinimumVolume = #0.3
  midiMaximumVolume = #0.6
}
"default"

theGuitar = \relative c {
  \Key

  %% Intro
  \repeat volta 4 {
    aes8 aes aes' aes ges ges c, des ~ |
    \alternative {
      \volta 1 { des8 des f, c'4 b4 bes8 | }
      \volta 2,4 { des8 des f,\6 c'4 e,4.\6 | }
      \volta 3 { des'8 des f,4 c'8 c b bes | }
    }
  }

  %% Verse
  \palmMuteOn
  \repeat volta 2 {
    aes8 8 r8 aes8 8 8 r aes8 ~ |
    aes8 8 r8 aes8 8 ces8 des8 ces8 |
    aes8 8 r8 aes8 8 8 r aes8 |
    \alternative {
      { aes8 8 r8 aes8 8 f8 c'8 e,8 | }
      { aes8 8 f8 c'4 e,4. | }
    }
  }
  \palmMuteOff

  %% Chorus
  \cadenzaOn
  \time 6/8
  \repeat unfold 4 {
    \repeat unfold 2 {
      <des aes' ces f ces' des>8[ q8] r8
    }
    \bar "|"
  }
  \cadenzaOff
  \once \numericTimeSignature
  \time 4/4
  \repeat unfold 2 {
    q8[ q8] r8
  }
  q8 r8 |
  % \bar "||"
  %% \break

  \set Score.dalSegnoTextFormatter = #format-dal-segno-text-brief
  \set Score.segnoStyle = #'bar-line
  \repeat segno 2 {
    %% Motif
    \repeat volta 2 {
      aes'8 aes aes' aes ges ges c, des ~ |
      \alternative {
        { des8 des f,4 c'8 c b bes | }
        { des8 des f,\6 c'4 e,4.\6 | }
      }
    }

    %% Verse
    \palmMuteOn
    \repeat volta 2 {
      aes8 8 r8 aes8 8 8 r aes8 ~ |
      aes8 8 r8 aes8 8 ces8 des8 ces8 |
      aes8 8 r8 aes8 8 8 r aes8 |
      \alternative {
        \volta 1,3 { aes8 8 r8 aes8 8 f8 c'8 e,8 | }
        \volta 2,4 { aes8 8 f8 c'4 e,4. | }
      }
    }
    \palmMuteOff

    %% Chorus
    \cadenzaOn
    \time 6/8
    \repeat unfold 4 {
      \repeat unfold 2 {
        <des aes' ces f ces' des>8[ q8] r8
      }
      \bar "|"
    }
    \cadenzaOff
    \once \numericTimeSignature
    \time 4/4
    \repeat unfold 2 {
      q8[ q8] r8
    }
    q8 r8 |
    \bar "||"

    %% Bridge
    \repeat unfold 3 {
      <ces' ges'>4
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
      r8 <aes, eeses'>8 ~ |
      q8 <aes ees'>8 q8 q4 q8 q4 |
    }
    <ges des' ges bes>2. q4 |
    <f c' f a>2. q4 |

    \alternative {
      \volta 1 {
        %% Motif
        \repeat volta 2 {
          aes8 aes aes' aes ges ges c, des ~ |
          \alternative {
            { des8 des f,4 c'8 c b bes | }
            { des8 des f,\6 c'4 e,4.\6 | }
          }
        }

        %% Verse
        \palmMuteOn
        \repeat volta 2 {
          aes8 8 r8 aes8 8 8 r aes8 ~ |
          aes8 8 r8 aes8 8 ces8 des8 ces8 |
          aes8 8 r8 aes8 8 8 r aes8 |
          \alternative {
            \volta 1,3 { aes8 8 r8 aes8 8 f8 c'8 e,8 | }
            \volta 2,4 { aes8 8 f8 c'4 e,4. | }
          }
        }
        \palmMuteOff

        %% Chorus
        \cadenzaOn
        \time 6/8
        \repeat unfold 4 {
          \repeat unfold 2 {
            <des aes' ces f ces' des>8[ q8] r8
          }
          %% \bar "|"
        }
        \cadenzaOff
        \once \numericTimeSignature
        \time 4/4
        \repeat unfold 2 {
          q8[ q8] r8
        }
        q8 r8 |
        %% \bar "||"
      }
      \volta 2 \volta #'() {
        \section
        \sectionLabel "Coda"
      }
    }
  }
  \break

  %% Bridge
  \repeat unfold 3 {
    <ces' ges'>4
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
    r8 <aes, eeses'>8 ~ |
    q8 <aes ees'>8 q8 q4 q8 q4 |
  }
  <ges des' ges bes>2. q4 |
  <f c' f a>2. q4 |

  %% Ending
  \override Staff.NoteHead.style = #'altdefault
  \compressEmptyMeasures
  %% \cadenzaOn
  \repeat unfold 4 {
    <aes ees' aes c>\breve \bar "|"
  }
  %% \cadenzaOff
  \repeat unfold 2 {
    aes'1 ~ |
    aes4 ges4 f2 |
    <aes, ees' aes c>1 ~ |
    q4 <ges des' ges bes>4 <f c' f a>2 |
  }
  aes'1 ~ |
  2 des2 |
  c1 ~ |
  2 e2 |
  ees1 ~ |
  2 a2 |
  %% \cadenzaOn
  aes\breve \bar "|"
  %% \cadenzaOff

  <e,, b' e gis>\breve |
  <gis d' gis>\breve |
  <cis gis' cis eis>\breve |
  <gis d' gis>\breve |
  <e b' e gis>1 |
  <fis cis' fis ais>1 |
  <gis dis' gis bis>1\fermata |
}

\score {
  <<
    \new StaffGroup <<
      %% \theGuitarStrum
      \new GuitarVoice = gtr <<
        { \theStructure }
        { \theGuitar }
      >>
    >>
  >>

  \layout {
    \override Score.BarNumber.padding = #3
    \override Score.BarNumber.stencil =
      #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \override Score.KeySignature.break-visibility = ##(#f #f #t)
    \override Score.RehearsalMark.extra-offset = #'(-10 . 2)
    \override Score.TimeSignature.break-visibility = ##(#f #t #t)
    \override Score.VoltaBracket.extra-offset = #'(0 . 1)
    \override Score.VoltaBracket.thickness = #2
  }
}
