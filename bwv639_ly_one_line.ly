\version "2.25.26"

\include "tie-attributes.ily"
\include "bwv639_main.ly"

% One-line score for notehead extraction
\book {
  \paper {
    indent = 0
    line-width = 20000\mm       % absurdly wide
    page-breaking = #ly:one-line-breaking
    systems-per-page = 1
    print-page-number = ##f
  }

  \score {
    \bwv
    \layout {
      \context {
        \Voice
        \override StringNumber.stencil = ##f
      }
      \context {
        \Voice
        \consists \Tie_grob_engraver
      }
    }
    \midi {
      % CRITICAL: Move Staff_performer from Staff to Voice context
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
        \consists "Staff_performer"
      }

      \context {
        \Score
        midiChannelMapping = #'instrument
      }
    }
  }
}