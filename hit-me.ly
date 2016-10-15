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
  r2 r8 \tuplet 3/2 { bd16 tomml toml } \tuplet 3/2 { toml bd bd} \grace { sn16 } sn8^^
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd8. bd16 sn8. \parenthesize sn8 \parenthesize sn bd16 sn8 bd8~
  bd8 bd8 sn16 bd8. bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd8 \tuplet 3/2 8 {r16 tomml16-> tommh tommh bd bd toml-> tomml tomml bd bd sn} r2 
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
  bd16 \parenthesize sn8. <bd sn>4 bd <bd sn>8. \parenthesize sn16:32
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
}
vBdown = \drummode {
  \repeat percent 2 { \vBGrooveDown }
  s2. sn4
  \repeat percent 5 { \vBGrooveDown }
  bd16 \parenthesize sn8. <bd sn>4 bd <bd sn>8 \tuplet 3/2 {\parenthesize sn16_"r" \parenthesize sn_"r" \parenthesize sn_"l"}
  sn16_"r" bd~bd bd \tuplet 3/2  {\parenthesize sn16_"r" \parenthesize sn_"r" \parenthesize sn_"l"} sn16_"r" bd~bd bd~bd8 r sn
  \repeat percent 7 { \vBSimpleDown }
  bd16 tommh sn bd16~bd8 bd16 tommh sn bd16~bd8 bd tomml16 sn
}

chBup = \drummode {
  cymc8 \parenthesize hho hho \parenthesize hho
  \repeat percent 6 \chHH
  hho \parenthesize hho hho cymc~ 
  cymc \parenthesize hho hho \parenthesize hho
  \repeat percent 4 \chHH
  hho \parenthesize hho hho cymc
  s4 s8. cymc16~cymc4. cymcb8~cymcb16 cymc8. cymcb8. cymc16~cymc2~
  cymc1~cymc
  s2. cymc4
}
chBdown = \drummode {
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd8. bd16 sn8. \parenthesize sn8 \parenthesize sn bd16 sn8 bd8~
  bd8 bd8 sn16 bd8. bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd
  \parenthesize sn16 sn \parenthesize sn sn sn \parenthesize sn sn bd16~bd <sn toml>16 bd bd <sn toml>16 bd16 bd8 sn16 bd8 sn16 bd8 sn16 bd16~bd2
  s1 s
  \tuplet 3/2 8 {sn16_"r" tomml_"l" tomml_"l" bd bd toml_"r" toml_"r" bd bd sn16 tomml tomml bd bd toml toml bd bd} sn4
}
brUp = \drummode {
  hhp4 hhp4 hhp8 cymc hhp hho
  hhp8 s8 s4 s s8 hho8
  hhp4 r8 hho hhc hh cymc hh \parenthesize hh hh hh \parenthesize hh hh hh hh hh
  hh hh16 hh hh8 hh hh hh cymc hho
  hhp hh hh hh hh hh r hho
  hh4 hh16 hh hh8 hh hh hho cymc
  s16 cymr s s cymr s s s s hho hhp hho~hho4
}
brDown = \drummode {
  \tuplet 3/2 8 {sn16_"r"^^ sn_"l" sn_"l" sn_"r" sn_"r" sn_"l"^^ sn_"r" sn_"r" sn^^_"l" sn^^_"r" sn_"l" sn_"l" sn_"r" sn_"r" sn^^_"l"} bd8~bd sn8~
  sn16 bd16~bd8 bd4 <sn toml>4. s8
  s4. bd16 \parenthesize sn bd \parenthesize sn \parenthesize sn bd sn8. bd16~
  bd16 \parenthesize {sn:} r bd16~bd8 bd \tuplet 3/2 {r16 bd bd} sn8. sn16~sn8
  bd8. bd16 bd8. sn16~sn sn~sn bd sn4
  s8 bd~bd16 bd8. r16 sn: <toml bd>8~<toml bd>4
  bd4 <bd sn> bd16 \parenthesize sn \parenthesize sn bd16 sn8 sn
  \grace sn16 sn8 sn16 \grace sn sn~sn sn \grace sn \tuplet 3/2 {sn sn sn} sn bd~bd bd16~bd8 sn8
}
vCGrooveUp = \drummode {
  hhp16 hh hh hh hh hh^^ hh hh^^ r8. hh16 s8. hho16
}
vCup = \drummode {
  cymc16 hh hh hh hh hh^^ hh hh^^ r8. hh16 s8. hho16
  \vCGrooveUp	
  \vCGrooveUp	
  hhp16 hh hh hh hh hh^^ hh hh^^ \tuplet 3/2 {hh16 hh hh} hh hh hh hh^^~hh hh^^
  cymc16 hh hh hh hh hh^^ hh hh^^ r8 hho hhp8. hho16
  \vCGrooveUp	
  \vCGrooveUp	
  hhp16 hh hh hh hh hho hho8 s2
}
vCGrooveDown = \drummode {
  bd4 <bd sn> bd <bd sn>
}	
vCdown = \drummode {
  \vCGrooveDown
  \vCGrooveDown
  \vCGrooveDown
  \vCGrooveDown
  \vCGrooveDown
  \vCGrooveDown
  \vCGrooveDown
  bd8 sn16 bd~bd8 bd8 \tuplet 3/2 8 {sn16 sn sn bd tommh tommh tommh bd tomml tomml toml toml}
}
chCup = \drummode {
  cymc8 \parenthesize hho hho \parenthesize hho
  \repeat percent 6 \chHH
  hho \parenthesize hho hho cymc~ 
  cymc \parenthesize hho hho \parenthesize hho
  \repeat percent 4 \chHH
  hho \parenthesize hho hho cymcb~
  <cymcb hhp>8 cymcb~<cymcb hhp>8. cymc16~cymca8. cymca16~cymca4
}
chCdown = \drummode {
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd8~bd8. bd16 sn8. \parenthesize sn8 \parenthesize sn bd16 sn8 bd8~
  bd8 bd8 sn16 bd8. bd8. bd16 sn8 bd8~bd16 bd8. <bd sn~>8. \parenthesize sn8 \parenthesize sn bd16 sn16 bd8 \parenthesize sn16:32
  bd4 <bd sn>4 bd8. bd16 sn8 bd~
  bd8 bd sn8. bd16~bd8. bd16 sn8
}		 
up = \drummode { \unfoldRepeats {
  \tempo 4 = 130
  \introUp
  \vAup
  \chAup
  \vBup
  \chBup
  \brUp
  \vCup
  \chCup
}}
down = \drummode { \unfoldRepeats {
  <>^\markup { intro }  \introDown
  <>^\markup { verse }  \vAdown
  <>^\markup { chorus } \chAdown
  <>^\markup { verse 2 } \vBdown
  <>^\markup { chorus } \chBdown
  <>^\markup { middle 8 } \brDown
  <>^\markup { verse 3 } \vCdown
  <>^\markup { chorus } \chCdown
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
