set shell = createobject ("wscript.shell")
msgbox "Hello, thanks for using bolts' spammer."
msgbox "Disclaimer: Once the program starts typing you cannot end the process. The process will end when all messages are typed."
agree = inputbox ("Do you accept the problems this may cause? Hint: Type 'Ok'")
strtext = inputbox ("Message (Auto-typer made/coded by bolts)")
strtimes = inputbox ("Message Amount (Amount of messages)")

If not isnumeric (strtimes) then
msgbox "Hint: Use numbers."
wscript.quit
End If
strspeed = inputbox ("Message Speed (How many per second. 1000 = 1 message per second, 100 = 10 messages per second)")

If not isnumeric (strspeed) then
msgbox "Hint: Use numbers."
wscript.quit
End If
strtimeneed = inputbox ("How long before the typing starts. (Seconds)")

If not isnumeric (strtimeneed) then
msgbox "Hint: Use numbers."
wscript.quit
End If
strtimeneed2 = strtimeneed * 1000
do
msgbox "You have " & strtimeneed & " seconds to get to your text area where you are going to type."
wscript.sleep strtimeneed2
shell.sendkeys ("" & "{enter}")
for i=0 to strtimes
shell.sendkeys (strtext & "{enter}")
wscript.sleep strspeed
Next
shell.sendkeys ("" & "{enter}")
wscript.sleep strspeed * strtimes / 10
returnvalue=MsgBox ("Want to type again with the same message, ammount, speed and time?",36)
If returnvalue=6 Then
msgbox "Ok typing will start again in a few seconds."
End If
If returnvalue=7 Then
msgbox "Bolts' lazy auto-typing program is going to sleep."
wscript.quit
End IF
loop
