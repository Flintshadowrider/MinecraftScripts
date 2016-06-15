#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:        Gunner Stone

 Script Function:
	Holds down the mouse for player.

	Pressing the z key toggles program
	Pressing the esc key ends program

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
HotKeySet("{Esc}","stop")

Global $toggle

HotKeySet("{x}", "minePlayer")

While 1
    Sleep(10)
WEnd

#cs ----------------------
function: minePlayer

Holds down the mouse for the player when activated
Hotkey: z
#ce ----------------------
func minePlayer()
   $toggle = NOT $toggle
   While $toggle
	  MouseDown("left")
	  Sleep(1000)
	  MouseUp("left")

   WEnd
EndFunc

func stop()
    Exit
