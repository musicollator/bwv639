\version "2.25.26"

\header {
  tagline = ##f  % Removes LilyPond version info
}

global = {  \key f \minor   \time 4/4 }

choral = \new Voice  {
  \global
  \voiceOne
  \partial 4 c''4 | %0
  aes'4 bes'4 aes'8. g'16 f'8. g'16 | %1
  aes'16 bes' aes' bes' bes'8. \trill aes'32 bes' c''4 c''8. des''16 | %2
  ees''4 \appoggiatura des''16 c''8. bes'16 aes'4 bes'8 c''8 | %3
  des''4 ~ des''16 [ ees''32 f''32  des''16 \prall c''16 ] c''4 c''4 | %4
  aes'4 bes'4 aes'8. g'16 f'8. g'16 | %5
  aes'16 bes' aes' bes' bes'8. \trill aes'32 bes' c''4 c''8. des''16 | %6
  ees''4 \appoggiatura des''16 c''8. bes'16 aes'4 bes'8 c''8 | %7
  des''4 ~ des''16 [ ees''32 f''32  des''16 \prall c''16 ] c''4 ees''4 | %8
  f''4 ees''8 [ des''32 \prall c'' des''16 ] c''8 bes' aes' bes' | %8
  %6
  c''4 bes' aes' c''
  %7
  c'' c'' bes' aes'
  %8
  g'2  f'
  %9
  aes'4 g' f'2
  %10
  ees'2. ees'4
  %11
  aes' aes' bes' bes'
  %12
  c''2. des''4
  %13
  c'' bes' aes' f'8. g'16
  %14
  aes'4 g'4 f'4 \bar "|."
}

altop = \new Voice {
  \global
  \voiceThree
  \partial 4 aes16 c' f' e'
  |%1
  f'16 c' aes f   g bes des' c'    f aes c' bes    aes f aes c'
  |%2
  f' e' f' aes'   g' f' e' f'   e'! c' g bes   aes c' f' aes'
  |%3
  g' ees'! aes' g'   aes' ees' f' ges'   f' des' f' aes'   g' des' c' ges'!
  |%4
  f' bes des' f'    bes' aes' g' aes'
  g' c' e' bes
  aes16 c' f' e'
  |%1
  f'16 c' aes f   g bes des' c'    f aes c' bes    aes f aes c'
  |%2
  f' e' f' aes'   g' f' e' f'   e'! c' g bes   aes c' f' aes'
  |%3
  g' ees'! aes' g'   aes' ees' f' ges'   f' des' f' aes'   g' des' c' ges'!
  |%4
  f' bes des' f'    bes' aes' g' aes'
  g' bes aes f'   g des' aes c'
  |%5
  aes c' bes des'   bes des' aes' g'   aes'16 ees' des' g'   c' f' aes' g'
  |%6
  aes' ees' aes ges'   f' aes g! des'   c' aes c' ees'    g'! c' bes g'
  |%7
  a c' f' g'    a'! f' ees' a'   des' g' aes' g'   c' f' g' f'
  |%8
  des' f' g' f'     e' bes des' c'    aes c' f' e'!    f' c' aes f
  |%9
  bes f' g' f'   bes ees' f' ees'    c' ees' f' ees'    d' g b d'
  |%10
  g c' ees' des'!   g bes des' c'   ees aes c' bes    des' bes ees des'
  |%11
  f aes des' c'    f aes c' bes   f aes bes aes   g bes des' c'
  |%12
  aes c' ees' aes'    ees' bes' c'' bes'    a' ees' ges' a!    bes g' aes f'
  |%13
  g e' f'  ees'   f des' ees' des'   ees c' des' c'   bes f' g' f'
  %14
  d'! f' g' f'    e' des' bes g   a c' f'8 \fermata
}

basse = \new Voice {
  \pageBreak
  \global
  \voiceTwo
  \clef "bass"
  \partial 4 f,8 f,
  %1
  f [ f ] f [ e! ] f [ f ] f ees!
  %2
  des [ des ] des [ des ] c [ c ] f f
  %3
  c' [ c' ] c' [ c' ] c' [ c' ] bes a
  %4
  bes [ aes! ] g [ f ]
  e! [ c ] f,8 f,
  %1
  f [ f ] f [ e! ] f [ f ] f ees!
  %2
  des [ des ] des [ des ] c [ c ] f f
  %3
  c' [ c' ] c' [ c' ] c' [ c' ] bes a
  %4
  bes [ aes! ] g [ f ]
  e! [ f ] c c
  des [ des ] ees [ ees ] aes [ ees ] f des
  %6
  ees [ c ] des [ ees ] aes, [ aes, ] e,! e,
  %7
  f, [ f, ] f [ f ] f [ e! ] f des
  %8
  bes, [ g, ] c [ c ] des! [ des ] des [ des ]
  %9
  d! [ d ] ees [ ees ] a,! [ a, ] b, [ b, ]
  %10
  c [ c ] bes,! [ bes, ] aes, [ aes, ] g, [ g, ]
  %11
  f,  [ f, ] ees, [ ees, ] d,! [ d, ] ees, [ ees, ]
  %12
  aes, [ aes, ] ges, [ ges, ] f, [ f, ] bes, [ bes, ]
  %13
  bes, [ aes, ] aes, [ g, ] g, [ f, ] des [ des ]
  %14
  b, [ b, ] c [ c ] f,4
}


bwv = <<
  \new PianoStaff <<
    \context Staff = right {
      \set Staff.midiInstrument = #"violin"
      \context Voice = right \choral
    }
    \context Staff = left {
      \set Staff.midiInstrument = #"viola"
      \context Voice = left \altop
    }
  >>
  \context Staff = pedal {
    \set Staff.midiInstrument = #"cello"
    \context Voice = pedal \basse
  }
>>