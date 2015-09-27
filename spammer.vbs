set shell = createobject ("wscript.shell")

strtext = inputbox ("Spam Message (Spammer made/coded by bolts. This is a VBScript also known at a visual basic script!)")
strtimes = inputbox ("Spam Amount (Amount of messages)")
strspeed = inputbox ("Spam Speed (How many per second. 1000 = 1 message per second, 100 = 10 messages per second)")
strtimeneed = inputbox ("How long before the spamming starts. (Seconds)")

If not isnumeric (strtimes & strspeed & strtimeneed) then
msgbox "Hint: Use numbers."
wscript.quit
End If
strtimeneed2 = strtimeneed * 1000
do
msgbox "You have " & strtimeneed & " seconds to get to your text area where you are going to spam."
wscript.sleep strtimeneed2
shell.sendkeys ("" & "{enter}")
for i=0 to strtimes
shell.sendkeys (strtext & "{enter}")
wscript.sleep strspeed
Next
shell.sendkeys ("" & "{enter}")
wscript.sleep strspeed * strtimes / 10
returnvalue=MsgBox ("Want to spam again with the same message, ammount, speed and time?",36)
If returnvalue=6 Then
Msgbox "Ok spamming will start again in a few seconds."
End If
If returnvalue=7 Then
msgbox "Bolts' lazy spammer is going to sleep"
wscript.quit
End IF
loop
