
fp_sleep = 10
click_x = 860
click_y = 400
click = 0
aclick = 0
status = 1
SetTitleMatchMode 2
Msgbox, Press Q to Exit, R to Stop and T to toggle In Clicker Heroes Windows

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
		GetKeyState, state, R, P
			if state = D 
			{
				aclick = 0
				click = 0
				tooltip,
				
			}
		GetKeyState, state, T, P
			if state = D 
			{
				if status = 1 
				{
					aclick = 1
					click = 1
					tooltip, click - ALL
					status = 2
				} else {
					if status = 2
					{
						aclick = 1
						click = 0
						tooltip, click - Advance Only
						status = 3

					} else {
						if status = 3
						{
							aclick = 0
							click = 1
							tooltip, click - Click Only
							status = 1
							
						}
					}
				}
;					if click = 1;
;					{ 
;						click = 0
;						tooltip, mouse click disabled
;					} else {
;						click = 1
;						tooltip, mouse click enabled
;					}
			}

;		GetKeyState, state, Y, P
;			if state = D 
;			{
;				if aclick = 1
;				{ 
;					aclick = 0
;					tooltip, Advance click disabled
;				} else {
;					aclick = 1
;					tooltip, Advance click enabled
;				}
;			}
			
	}
	if aclick = 1
	{
		ControlClick, x914 y74, Clicker Heroes
	}	
	
	if click = 1
	{
		ControlClick, x860 y400, Clicker Heroes
	}
	sleep %fp_sleep% 
}

Exit
