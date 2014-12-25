import com.GameInterface.Game.Character;
import com.Utils.Archive;
import com.Utils.Signal;

var m_ClientCharacter:Character;

function onLoad() {}

function OnModuleActivated(config:Archive)
{
	//com.GameInterface.UtilsBase.PrintChatText("Load EF2Chat");
	
	m_ClientCharacter = Character.GetClientCharacter();
	
	m_ClientCharacter.SignalBuffAdded.Connect(SlotBuffChanged, this);
	m_ClientCharacter.SignalBuffUpdated.Connect(SlotBuffChanged, this);
	
	for (var i in m_ClientCharacter.m_BuffList)
	{
		if (m_ClientCharacter.m_BuffList[i].m_BuffId == 6497060)
		{
			//com.GameInterface.UtilsBase.PrintChatText("m_ClientCharacter.m_BuffList[i].m_Count");
			//m_EF.counter.text = m_ClientCharacter.m_BuffList[i].m_Count;
			return;
		}
		else if (m_ClientCharacter.m_BuffList[i].m_BuffId == 8156697)
		{
			com.GameInterface.UtilsBase.PrintChatText("7");
			//m_EF.counter.text = 7;
			//m_EF.border._visible = true;
			return;
		}
	}
}

function SlotBuffChanged(buffId:Number)
{
	switch(buffId)
	{
		case 6497060:
			//this.m_EF.counter.text = this.m_ClientCharacter.m_BuffList[buffId].m_Count;
			//com.GameInterface.UtilsBase.PrintChatText("up2");
			com.GameInterface.UtilsBase.PrintChatText(this.m_ClientCharacter.m_BuffList[buffId].m_Count);
			break;
		
		case 8156697:
			//this.m_EF.counter.text = 7;
			//this.m_EF.border._visible = true;
			//com.GameInterface.UtilsBase.PrintChatText("7");
			break;
	}
	
}

function onUnload() {}
function OnModuleDeactivated()
{
	
}
