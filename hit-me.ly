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

introUp = \drummode {
  s1
  cymc8 \parenthesize hho hho \parenthesize hho
  \repeat percent 6 \chHH
  hho \parenthesize hho hho cymc~ 
  cymc \parenthesize hho hho \parenthesize hho
  \repeat percent 4 \chHH
  hho \parenthesize hho hho cymc8~cymc4 s8 \tuplet 3/2 {r8 cymcb16->~} cymcb4. hho8
}
introDown = \drummode {
  r2 r8 \tuplet 3/2 { bd16 toml tomml } \tuplet 3/2 { tomml bd bd} \grace { sn16 } sn8^^
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd8. bd16 sn8. \parenthesize sn8 \parenthesize sn bd16 sn8 bd8~
  bd8 bd8 sn16 bd8. bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd8 r8 \tuplet 3/2 {tomml16-> tommh tommh} \tuplet 3/2 {bd toml-> tomml} \tuplet 3/2 {tomml bd sn} r2 
}
vAup = \drummode {
  hhp4 s2. \repeat percent 7 {s1}
  cymc8 hh^^ hh16 \parenthesize hh hh8^^
  \repeat percent 13 \vHH 
  hh8 hh^^ hho4.. cymca16~cymca4
}
vGrooveA = \drummode { bd16 \parenthesize sn8. <bd sn> \parenthesize sn16 }
vGrooveB = \drummode { bd16 \parenthesize sn8. <bd sn> \parenthesize sn16:32 }
vAdown = \drummode {
  \repeat percent 7 {bd4 bd bd bd } r16 bd^^ r bd^^ r8 r16 bd^^ r bd^^ r8 r8 sn8
  \repeat percent 3 { \vGrooveA } \vGrooveB
  \repeat percent 5 { \vGrooveA \vGrooveB }
  bd16 \parenthesize sn8. sn8 tommh32 tommh tommh16 tomml tomml32 tomml32 toml16 bd16~bd sn8 sn16
}

chAup = \drummode {
  cymc8 \parenthesize hho hho \parenthesize hho
  \repeat percent 6 \chHH
  hho \parenthesize hho hho cymc~ 
  cymc \parenthesize hho hho \parenthesize hho
  \repeat percent 4 \chHH
  hho \parenthesize hho hho cymc~
  cymc8 \parenthesize hho hho \parenthesize hho cymcb4. hho8
}
chAdown = \drummode {
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd8. bd16 sn8. \parenthesize sn8 \parenthesize sn bd16 sn8 bd8~
  bd8 bd8 sn16 bd8. bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd8. bd16 sn8 bd bd2  
}

vBGrooveUp = \drummode {
  hh8 hh^^ hh8 r16 hho hhp4 hh16 \parenthesize hh16 hh8  
} 
vBGrooveDown = \drummode {
  bd16 \parenthesize sn8. <bd sn>4 bd sn8. \parenthesize sn16:32
}
vBSimpleUp = \drummode {
  hh8 hh^^ hh hh^^ hh hh^^ hh hh^^    
}
vBSimpleDown = \drummode {
  bd4 <bd sn> bd <bd sn>
}
vBup = \drummode {
  \repeat percent 2 { \vBGrooveUp }
  r2 r8. hh16 r8 hho
  \repeat percent 5 { \vBGrooveUp }
  hh8 hh^^ hh8 r16 hho hhp4 hho4
  r16 hho hhp hho hhp s r hho hhp hho hhp s s4
  cymc8 hh^^ hh hh^^ hh hh^^ hh hh^^    
  \repeat percent 5 { \vBSimpleUp }
  hh hh^^ hh hh^^ hh hh^^ hh hh16 hh16^^
  s8. hh16~hh hh^^~hh s4 hh16^^~hh hh^^~hh8
  cymc1
}
vBdown = \drummode {
  \repeat percent 2 { \vBGrooveDown }
  s2. sn4
  \repeat percent 5 { \vBGrooveDown }
  bd16 \parenthesize sn8. <bd sn>4 bd sn8 \tuplet 3/2 {\parenthesize sn16_"R" \parenthesize sn_"R" \parenthesize sn_"L"}
  sn16_"R" bd~bd bd \tuplet 3/2  {\parenthesize sn16_"R" \parenthesize sn_"R" \parenthesize sn_"L"} sn16_"R" bd~bd bd r4 sn8
  \repeat percent 7 { \vBSimpleDown }
  bd16 tommh sn bd16~bd8 bd16 tommh sn bd16~bd8 bd tomml16 sn
  bd1						   
}
up = \drummode { \unfoldRepeats {
  \tempo 4 = 130
  \introUp
  \vAup
  \chAup
  \vBup
}}
down = \drummode { \unfoldRepeats {
  <>^\markup { intro }  \introDown
  <>^\markup { verse }  \vAdown
  <>^\markup { chorus } \chAdown
  <>^\markup { verse 2 } \vBdown
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
