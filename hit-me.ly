\version "2.18.2"
% \pointAndClickOff

\header {
  title = "Hit Me"
  subtitle = "By Dirty Loops"
  composer = "Aron Mellergårdh"
  instrument = "Drums"
  tagline = "Transcribed by Janne Ruuttunen using LilyPond 2.18.2"
}

chHH = \drummode { hho8 \parenthesize hho hho \parenthesize hho }
vHH = \drummode {hh8 hh^^ hh16 \parenthesize hh hh8^^}
up = \drummode { \unfoldRepeats {
  \tempo 4 = 130
  s1
  cymc8 \parenthesize hho hho \parenthesize hho
  \repeat percent 6 \chHH
  hho \parenthesize hho hho cymc~ 
  cymc \parenthesize hho hho \parenthesize hho
  \repeat percent 4 \chHH
  hho \parenthesize hho hho cymc8~cymc4 s8 \tuplet 3/2 {r8 cymcb16->~} cymcb4. hho8
  hhc4 s2. \repeat percent 7 {s1}
  cymc8 hh^^ hh16 \parenthesize hh hh8^^
  \repeat percent 13 \vHH 
  hh8 hh^^ hho4.. cymca16~cymca4
  cymcb1
}}

vGrooveA = \drummode { bd16 \parenthesize sn8. <bd sn> \parenthesize sn16 }
vGrooveB = \drummode { bd16 \parenthesize sn8. <bd sn> \parenthesize sn16:32 }
down = \drummode { \unfoldRepeats {
  r2 r8 \tuplet 3/2 { tommh16 tommh16 tomml16 } \tuplet 3/2 { tomml16 toml16 bd16} sn8^^
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd8. bd16 sn8. \parenthesize sn8 \parenthesize sn bd16 sn8 bd8~
  bd8 bd8 sn16 bd8. bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd8 r8 \tuplet 3/2 {tomml16-> tommh tommh} \tuplet 3/2 {bd toml-> tomml} \tuplet 3/2 {tomml bd sn} r2 
  <>^\markup { verse }
  \repeat percent 7 {bd4 bd bd bd } r16 bd^^ r bd^^ r8 r16 bd^^ r bd^^ r8 r8 sn8
  \repeat percent 3 { \vGrooveA } \vGrooveB
  \repeat percent 5 { \vGrooveA \vGrooveB }
  bd16 \parenthesize sn8. sn8 tommh32 tommh tommh16 tomml tomml32 tomml32 toml16 bd16~bd sn8 sn16
  <>^\markup { TBD }
}}


\score {
  <<
    \new DrumStaff <<
      \new DrumVoice { \stemUp \up}
	  \new DrumVoice { \stemDown \down}
	>>
  >>
  \layout { }
  \midi { }
}
