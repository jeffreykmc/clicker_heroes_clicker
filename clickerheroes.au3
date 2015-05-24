
fp_sleep = 10
click_x = 860
click_y = 400
status = 1
SetTitleMatchMode 2
Msgbox, Press Q to stop and T to toggle In Clicker Heroes Windows

Loop
{

	ifWinActive, Clicker Heroes
	{
		GetKeyState, state, Q, P
			if state = D 
			{
				msgbox, Click Heroes Clicker exited
				 exit
			}
		GetKeyState, state, T, P
			if state = D 
			{
				if click = 1
				{ 
					click = 0
					tooltip, mouse click disabled
				} else {
					click = 1
					tooltip, mouse click enabled
				}
			}
	}
	if click = 1
	{
	ControlClick, x860 y400, Clicker Heroes
	
	}
	sleep %fp_sleep% 
}

Exit
