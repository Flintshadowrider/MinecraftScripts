#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
HotKeySet("{Esc}","stop")

Global $toggle

HotKeySet("{z}", "movePlayer")

While 1
    Sleep(10)
WEnd

Opt('SendKeyDelay', 50); Default speed
Func _Send($text, $milliseconds)
    $time = TimerInit()
    Do
        Send($text)
    Until TimerDiff($time) > $milliseconds
EndFunc

func movePlayer()
   $toggle = NOT $toggle
   While $toggle
	  _Send("d",50)
	  Sleep(100)
   WEnd
EndFunc

func stop()
    Exit
