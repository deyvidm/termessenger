using terms from application "Messages"
	do shell script "echo " & "whatever" & " > /Users/Mercury/Documents/itermsg/rcv.log"
	on message received theMessage from theBuddy for theChat
		do shell script "echo \"-- " & (theMessage as text) & "\" >> /Users/Mercury/Documents/itermsg/rcv.log"
		
	end message received
	
	#unused but needed for error-freedom
	on message sent theMessage for theChat
		do shell script "echo \"> " & (theMessage as text) & "\" >> /Users/Mercury/Documents/itermsg/rcv.log"
	end message sent
	
	on chat room message received theMessage from theBuddy for theChat
		
	end chat room message received
	
	on active chat message received theMessage
		
	end active chat message received
	
	on addressed chat room message received theMessage from theBuddy for theChat
		
	end addressed chat room message received
	
	on addressed message received theMessage from theBuddy for theChat
		
	end addressed message received
	
	on av chat started
		
	end av chat started
	
	on av chat ended
		
	end av chat ended
	
	on login finished for theService
		
	end login finished
	
	on logout finished for theService
		
	end logout finished
	
	on buddy became available theBuddy
		
	end buddy became available
	
	on buddy became unavailable theBuddy
		
	end buddy became unavailable
	
	on completed file transfer
		
	end completed file transfer
end using terms from
