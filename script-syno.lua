commandArray = {}

DomDevice = 'Dimmer1'

IP = '192.168.1.91'
Port = '43333'

LEDtarget = 'LED1_Target='
Fadetimer = 'Fadetimer1='
Waittime = '2'
FadeTime1 = '2000'

 if devicechanged[DomDevice] then
   if(devicechanged[DomDevice]=='Off') then DomValue = 0;
   print ("Turning off " .. DomDevice);
   runcommand = "echo " .. (Fadetimer) .."" .. (FadeTime1) .. "," .. (LEDtarget) .. "0  | telnet " .. (IP) .. " " .. (Port) .. " ";

   print (runcommand);
   os.execute(runcommand);
 return commandArray
   else
    DomValue = (otherdevices_svalues[DomDevice]);
   end
   CalcValue = DomValue * 33;
   print ("Value received from Domoticz was " .. (DomValue) .." ");
   print ("Calculated value for ESP is " .. (CalcValue) .." ");
   print ("Dimming "  .. (DomDevice) .. " to " .. (CalcValue) .. " ");
   runcommand = "echo " .. (Fadetimer) .."" .. (FadeTime1) .. "," .. (LEDtarget) .. "" .. (CalcValue) .. " | telnet " .. (IP) .. " " .. (Port) .. " ";
   print (runcommand);
   os.execute(runcommand);
 end
return commandArray
