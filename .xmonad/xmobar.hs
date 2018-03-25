Config {font = "xft:Helvetica Neue Light:pixelsize=12:antialias=true, FontAwesome:size=10"
  , bgColor = "#002b36"
  , fgColor = "#657b83"
  , border = NoBorder
  , borderColor = "black"
  , hideOnStart = False
  , persistent = True
  , position = Top 
  , lowerOnStart = True
  , commands = [ Run Battery [
	"-t", "<acstatus>: <left>% - <timeleft>",
	"--",
	--"-c", "charge_full",
	"-O", "AC",
	"-o", "\xf240",
	"-h", "FFFFCC",
	"-l", "FFB6B0"] 10 
  , Run Weather "CYKF" ["-t"," <tempC>C <skyCondition>","-L","5","-H","25","--normal","#657b83","--high","#ff0000","--low","#d4f0ff"] 9000
  , Run Network "wlp58s0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10
  , Run MultiCpu ["-t","Cpu: <total0>% <total1>% <total2>% <total3>%","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10 
  , Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10
  , Run Com "/home/arccosine/.xmonad/volume.sh" [] "vol" 10
  , Run Date "<fc=#93a1a1>%a %b %_d %Y %H:%M</fc>" "date" 10
  , Run StdinReader
]
  , sepChar = "%"
  , alignSep = "}{"
  , template = " %StdinReader% }{ %multicpu% | %memory% | %wlp58s0% | Volume:<fc=#b2b2ff>%vol%</fc> | Waterloo:%CYKF% | %battery% | <fc=#FFFFCC>%date%</fc> "
}
