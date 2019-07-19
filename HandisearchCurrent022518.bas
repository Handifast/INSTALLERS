'Form created with the help of Freeform 3 v07-31-2015
'Generated on Jul 02, 2017 at 20:15:19
Dim Master$(1434)
Dim XRDMaster$(254)
Dim XRDaray$(150,20)
Dim analysts$(200)
Dim  scales$(10)
Dim horses(6,25)
Dim batchhorses(6,25)
Dim markers(6,25)
Dim batchmarkers(6,25)
DIM CSVarray$(70)
Dim CSVHorsearray$(20,70)
Dim payoffs$(150,3)

Dim srt(25,2)
Dim srt1(25,4)
Dim srts(25,4)
Dim holder(40,75)
Dim rankings(25,25)
Dim firster1$(25)
Dim firstimer(25)
Dim names(25)
Dim factnums(4,20)
Dim track$(25)
Dim nameofhorse$(27)
Dim TracSaddle$(27)
Dim Tracstyles$(25)
Dim Rtype$(25)
Dim Purse(25)
Dim CSVweight(25)
Dim finishPo$(25)
Dim finOdds$(25)
Dim fieldnum$(25)

Dim lmh$(25)
Dim lenindicator(25)
Dim fts(25)
Dim fts$(25)
Dim carrollspeed(25)
Dim racerundate$(25)

Dim surface(25)
Dim surface1(25)
    Dim surface2(25)
Dim CSVsurface$(25)
Dim styles$(25)
Dim surf$(25)
Dim todaysdistance(25)
Dim cond$(25)
Dim racenum(25)
Dim Raceclassification$(25)
Dim racemonth(25)
    Dim racedate(25)
    Dim raceyr(25)
    Dim topnumber(25)
    Dim secondnumber(25)
    Dim allfairodds$(27)
    Dim firster$(25)
    Dim Classtest(25,3)
    Dim hurdles1$(27)
    Dim hml$(27)
    Dim fairodds$(25)
    Dim lenindicator(25)
    Dim lenindicator1(25)
    Dim lenindicator2(25)
    Dim postpos(25)
    Dim rankings(25,25)


'Dim a$(16)




dim  info$(10, 10)


Global   raceobjectflag$, mx,my, pop ,TrackCSV$ ' FLAG TO CHECK FOR FIRST TIME MAKING A RACE OBJECT LATER IN PROGRAM


open "C:\temphandi\horse.dat" for random as #horse1 len = 754 ' open as random access
    FIELD #horse1,_
       2 AS Breed$,_
       25 AS HorseName$,_
        3 AS Saddlecloth$,_
        3 AS trac$,_
        8 AS racedate$,_
        2 AS racenumber,_
        2 AS racetype$,_
        3 AS programnum,_
        3 AS daysaway,_
        3 AS class,_
        3 AS distspd,_
        3 AS earlypace,_
        3 AS latepace,_
        6 AS runstyle1$,_
        3 AS quirinstyle$,_
        3 AS form,_
        3 AS pcr,_
        7 AS AvPur,_
        3 AS turf,_
        3 AS averagespeed,_
        3 AS dirt,_
        3 AS fastnum,_
        3 AS trainer,_
        3 AS jockey,_
        3 AS mornlineodds,_
        5 AS ml$,_
        1 As firster,_
        7 AS firster$,_
        3 AS bigfig,_
        3 AS bigfig1,_
        3 AS bigfig2,_
        3 AS works,_
        3 AS rank,_
        1 AS surfind,_
        1 AS surfind1,_
        1 AS surfind2,_
        1 AS lenind,_
        1 AS lenind1,_
        1 AS lenind2,_
        7 AS DMeps,_
        4 AS DMwinpct,_
        4 AS DMitmpct,_
        3 AS pwr,_
        2 AS racemonth,_
        2 AS racedate,_
        4 AS raceyr,_
        3 AS weight,_
        2 AS post$,_
        2 AS todayssurface$,_
        4 AS carrollspeed,_
       10 AS trk1hurdles$,_
        3 AS Track1$,_
       50 AS trk1posttime$,_
        7 AS trk1posttime2$,_
        8 AS trk1Date$,_
        8 AS trk1currentyear$,_
        4 AS trk1monthday$,_
        2 AS trk1currentmonth$,_
        2 AS trk1currentday$,_
        4 AS trk1currentyear,_
        2 AS trk1currentmonth,_
        2 AS trk1currentday,_
       20 AS trk1surf$,_
        2 AS trk1surf2$,_
        8 AS trk1distance$,_
        6 AS trk1distyards,_
       14 AS trk1RaceClassification$,_
       14 As raceclassification$,_
        8 AS trk1Purse,_
        2 AS trk1Racenumber,_
        1 AS trk1statebred$,_
       30 AS trk1cond$,_
       20 AS trk1cond22$,_
       30 AS trk1cond33$,_
       80 AS trk1wage$,_
       80 AS trk1wage2$,_
        5 AS trk1todaysdistance,_
        1 AS fts,_
        7 AS fts$,_
        1 AS CSVtodayssurface$,_
        1 AS surface1$,_
        1 AS surface2$,_
        1 AS surface3$,_
        1 AS surface4$,_
        1 AS surface5$,_
        1 AS surface6$,_
        1 AS surface7$,_
        1 AS surface8$,_
        1 AS surface9$,_
        1 AS surface10$,_
        6 AS primepower,_
        5   AS Class,_
    5   AS Distancespeedrank,_
    5   AS EarlyPacerank,_
    5   AS LatePacerank,_
    5   AS Formrank,_
    5   AS PerformanceClassrank,_
    5   AS avgpurserank,_
    5   AS Turfrank,_
    5   AS Mudrank,_
    5   AS Dirtrank,_
    5   AS Fastrank,_
    5   AS Trainerrank,_
    5   AS Jockeyrank,_
    5   AS Speed3rank,_
    5   AS Speed2rank,_
    5   AS LastSpeedrank,_
    5   AS CarrollSpeedrank,_
    5   AS Classconsistrank,_
    5   AS PowerSpeedrank,_
    5   AS MitchellPowerrank,_
    5   AS MornLinerank,_
    2   AS finishPos$,_
    6   AS finishOdds$,_
    2   AS field$,_
    5   AS Win$,_
    5   AS Place$,_
    5   AS Show$,_


 OPEN "C:\temphandi\race.dat" FOR RANDOM AS #racedat LEN=329
  FIELD #racedat,_  ' set up the fields for file opened as RACE DAYS RACE DATA
        3 AS trac$,_
        5 AS racedate$,_
        2 AS racenumber,_
        5 AS racedistance,_
        15 AS surface$,_
        2 AS racetype$,_
        10 AS purse,_
        15 AS raceclassification$,_
        7 AS claimingprice,_
        3 AS agesexrestrictions$,_
        7 AS racedistancetext$,_
        255 AS completeracecondition$,_

    OPEN "C:\temphandi\filetype.dat" FOR RANDOM AS #filetype LEN=3
  FIELD #filetype,_  ' set up the fields for file opened as RACE DAYS RACE DATA
        3 AS datatype$,_

    [InitColors]
    'Please use default colors when possible.
    'ForegroundColor$ = "Black"
    'BackgroundColor$ = "Buttonface"

    True = 1 : False = 0

    [ControlSetup]
    Menu        #main,  "&Settings", "S&elect File Type ", [typefiles], "M&ake Directories", [makedirectories]
    Menu        #main,  "&Load Files", "S&elect Files to Run ", [importfiles]
    Menu        #main, "&Create CSV", "I&nitialize CSV File", [createCSV]
    Menu        #main, "&Batch Processor", "L&aunch Processor", [batchprocessing]


[setup.main.Window]

    '-----Begin code for #main

    nomainwin
    WindowWidth = 550
    WindowHeight = 410
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

    TextboxColor$ = "white"
    textbox #main.XRDnumbers,  20,  82,  75,  25
    textbox #main.Datanumbers, 175,  82,  75,  25
    textbox #main.tracks, 335,  82, 100,  25
    button #main.button5,"Close",[closeprog], UL, 220, 322,  75,  25

    '-----End GUI objects code

    open "Handi Search-Batch Processor" for graphics_nsb_nf as #main
    print #main, "down;fill buttonface; flush"
    print #main, "color black; backcolor buttonface"
    print #main, "font ms_sans_serif 11 Bold"
    print #main.XRDnumbers, "!font ms_sans_serif 10"
    print #main.Datanumbers, "!font ms_sans_serif 10"
    print #main.tracks, "!font ms_sans_serif 10"
    print #main.button5, "!font ms_sans_serif 10"
    print #main, "trapclose [quit.main]"
print #main, "place 20  75"
print #main, "\#XRD files"
print #main, "place 175  75"
print #main, "\#Data files"
print #main, "place 322  75"
print #main, "\Track Processing."

[main.inputLoop]   'wait here for input event
    wait



[closeprog]   'Perform action for the button named 'button5'

 goto   [quit.main] 'Insert your own code here

    wait

[quit.main] 'End the program
    'close #XRDHdata
    close #racedat
    close #horse1
    close #main
    close #filetype
    end





'Form created with the help of Freeform 3 v07-31-2015
'Generated on May 29, 2017 at 00:15:05





 '--------------------- FUNCTION AREA WHERE PROGRAM FUNCTIONS WILL BE KEPT AND STORED


       function fileExists(path$, filename$)
  'dimension the array info$( at the beginning of your program
  files path$, filename$, info$()
  fileExists = val(info$(0, 0)) 'non zero is true
end function

function roundoff(number, nDecimals)
  roundoff = roundoffInt(number*10^nDecimals)/10^nDecimals
end function


function roundoffInt(x)
   if x>=0 then
       if (x-int(x))>= 0.5 then
           roundoffInt = 1+int(x)
       else
           roundoffInt = int(x)
       end if
   else
      if (x-int(x))<-0.5 then
          roundoffInt = -1+int(x)
      else
          roundoffInt = int(x)
      end if
   end if
end function

Function GetParent(hWnd)
    calldll #user32, "GetParent",hWnd as ulong,_
        GetParent as ulong
End Function

Function SeparatePath$(f$)
    fileindex=Len(f$)
    filelength=Len(f$)
    While Mid$(f$, fileindex,1)<>"\"
        fileindex=fileindex-1
    Wend
    SeparatePath$=Left$(f$,fileindex)
End Function

Function SeparateFile$(f$)
    fileindex=Len(f$)
    filelength=Len(f$)
    While Mid$(f$, fileindex,1)<>"\"
        fileindex=fileindex-1
    Wend
    SeparateFile$=Right$(f$,filelength-fileindex)
End Function

'function fileExists(path$, filename$)
  'dimension the array info$( at the beginning of your program
'  files path$, filename$, info1$()
'  fileExists = val(info1$(0, 0)) 'non zero is true
'end function

function INSTRMATCH(textstring$,string$)

textstring$=" "+textstring$
pos=-1
found=0
while pos<>0 and found=0
  pos=instr(textstring$,string$,pos+1)
  ascprevchar=max(asc(upper$(mid$(textstring$,pos-1,1))),0)
  ascnextchar=asc(upper$(mid$(textstring$,pos+(len(string$)),1)))
    if (ascnextchar<65 or ascnextchar>90) and (ascprevchar<65 or ascprevchar>90) then
    found=max(pos-1,0)
    end if
  wend
INSTRMATCH=found
end function

function INSTRMATCH2(keytrnstatcat$,string$)

keytrnstatcat$=" "+keytrnstatcat$
pos=-1
found=0
while pos<>0 and found=0
  pos=instr(keytrnstatcat$,string$,pos+1)
  ascprevchar=max(asc(upper$(mid$(keytrnstatcat$,pos-1,1))),0)
  ascnextchar=asc(upper$(mid$(keytrnstatcat$,pos+(len(string$)),1)))
    if (ascnextchar<65 or ascnextchar>90) and (ascprevchar<65 or ascprevchar>90) then
    found=max(pos-1,0)
    end if
  wend
INSTRMATCH2=found
end function




[julian]

    D1=INT(D)
    F=D-D1-0.5
    J=-1*INT(7*(INT((M+9)/12)+Y)/4)
    IF G=0 THEN goto [850]
    S=SGN(M-9) 'OK, there is no SGN function in LB -- will have to
    'recreate it (done below)
    A=ABS(M-9)
    J1=INT(Y+S*INT(A/7))
    J1=-1*INT((INT(J1/100)+1)*3/4)
[850] J=J+INT(275*M/9)+D1+G*J1
    J=J+1721027+2*G+367*Y
    IF F>=0 THEN goto [870]
    F=F+1
    J=J-1
[870]
    return



[batchprocessing]  ' Main process to read folder to get number of race cards and race results.

'Auto processing so no need for "wait"




   dim info$(10, 10)
    dim raceinfo$(10, 10)
'DefaultDir$ = "C:\"
    files "C:\handibatchresults", "*.xrd", info$(   ' gets number of total files with .xrd extension
print #main.XRDnumbers, "!font Times_New_Roman 12";
    f$ = info$(0, 0)
    numfile = val(f$) ' number of results data files
    print #main.XRDnumbers, numfile

    Gettrim #filetype, 1

    filetype$ = datatype$

    files "C:\handibatchracedata", "*."+ filetype$, raceinfo$(   ' gets number of total files with .jcp extension
print #main.Datanumbers, "!font Times_New_Roman 12";
    rf$ = raceinfo$(0, 0)
    racenumfile = val(rf$)' number of race files
    print #main.Datanumbers, racenumfile

    'if numfile <> racenumfile then
    'notice "Sorry but you are missing a file or two."
   ' goto [main.inputLoop]
   ' end if

cursor hourglass
     for fyle = 1 to numfile  'Start of running the batch processor based on number of XRD files
fileput = 1 'initialize beginning file number for Random access file
raceflag = 0
mount = 1 ' initialize beginning marker number to retrieve horse info from random access file.
     'not sure what this is for just yet   code from prime bet
slot1 = 0
slot2 = 0
slot3 = 0
slot4 = 0
slot5 = 0
slot5 = 0
slot6 = 0
slot7 = 0
slot8 = 0
slot9 = 0
slot10 = 0
slot11 = 0
slot12 = 0

fi$ = info$(fyle, 0)
resultsxrdfile$ = fi$
   ResultsfileName$ = mid$(fi$,1,7) 'get file name without the extension so as to match with data file from data directory




folder$="C:\handibatchresults"
fullFname$= folder$ +"\" + resultsxrdfile$ 

  if resultsxrdfile$<>"" then
                               open fullFname$ for input as #Hdataresults
    End if

                                gosub  [countXRDhorse] ' Get count of horses in the xrd results files.


            for racefyle = 1 to racenumfile 'looping through race fles looking for a file to match results file

racefi$ = raceinfo$(racefyle, 0)
racefile$ = racefi$
   RacefileName$ = mid$(racefi$,1,7) 'get file name without the extension so as to match with data file from data directory

   if ResultsfileName$ = RacefileName$ then EXIT FOR

   Next racefyle

   Racefolder$="C:\handibatchracedata"
   RacefullFname$= Racefolder$ +"\" + racefile$

   open RacefullFname$ for input as #Hdatarace

   gosub  [countracehorse] ' get number of horses in racefile
print #main.tracks, "!font Times_New_Roman 12"
  print #main.tracks, RacefileName$

   gosub [processbatch] ' start of actually processing racecard

   'after race data read in and horse's info put in file now RACERUN is next
'print #main, "!font Times_New_Roman 12"
print #main, "place 100 200"
print #main, "\Race Cards Processed..."
print #main, "place 280 200"
print #main, "\  "; fyle



   Next fyle 'this is just temporary till I get code more done.
cursor normal
    wait





'****************************************

 [countXRDhorse] ' get number of horses in file to get length of file


                            count = 0


                            while not(eof(#Hdataresults))
                                input #Hdataresults, t$


                                count=count+1
                            wend

gettrim #filetype, 1
 if datatype$ = "drf" or datatype$ = "mcp" then ' set up for jcp or Bris files
     numberXRDhorses = count/ 127
ELSE
     numberXRDhorses = count/ 254
END if

close #Hdataresults

return
'chchchchchchchchchchchchchchchchch

 [countracehorse] ' get number of horses in file to get length of file


                            count = 0


                            while not(eof(#Hdatarace))
                                input #Hdatarace, t$


                                count=count+1
                            wend


                            numberhorses = count/ 1435

close #Hdatarace

return




'________________________________________________________________



'
'Make Directories for program to access

[makedirectories]


result = mkdir( "C:\handibatchracedata")
  if result <> 0 then notice "Directory already Exists!"

result = mkdir( "C:\handibatchresults")
  if result <> 0 then notice "Directory already Exists!"
goto [main.inputLoop]

'PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP

 [processbatch] ' start here when a matching result file and race file are found. First thing is to read xrd file and get list of all horses
 ' beginning of race card processing.  read in all the horse info and process and write to csv file then circle back to next race card
 'and so on.

 gosub [xrdRead] ' read in the data from the result file
 gosub [readracefile] ' read in the data of hosre in racefile that actually ran in the race that matches results file.
 gosub [runrace]' where we process each race







 a = 1
[loopback] ' see if this will take care of a quarterhose race in the middle
 Return ' to the fyle cycle moving though the folder of race cards


'____________________________________________________________________________

[xrdRead]



if datatype$ = "drf" or datatype$ = "mcp" then  'set up for number of the data fields

xrdfields = 126
ELSE
xrdfields = 253
END if




     open fullFname$ for input as #XRDHdata '---------OPEN FILE AND START READING DATA IN TO MASTER ARRAY READY FOR PROCESSING.
        for zz = 0 to numberXRDhorses-1

            for y = 0 to xrdfields
                'Master$(y)= inputto$(#Hdata,",")

                '************* This is the added code *****************
                temp$=inputto$(#XRDHdata,",")
                If Left$(temp$,1) = Chr$(34) AND Right$(temp$,1)<> CHR$(34) Then
                    'backone is just a marker -- when it's = 1 (true) then there were commas in the race comments fields
                    'y=y-1 makes sure that the field number doesn't change if there were commas
                    backone=1:adjust$=temp$: y=y-1':print adjust$
                Else
                    If backone=1 then
                        If Right$(temp$,1) <> CHR$(34) then
                            adjust$=adjust$ + ", " + temp$:y=y-1':print "This is the new adjust$ ";adjust$
                        Else
                            temp$=adjust$ + ", " + temp$:backone=0':Print "This is the new temp$ ";temp$
                        end if
                    end if
                    If backone = 0 then XRDMaster$(y)=temp$
                end if
                '*************************************************

            next y

            l = len(XRDMaster$(19))


            XRDaray$(zz,0) = mid$(XRDMaster$(19),2,l-2) ' horse name
            XRDaray$(zz,1) = XRDMaster$(29) ' finish position
            XRDaray$(zz,2) = XRDMaster$(36) ' odds
            XRDaray$(zz,3) = XRDMaster$(49) ' Program number
            XRDaray$(zz,4) = XRDMaster$(4)  ' Surface
            XRDaray$(zz,5) = XRDMaster$(47) 'number of horses in the field
            XRDaray$(zz,6) = XRDMaster$(15) ' final time
            XRDaray$(zz,7) = XRDMaster$(74) ' win payoff
            XRDaray$(zz,8) = XRDMaster$(75) ' place payoff
            XRDaray$(zz,9) = XRDMaster$(76) ' show payoff

    next zz


close #XRDHdata ' close so when next fyle needed to be processed prog doesn;t crash.
return


'rdrdrdrdrdrdrdrdrdrdrdrdrdrdrdrdrd

[readracefile]


fileput = 1
raceflag = 0
recordnumberfiles = 1
firstracenum = 0
racesstart = 1

     open RacefullFname$ for input as #Hdatarace '---------OPEN FILE AND START READING DATA IN TO MASTER ARRAY READY FOR PROCESSING.

setracerecord = 0
        for Horseput = 0 to numberhorses-1



            for horsedataX = 0 to 1434
                'Master$(y)= inputto$(#Hdata,",")

                '************* This is the added code *****************
                temp$=inputto$(#Hdatarace,",")
                If Left$(temp$,1) = Chr$(34) AND Right$(temp$,1)<> CHR$(34) Then
                    'backone is just a marker -- when it's = 1 (true) then there were commas in the race comments fields
                    'y=y-1 makes sure that the field number doesn't change if there were commas
                    backone=1:adjust$=temp$: horsedataX=horsedataX-1':print adjust$
                Else
                    If backone=1 then
                        If Right$(temp$,1) <> CHR$(34) then
                            adjust$=adjust$ + ", " + temp$:horsedataX=horsedataX-1':print "This is the new adjust$ ";adjust$
                        Else
                            temp$=adjust$ + ", " + temp$:backone=0':Print "This is the new temp$ ";temp$
                        end if
                    end if
                    If backone = 0 then Master$(horsedataX)=temp$
                end if
                '*************************************************
            next horsedataX
racesrun =  Val(Master$(2)) ' get number of races on the race card.
if firstracenum = 0 then
racesstart = Val(Master$(2))
 firstracenum = 1
end if

l = len(Master$(44))
                            HorseName$ = mid$(Master$(44),2,l-2)

   for horsehasrun = 0 to numberXRDhorses-1
   match = 0
        horsecontrol = horsehasrun + 1 ' keep running total of horses checked.
             HorseName1$ = XRDaray$(horsehasrun,0)
         if  HorseName$ = HorseName1$ then
                match = 1
                            finishPos$ =  XRDaray$(horsehasrun,1) ' finish position
           finishOdds$ = XRDaray$(horsehasrun,2)  ' odds
           prognum$ = XRDaray$(horsehasrun,3) ' Program number
           todayssurface$  = XRDaray$(horsehasrun,4)
           field$ = XRDaray$(horsehasrun,5)
           Win$ = XRDaray$(horsehasrun,7)
           Place$ = XRDaray$(horsehasrun,8)
           Show$ =  XRDaray$(horsehasrun,9)



          End if

        if  match = 1 then Exit For

        Next

         If  match = 0 then

         goto [horsescratched]
         end if

if val(Master$(2)) <> 0 then
                totalracesone = val(Master$(2))
            end if

          l = len(Master$(9))
            trk1cond$ = Left$((mid$(Master$(9),2,l-2)), 1)
            trk1cond22$ = Mid$(Master$(9),3,1)
            trk1cond33$ = Right$((mid$(Master$(9),2,l-2)), 1)
            If trk1cond33$ = "M" Then trk1cond33$ = "Fillies and Mares"
            If trk1cond33$ = "C" Then trk1cond33$ = "Colts and/or Geldings"
            If trk1cond33$ = "F" Then trk1cond33$ = "Fillies"
            If trk1cond33$ = "N" Then trk1cond33$ = ""
            If trk1cond22$ = "U" Then trk1cond22$ = "And Up"
            If trk1cond22$ <> "And Up" Then trk1cond22$ = ""
            If trk1cond$ = "A" Then trk1cond$ = "2 Year Olds"
            If trk1cond$ = "B" Then trk1cond$ = "3 Year Olds"
            If trk1cond$ = "C" Then trk1cond$ = "4 Year Olds"
            If trk1cond$ = "D" Then trk1cond$ = "5 Year Olds"
            If trk1cond$ = "E" Then trk1cond$ = "3 & 4 Year Olds"
            If trk1cond$ = "F" Then trk1cond$ = "4 & 5 Year Olds"
            If trk1cond$ = "G" Then trk1cond$ = "3; 4; & 5 Year Olds"
            If trk1cond$ = "H" Then trk1cond$ = "ALL AGES"
'=============================================================
            if trk1cond33$ = "" then
               agesexrestrictions$ = trk1cond$
             Else
            agesexrestrictions$ = trk1cond33$ +" " + trk1cond22$ + " " + trk1cond$ '-----GOES INTO RACE RECORD
            End If
'=============================================================

            l = len(Master$(6))
            trk1surf$ =Mid$(Master$(6), 2, 1)


'========================================================================
            'If Left$(Master$(6), 1) = "-" Then trk1surf = "Down Hill Turf"                             '(Master$(6) is distance not surface?)
            'If Left$(Master$(6), 1) = "-" Then Master$(6) = Mid$(Master$(6), 2, Len(Master$(6)) - 1)
            If trk1surf$ = "T" Then trk1surf$ = "Turf"
            If trk1surf$ = "t" Then trk1surf$ = "Inner Turf"
            If trk1surf$ = "D" Then trk1surf$ = "Dirt"
            If trk1surf$ = "d" Then trk1surf$ = "Inner Dirt"

            surface$ =  trk1surf$

            trk1surf2$ =Mid$(Master$(6), 2, 1)
'====================================================================   TRACK SURFACE FOR TODAY'S RACE

            l = len(Master$(0))
            Track1$ = UPPER$(LEFT$((mid$(Master$(0),2,l-2)),3))

            trac$ = Track1$'-------------------------------------------TRACK NAME FOR RACE RECORD
'====================================================================


            l = len(Master$(1))
            trk1Date$ = mid$(Master$(1),2,l-2)
            trk1currentyear$ = left$((mid$(Master$(1),2,l-2)), 4)
            trk1monthday$ = right$((mid$(Master$(1),2,l-2)), 4)
            trk1currentmonth$ = left$(trk1monthday$,2)
            trk1currentday$ = right$(trk1monthday$,2)
            trk1currentyear = val(trk1currentyear$)
            trk1currentmonth = val(trk1currentmonth$)
            trk1currentday = val(trk1currentday$)

            racedate$ = trk1currentmonth$ + "/" + trk1currentday$ + "/" + trk1currentyear$
'==============================================================================================TODAY'S RACE DATE INTO TRACK RECORD


            trk1Purse = val(Master$(11))

            purse = trk1Purse' -------------------------------------------------TODAY'S RACE PURSE INTO TRACK RECORD
'=========================================================================


            trk1Racenumber = val(Master$(2))

            racenumber = trk1Racenumber '-----------------------------------RACE NUMBER INTO TRACK RECORD
'=========================================================================


           ' if val(Master$(5))/220 > 8.29 and val(Master$(5))/220 < 8.4 then
           '     todaysdistance = 8.3
           ' else


           if val(Master$(5))< 0 then trk1todaysdistance = (val(Master$(5)) - (val(Master$(5)) + val(Master$(5))))/220 ' todays distance
           if val(Master$(5))> 0 then trk1todaysdistance = val(Master$(5))/220  ' todays distance
           ' end if

           racedistance = trk1todaysdistance '--------------------------RACE DISTANCE FOR TRACK RECORD
'========================================================================

            l = len(Master$(1373))
                trk1postt$ = mid$(Master$(1373),2,l-2)
                trk1posttime$ = left$(trk1postt$,7)
                if right$(trk1posttime$,1) = "/" then trk1posttime2$ = left$(trk1posttime$,6)
                if right$(trk1posttime$,1) = ")" then trk1posttime2$ = left$(trk1posttime$,7)


            l = len(Master$(10))
            trk1RaceClassification$ = mid$(Master$(10),2,l-2)

            raceclassification$ = trk1RaceClassification$ '--------------------RACE CLASSIFICATION FOR TRACK RECORD
'===========================================================================

            l = len(Master$(238))
            trk1statebred$ = mid$(Master$(238),2,l-2)

            if val(Master$(2))  > racerecord - 1 then  ' have to watch this carefully!
                racecount = racecount + 1
                racerecord = racerecord + 1
            end if

            if val(Master$(5)) < 0 then distyards = val(Master$(5)) - (val(Master$(5)) + val(Master$(5)))
            if val(Master$(5)) > 0 then distyards = val(Master$(5))

            if val(Master$(5)) < 0 then trk1distyards = val(Master$(5)) - (val(Master$(5)) + val(Master$(5)))
            if val(Master$(5)) > 0 then trk1distyards = val(Master$(5))




     if trk1distyards = 880 then trk1distance$ = "4f"
     if trk1distyards = 990 then trk1distance$ = "4 1/2f"
     if trk1distyards = 1100 then trk1distance$ = "5f"
     if trk1distyards = 1210 then trk1distance$ = "5 1/2f"
     if trk1distyards = 1320 then trk1distance$ = "6f"
     if trk1distyards = 1430 then trk1distance$ = "6 1/2f"
     if trk1distyards = 1540 then trk1distance$ = "7f"
     if trk1distyards = 1650 then trk1distance$ = "7 1/2f"
     if trk1distyards = 1760 then trk1distance$ = "1m"
     if trk1distyards = 1800 then trk1distance$ = "1m 40yd"
     if trk1distyards = 1830 then trk1distance$ = "1m 70yd"
     if trk1distyards = 1870 then trk1distance$ = "1 1/16m"
     if trk1distyards = 1980 then trk1distance$ = "1 1/8m"
     if trk1distyards = 2090 then trk1distance$ = "1 3/16m"
     if trk1distyards = 2200 then trk1distance$ = "1 1/4m"
     if trk1distyards = 2310 then trk1distance$ = "1 5/16m"
     if trk1distyards = 2420 then trk1distance$ = "1 3/8m"
     if trk1distyards = 2530 then trk1distance$ = "1 7/16m"
     if trk1distyards = 2640 then trk1distance$ = "1 1/2m"
     if trk1distyards = 2860 then trk1distance$ = "1 5/8m"
     if trk1distyards = 3080 then trk1distance$ = "1 3/4m"
     if trk1distyards = 3300 then trk1distance$ = "1 7/8m"
     if trk1distyards = 3520 then trk1distance$ = "2m"
     if trk1distyards = 3630 then trk1distance$ = "2 1/16m"
     if trk1distyards = 4180 then trk1distance$ = "2 3/8m"
     if trk1distyards = 4400 then trk1distance$ = "2 1/2m"

     racedistancetext$ = trk1distance$ '--------------------------RACE DISTANCE IN A STRING FORMAT
'=============================================================================



     l = len(Master$(224))
textstring$ = mid$(Master$(224),2,l-2)

trk1hurdles$ = ""
If instr(textstring$, "national fences") > 0 then trk1hurdles$ = "Hurdles"
If instr(textstring$, "NATIONAL FENCES") > 0 then trk1hurdles$ = "Hurdles"
If instr(textstring$, "hurdles") > 0 then trk1hurdles$ = "Hurdles"
If instr(textstring$, "HURDLES") > 0 then trk1hurdles$ = "Hurdles"


     l = len(Master$(239))
     trk1wage$ = mid$(Master$(239),2,l-2)
     l = len(Master$(240))
     trk1wage2$ = mid$(Master$(240),0)

     if totalracesone <> setracerecord then



       Put #racedat, val(Master$(2))   '-----------------PUT TRACK INFO IN RANDOM ACCESS FILE FOR DAYS HANDICAPPING

setracerecord = totalracesone

End If




'After reading in individual horse data into master array then process that info in workpad
goto [workpadBatch]


[bachtoworkpad1Batch]






         gosub [racehorsesbatch]

         HorseKey$ = RacefileName$ + str$(racenumber)'------------CREATE HORSE KEY WITH TRACK CODE AND RACENUMBER
PUT #horse1, fileput'-------------------WRITE HORSE INFO TO RANDOM ACCESS FILE
fileput = fileput + 1



[horsescratched]

mmmm = 0 'just a seperator between the two






next Horseput  ' this takes us to next horse


tachnumberbatch = 1

        batchhorses(0,0) = batchRone
        batchhorses(0,1) = batchRtwo
        batchhorses(0,2) = batchRthree
        batchhorses(0,3) = batchRfour
        batchhorses(0,4) = batchRfive
        batchhorses(0,5) = batchRsix
        batchhorses(0,6) = batchRseven
        batchhorses(0,7) = batchReight
        batchhorses(0,8) = batchRnine
        batchhorses(0,9) = batchRten
        batchhorses(0,10) = batchReleven
        batchhorses(0,11) = batchRtwelve
        batchhorses(0,12) = batchRthirteen
        batchhorses(0,13) = batchRfourteen
        batchhorses(0,14) = batchRfifteen

        batchmarkers(0,0) = 1
        batchmarkers(0,1) = 1 + batchRone
        batchmarkers(0,2) = batchRtwo + batchRone + 1
        batchmarkers(0,3) = batchRthree + batchRtwo + batchRone + 1
        batchmarkers(0,4) = batchRfour + batchRthree + batchRtwo + batchRone + 1
        batchmarkers(0,5) = batchRfive + batchRfour + batchRthree + batchRtwo + batchRone + 1
        batchmarkers(0,6) = batchRsix + batchRfive + batchRfour + batchRthree + batchRtwo + batchRone + 1
        batchmarkers(0,7) = batchRseven + batchRsix + batchRfive + batchRfour + batchRthree + batchRtwo + batchRone + 1
        batchmarkers(0,8) = batchReight + batchRseven + batchRsix + batchRfive + batchRfour + batchRthree + batchRtwo + batchRone + 1
        batchmarkers(0,9) = batchRnine + batchReight + batchRseven + batchRsix + batchRfive + batchRfour + batchRthree + batchRtwo + batchRone + 1
        batchmarkers(0,10) = batchRten + batchRnine + batchReight + batchRseven + batchRsix + batchRfive + batchRfour + batchRthree + batchRtwo + batchRone + 1
        batchmarkers(0,11) = batchReleven + batchRten + batchRnine + batchReight + batchRseven + batchRsix + batchRfive + batchRfour + batchRthree + batchRtwo + batchRone + 1
        batchmarkers(0,12) = batchRtwelve + batchReleven + batchRten + batchRnine + batchReight + batchRseven + batchRsix + batchRfive + batchRfour + batchRthree + batchRtwo + batchRone + 1
        batchmarkers(0,13) = batchRthirteen +  batchRtwelve + batchReleven + batchRten + batchRnine + batchReight + batchRseven + batchRsix + batchRfive + batchRfour + batchRthree + batchRtwo + batchRone + 1
        batchmarkers(0,14) = batchRfourteen + batchRthirteen +  batchRtwelve + batchReleven + batchRten + batchRnine + batchReight + batchRseven + batchRsix + batchRfive + batchRfour + batchRthree + batchRtwo + batchRone + 1


gosub [batchclrracehorses]


        race1 = 1
        close #Hdatarace




return




'WPWPWPWPWPWPWPWPWPWPWPWPWPWPWPWP   START THE WORKPAD GETTING HORSE NUMBERS FOR RANDOM ACCESS FILE


[workpadBatch]     ' Here's where we will do all the handicapping work. Guts of the programming.



                            l = len(Master$(42))
                            Saddlecloth$ = mid$(Master$(42),2,l-2)
                            programnum =  val(Master$(42))
                            mornlineodds = Val(Master$(43))
                            weight = Val(Master$(50))
                            l = len(Master$(22))
                            Breed$ = mid$(Master$(22),2,l-2)

                            l = len(Master$(1))
                            racedate$ = mid$(Master$(1),2,l-2)
                            l = len(Master$(0))
                            trac$ =  mid$(Master$(0),2,l-2)
    l = len(Master$(3))
racenumber = Val(mid$(Master$(3),2,l-2))
l = len(Master$(8))
racetype$ = mid$(Master$(8),2,l-2)



           trk1todaysdistance = val(Master$(5))

    if mornlineodds = 0.10 then ml$ = "1/9"
    if mornlineodds = 0.11 then ml$ = "1/9"
    if mornlineodds = 0.20 then ml$ = "1/5"
    if mornlineodds = 0.25 then ml$ = "1/5"
    if mornlineodds = 0.40 then ml$ = "2/5"
    if mornlineodds = 0.50 then ml$ = "1/2"
    if mornlineodds = 0.60 then ml$ = "3/5"
    if mornlineodds = 0.80 then ml$ = "4/5"
    if mornlineodds = 1.00 then ml$ = "EVEN"
    if mornlineodds = 1.20 then ml$ = "6/5"
    if mornlineodds = 1.40 then ml$ = "7/5"
    if mornlineodds = 1.50 then ml$ = "3/2"
    if mornlineodds = 1.60 then ml$ = "8/5"
    if mornlineodds = 1.80 then ml$ = "9/5"
    if mornlineodds = 2.00 then ml$ = "2-1"
    if mornlineodds = 2.50 then ml$ = "5/2"
    if mornlineodds = 3.00 then ml$ = "3-1"
    if mornlineodds = 3.50 then ml$ = "7/2"
    if mornlineodds = 4.00 then ml$ = "4-1"
    if mornlineodds = 4.50 then ml$ = "9/2"
    if mornlineodds = 5.00 then ml$ = "5-1"
    if mornlineodds = 6.00 then ml$ = "6-1"
    if mornlineodds = 7.00 then ml$ = "7-1"
    if mornlineodds = 8.00 then ml$ = "8-1"
    if mornlineodds = 9.00 then ml$ = "9-1"
    if mornlineodds = 10.00 then ml$ = "10-1"
    if mornlineodds = 11.00 then ml$ = "11-1"
    if mornlineodds = 12.00 then ml$ = "12-1"
    if mornlineodds = 13.00 then ml$ = "13-1"
    if mornlineodds = 14.00 then ml$ = "14-1"
    if mornlineodds = 15.00 then ml$ = "15-1"
    if mornlineodds = 16.00 then ml$ = "16-1"
    if mornlineodds = 17.00 then ml$ = "17-1"
    if mornlineodds = 18.00 then ml$ = "18-1"
    if mornlineodds = 19.00 then ml$ = "19-1"
    if mornlineodds = 20.00 then ml$ = "20-1"
    if mornlineodds = 21.00 then ml$ = "21-1"
    if mornlineodds = 22.00 then ml$ = "22-1"
    if mornlineodds = 23.00 then ml$ = "23-1"
    if mornlineodds = 24.00 then ml$ = "24-1"
    if mornlineodds = 25.00 then ml$ = "25-1"
    if mornlineodds = 26.00 then ml$ = "26-1"
    if mornlineodds = 27.00 then ml$ = "27-1"
    if mornlineodds = 28.00 then ml$ = "28-1"
    if mornlineodds = 29.00 then ml$ = "29-1"
    if mornlineodds = 30.00 then ml$ = "30-1"
    if mornlineodds = 35.00 then ml$ = "35-1"
    if mornlineodds = 40.00 then ml$ = "40-1"
    if mornlineodds = 45.00 then ml$ = "45-1"
    if mornlineodds = 50.00 then ml$ = "50-1"
    if mornlineodds = 55.00 then ml$ = "55-1"
    if mornlineodds = 60.00 then ml$ = "60-1"
    if mornlineodds = 65.00 then ml$ = "65-1"
    if mornlineodds = 70.00 then ml$ = "70-1"
    if mornlineodds = 75.00 then ml$ = "75-1"
    if mornlineodds = 80.00 then ml$ = "80-1"

                            l = len(Master$(3))
                            post$ = mid$(Master$(3),2,l-2)

                             l = len(Master$(6))
                            todayssurface$ = mid$(Master$(6),2,l-2)

'l = len(Master$(224))
'textstring$ = mid$(Master$(224),2,l-2)

'hurdles$ = ""
'If instr(textstring$, "national fences") > 0 then hurdles$ = "Hurdles"
'If instr(textstring$, "NATIONAL FENCES") > 0 then hurdles$ = "Hurdles"
'If instr(textstring$, "hurdles") > 0 then hurdles$ = "Hurdles"
'If instr(textstring$, "HURDLES") > 0 then hurdles$ = "Hurdles"

primepower = val(Master$(250)) ' bris prime power rating for horse


 'surfaces horse ran on
surface1$ = Mid$(Master$(325),2,1)
surface2$ = Mid$(Master$(326),2,1)
surface3$ = Mid$(Master$(327),2,1)
surface4$ = Mid$(Master$(328),2,1)
surface5$ = Mid$(Master$(329),2,1)
surface6$ = Mid$(Master$(330),2,1)
surface7$ = Mid$(Master$(331),2,1)
surface8$ = Mid$(Master$(332),2,1)
surface9$ = Mid$(Master$(333),2,1)
surface10$ = Mid$(Master$(334),2,1)


fts = 0  'is the horse a first time starter
if surface1$ = "" and surface2$ = "" and surface3$ = "" and surface4$ = "" and surface5$ = "" and surface6$ = "" and surface7$ = "" and surface8$ = "" and surface9$ = "" and surface10$ = "" and primepower = 0 then fts = 1

fts$ = ""
if fts = 1 then fts$ = "FTS"



                            If Val(Master$(96)) < 1 Then
                                firster = 1 ' check to see if first time starter

                                goto [firsttimeBatch]
                            end if

                            If Val(Master$(96)) < 1 Then
                                aps = 0
                            else                       ' (check for first time starter)
                                aps = roundoff(((Val(Master$(100)) / Val(Master$(96))) / 1000),0)                '(number representing average purse size)
                            end if


                            frmpts = 0
                            frmptssing = 0
                            frmptstot = 0
                            wkt1 = 0                                            '(initializing variables)
                            wkt2 = 0
                            espt = 0
                            frmpts3 = 0
                            bestof3 = 0
                            best2 = 0


                            daysl = 0
                            aa = 0
                            If Val(Master$(223)) > 270 Then daysl = 1
                            If Val(Master$(223)) < 90 Then daysl = 2
                            If Val(Master$(223)) < 25 Then daysl = 3
                            aaa = daysl
                            If daysl <> 0 Then frmpts = frmpts + 1             '(starting to accumalate form points)
                            daysaway =  Val(Master$(223))                     '(getting days since last race)

                            '********************
                            bbb = 0

                            If Val(Master$(1125)) = 1 Then frmpts = frmpts + 1             '(fav indicator)
                            If Val(Master$(1125)) = 1 Then bbb = 3

                            '****************
                            ccc = 0
                            l = len(Master$(6))
                            If mid$(Master$(6),2,l-2) = "D" And Val(Master$(1332)) > 0 Then frmpts = frmpts + 1      '(form pts based on surface wins)
                            If mid$(Master$(6),2,l-2) = "D" And Val(Master$(1332)) > 0 Then ccc = 3
                            If mid$(Master$(6),2,l-2) = "D" And Val(Master$(1332)) > 0 Then GoTo [iskipitBatch]
                            If mid$(Master$(6),2,l-2) = "d" And Val(Master$(1332)) > 0 Then frmpts = frmpts + 1
                            If mid$(Master$(6),2,l-2) = "d" And Val(Master$(1332)) > 0 Then ccc = 3
                            If mid$(Master$(6),2,l-2) = "d" And Val(Master$(1332)) > 0 Then GoTo [iskipitBatch]
                            If mid$(Master$(6),2,l-2) = "T" And Val(Master$(75)) > 0 Then frmpts = frmpts + 1
                            If mid$(Master$(6),2,l-2) = "T" And Val(Master$(75)) > 0 Then ccc = 3
                            If mid$(Master$(6),2,l-2) = "T" And Val(Master$(75)) > 0 Then GoTo [iskipitBatch]
                            If mid$(Master$(6),2,l-2) = "t" And Val(Master$(75)) > 0 Then frmpts = frmpts + 1
                            If mid$(Master$(6),2,l-2) = "t" And Val(Master$(75)) > 0 Then ccc = 3
                            If mid$(Master$(6),2,l-2) = "t" And Val(Master$(75)) > 0 Then GoTo [iskipitBatch]
                            If mid$(Master$(24),2,l-2) = "A"  And Val(Master$(231)) > 0 Then frmpts = frmpts + 1
                            If mid$(Master$(24),2,l-2) = "A" And Val(Master$(231)) > 0 Then ccc = 3

[iskipitBatch]

                            '************
                            l = len(Master$(615))
                            ddd = 0
                            If Val(mid$(Master$(615),2,l-2)) < 4 Or Val(mid$(Master$(616),2,l-2)) < 4 Or Val(mid$(Master$(617),2,l-2)) < 4 Then frmpts = frmpts + 1  '(checking finish pos)
                            If Val(mid$(Master$(615),2,l-2)) < 4 Or Val(mid$(Master$(616),2,l-2)) < 4 Or Val(mid$(Master$(617),2,l-2)) < 4 Then ddd = 3
                            '*********************************************
                            eee = 0
                            If Val(Master$(61)) = 4 Then frmpts = frmpts + 1               '(medication check)
                            If Val(Master$(61)) = 4 Then eee = 2
                            '**************************************************
                            fff = 0
                            If Val(Master$(63)) = 1 Or Val(Master$(63)) = 2 Then frmpts = frmpts + 1     '(equipment check)
                            If Val(Master$(63)) = 1 Or Val(Master$(63)) = 2 Then fff = 2
                            '************************************************
                            l = len(Master$(1045))
                            ggg = 0
                            If mid$(Master$(1045),2,l-2) = "c" Then frmpts = frmpts + 1                '(claim check)
                            If mid$(Master$(1045),2,l-2) = "c" Then ggg = 2
                            '*************************************************

                            hhh = 0
                            If Val(Master$(845)) > Val(Master$(846)) And Val(Master$(846)) > Val(Master$(847)) Then frmpts = frmpts + 1    ' (improving speed number)
                            If Val(Master$(845)) > Val(Master$(846)) And Val(Master$(846)) >Val(Master$(847)) Then hhh = 1
                            iii = 0
                            If Val(Master$(845)) < Val(Master$(846)) And Val(Master$(846)) < Val(Master$(847)) And Val(Master$(847)) < Val(Master$(848)) Then frmpts = frmpts - 1   '(decreasing speed number)
                            If Val(Master$(845)) < Val(Master$(846)) And Val(Master$(846)) < Val(Master$(847)) And Val(Master$(847)) < Val(Master$(848)) Then iii = 1
                            jjj = 0
                            If Val(Master$(845)) = Val(Master$(1327)) Then frmpts = frmpts - 1              '(last speed vs Lifetime best speed)
                            If Val(Master$(845)) = Val(Master$(1327)) Then jjj = 1
                            '******************************************************
                            J = 0
                            y$ = Master$(1)    ' break down work out date to get Julian date
                            year$ = mid$(y$,2,4)
                            year = val(year$)
                            raceyr = year
                            Y = year

                            m$ = Master$(1)
                            month$ = mid$(m$,6,2)
                            racemonth = val(month$)
                            M = racemonth

                            d$ = Master$(1)
                            day$ = mid$(d$,8,2)
                            D = val(day$)
                            racedate = D
                            gosub [julian]
                            raceday = J

                            J = 0
                            y$ = Master$(101)    ' break down date to get Julian date
                            year$ = mid$(y$,2,4)
                            year = val(year$)
                            Y = year

                            m$ = Master$(101)
                            month$ = mid$(m$,6,2)
                            month = val(month$)
                            M = month

                            d$ = Master$(101)
                            day$ = mid$(d$,8,2)
                            D = val(day$)
                            gosub [julian]
                            lastwork = J

                            J = 0
                            y$ = Master$(102)    ' break down date to get Julian date
                            year$ = mid$(y$,2,4)
                            year = val(year$)
                            Y = year

                            m$ = Master$(102)
                            month$ = mid$(m$,6,2)
                            month = val(month$)
                            M = month

                            d$ = Master$(102)
                            day$ = mid$(d$,8,2)
                            D = val(day$)
                            gosub [julian]
                            lastwork2 = J





                            kkk = 0
                            days = raceday - lastwork
                            days2 = raceday - lastwork2
                            If days < 4 And Val(Master$(137))/220 > 2 Then frmpts = frmpts + 1         '(checking for workout  since last race)
                            If days < 4 And Val(Master$(137))/220 > 2 Then kkk = 3

                            If days < 16 And Val(Master$(137))/220 > 4 Then frmpts = frmpts + 1                   '"
                            If days < 16 And Val(Master$(137))/220 > 4 Then kkk = 3

                            If days < 16 And Val(Master$(138))/220 > 3 Then frmpts = frmpts + 1      '( Checking days and distance of 2nd back wrkout)
                            If days < 16 And Val(Master$(138))/220 > 3 Then kkk = 3

                            If days2 < 30 And Val(Master$(137))/220 + Val(Master$(138))/220 + Val(Master$(139))/220 + Val(Master$(140))/220 > 15 Then frmpts = frmpts + 1
                            If days2 < 30 And Val(Master$(137))/220 + Val(Master$(138))/220 + Val(Master$(139))/220 + Val(Master$(140))/220 > 15 Then kkk = 3          '(checking days & dist of 2nd back WO)

                            '********************************************************************************************

                            lll = 0
                            ctl = 0
                            If Val(Master$(575)) < Val(Master$(576)) Then ctl = ctl + 1       ' (checking for improvement of call positions)
                            If Val(Master$(585)) < Val(Master$(586)) Then ctl = ctl + 1
                            If Val(Master$(605)) < Val(Master$(606)) Then ctl = ctl + 1

                            If ctl <> 0 Then frmpts = frmpts + 1
                            lll = ctl
                            '*************************************************************************************************
                            mmm = 0
                            ctl = 0
                            If Val(Master$(645)) < Val(Master$(646)) Then ctl = ctl + 1         '(checking for beaten lengths improvement)
                            If Val(Master$(685)) < Val(Master$(686)) Then ctl = ctl + 1
                            If Val(Master$(725)) < Val(Master$(726)) Then ctl = ctl + 1


                            If ctl <> 0 Then frmpts = frmpts + 1           '(add form points based on previous checks)
                            mmm = ctl

                            '****************************************************************************************************
                            gain = 0
                            nnn = 0
                            l = len(Master$(615))
                            If Val(mid$(Master$(575),2,l-2)) + Val(Master$(665)) > Val(mid$(Master$(615),2,l-2)) + Val(Master$(745)) Then frmpts = frmpts + 1  '(looking for finish less than 1st call and btn lengths)
                            If Val(mid$(Master$(575),2,l-2)) + Val(Master$(665)) > Val(mid$(Master$(615),2,l-2)) + Val(Master$(745)) Then nnn = 3

                            '*****************************************************************************************************
                            ooo = 0
                            If Val(Master$(197)) = 1 And Val(Master$(185)) > 1 Then frmpts = frmpts + 1      ' (checking for rank of workout as best for day)
                            If Val(Master$(197)) = 1 And Val(Master$(185)) > 1 Then ooo = 3
                            If Val(Master$(198)) = 1 And Val(Master$(186)) > 1 Then frmpts = frmpts + 1
                            If Val(Master$(198)) = 1 And Val(Master$(186)) > 1 Then ooo = 3
                            '********************************************************************************************************
                            ppp = 0
                            l = len(Master$(615))
                            If Val(Master$(11)) < Val(Master$(555)) And Val(mid$(Master$(615),2,l-2)) <> 1 Then frmpts = frmpts + 1    '(checking for purse drop and no win)
                            If Val(Master$(11)) < Val(Master$(555)) Then ppp = 3

                            '*********************************************************************************************************
                            yyy = Val(Master$(846))
                            If Val(Master$(845)) > Val(Master$(846)) Then yyy = Val(Master$(845))           '(checking for best of 3 speed numbers)
                            zzz = Val(Master$(847))
                            If Val(Master$(846)) > Val(Master$(847)) Then zzz = Val(Master$(846))

                            bestof3 = ((yyy + zzz) / 2)

                            '*************************************************************************************************************
                            If Val(Master$(65)) > 0 Then frmpts = frmpts + 1        '(form based on wins at today's track and dist)
                            If Val(Master$(70)) > 0 Then frmpts = frmpts + 1
                            '************************************************************************************************************
                            pace = 0
                            l = len(Master$(209))
                            If mid$(Master$(209),2,l-2) = "NA " Then pace = 0
                            If mid$(Master$(209),2,l-2) = "E  " Then pace = Val(Master$(765))    '(pace set based on run style)
                            If mid$(Master$(209),2,l-2) = "E/P" Then pace = Val(Master$(775))
                            If mid$(Master$(209),2,l-2) = "P  " Then pace = Val(Master$(775))
                            If mid$(Master$(209),2,l-2) = "S  " Then pace = Val(Master$(815))
                            runstyle1$ = mid$(Master$(209),2,l-2)
                            yyy = (Val(Master$(775)) + Val(Master$(755)))
                            If (Val(Master$(765)) + Val(Master$(755))) > (Val(Master$(775)) + Val(Master$(755))) Then yyy = (Val(Master$(765)) + Val(Master$(755)))
                            zzz = (Val(Master$(815)) + Val(Master$(755)))
                            If (Val(Master$(775)) + Val(Master$(755))) > (Val(Master$(815)) + Val(Master$(755))) Then zzz = (Val(Master$(775)) + Val(Master$(755)))

                            pace = ((yyy + zzz) / 2)                                           '(calc pace fig)
                            '-----------------------------------------------------
                            '****************************************************************************************************************
                            l = len(Master$(1402))
                            If mid$(Master$(1402),2,l-2) = "" Then Master$(1402) = " "               '(check for all weather surface)
                            If mid$(Master$(1403),2,l-2) = "" Then Master$(1403) = " "
                            If mid$(Master$(1404),2,l-2) = "" Then Master$(1404) = " "

                            '**************************************************************************************************************
                            jperc = 0
                            jst = Val(Master$(1156)) + Val(Master$(1161))            ' (jockey win percent)
                            If jst < 6 Then GoTo [skipitBatch]
                            jw = Val(Master$(1157)) + Val(Master$(1162))
                            If jst < 1 Then jperc = 0
                            If jst < 1 Then GoTo [skipitBatch]
                            jperc = int((jw / jst) * 100)
                            jockey = jperc
[skipitBatch]
                            '**************************************************************************************************************
                            trp = 0
                            trps = Val(Master$(1146)) + Val(Master$(1151))          '(trainer win persent)
                            If trps < 6 Then GoTo [skipitagBatch]
                            trpw = Val(Master$(1147)) + Val(Master$(1152))
                            If trps < 1 Then trp = 0
                            If trps < 1 Then GoTo [skipitagBatch]
                            trp = int((trpw / trps) * 100)
                            trainer = trp
[skipitagBatch]

                            '(beginning of looking at trainer's best category)
                            '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                            tes = 1
                            tes22 = 0
                            ttes$ = ""
                            ttes22$ = ""

                            tr1 = 0
                            trt1$ = ""
                            l = len(Master$(1336))
                            If Val(Master$(1337)) > 5 Then tr1 = Val(Master$(1338))  'assign win%
                            If Val(Master$(1337)) > 5 Then trt1$ = mid$(Master$(1336),2,l-2)

                            tr2 = 0
                            trt2$ = ""
                            l = len(Master$(1341))
                            If Val(Master$(1342)) > 5 Then tr2 = Val(Master$(1343))
                            If Val(Master$(1342)) > 5 Then trt2$ = mid$(Master$(1341),2,l-2)


                            tr3 = 0
                            trt3$ = ""
                            l = len(Master$(1346))
                            If Val(Master$(1347)) > 5 Then tr3 = Val(Master$(1348))
                            If Val(Master$(1348)) > 5 Then trt3$ = mid$(Master$(1346),2,l-2)

                            tr4 = 0
                            trt4$ = ""
                            l = len(Master$(1351))
                            If Val(Master$(1352)) > 5 Then tr4 = Val(Master$(1353))
                            If Val(Master$(1352)) > 5 Then trt4$ = mid$(Master$(1351),2,l-2)

                            tr5 = 0
                            trt5$ = ""
                            l = len(Master$(1356))
                            If Val(Master$(1357)) > 5 Then tr5 = Val(Master$(1358))
                            If Val(Master$(1357)) > 5 Then trt5$ = mid$(Master$(1356),2,l-2)


                            If tes < tr1 Then ttes$ = trt1$
                            If tes < tr1 Then tes = tr1
                            If tes < tr2 Then ttes$ = trt2$
                            If tes < tr2 Then tes = tr2
                            If tes < tr3 Then ttes$ = trt3$
                            If tes < tr3 Then tes = tr3
                            If tes < tr4 Then ttes$ = trt4$
                            If tes < tr4 Then tes = tr4
                            If tes < tr5 Then ttes$ = trt5$
                            If tes < tr5 Then tes = tr5
                            If tes = 1 And ttes$ = "" Then tes = 0
                            '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                            bigfig = Val(Master$(845))
                            l =  len(Master$(325))          '(last 5 speed figs)
                            If mid$(Master$(325),2,l-2) = "T" or mid$(Master$(325),2,l-2) = "t" then
                                surfind = 1
                            else
                                surfind = 0
                            end if
                            l =  len(Master$(305))
                            If mid$(Master$(305),2,l-2) = "MY" then surfind = 2
                            If todaysdistance-(Val(Master$(315))/220) > 1 or  (Val(Master$(315))/220)-todaysdistance > 1 then
                                lenind = 1
                            else
                                lenind = 0
                            end if

                            bigfig1 = Val(Master$(846))
                            l =  len(Master$(326))
                            If mid$(Master$(326),2,l-2) = "T" or mid$(Master$(326),2,l-2) = "t" then
                                surfind1 = 1
                            else
                                surfind1 = 0
                            end if
                            l =  len(Master$(306))
                            If mid$(Master$(306),2,l-2) = "MY" then surfind = 2
                            If todaysdistance-(Val(Master$(316))/220) > 1 or  (Val(Master$(316))/220)-todaysdistance > 1 then
                                lenind1 = 1
                            else
                                lenind1 = 1
                            end if

                            bigfig2 = Val(Master$(847))
                            l =  len(Master$(327))
                            If mid$(Master$(327),2,l-2) = "T" or mid$(Master$(327),2,l-2) = "t" then
                                surfind2 = 1
                            else
                                surfind2 = 0
                            end if
                            l =  len(Master$(307))
                            If mid$(Master$(307),2,l-2) = "MY" then surfind = 2
                            If todaysdistance-(Val(Master$(317))/220) > 1 or  (Val(Master$(317))/220)-todaysdistance > 1 then
                                lenind2 = 1
                            else
                                lenind2 = 0
                            end if

                            bigfig4 = Val(Master$(848))


                            bigfig5 = Val(Master$(850))
                            '*******************************************************************************************************
                            uuu = 0
                            l = len(Master$(42))
                            programnum$ = mid$(Master$(42),2,l-2)



                            If Val(Master$(210)) = 0 Or Val(Master$(210)) = 1 Or Val(Master$(210)) = 2 Then esp$ = "L"    '(quirin point label)
                            If Val(Master$(210)) > 2 And Val(Master$(210)) < 7 Then esp$ = "M"
                            If Val(Master$(210)) = 7 Or Val(Master$(210)) = 8 Then esp$ = "H"
                            quirinstyle$ = esp$
                            '********************************************************************************************************
                            l = len(Master$(40))
                            If mid$(Master$(40),2,l-2) = "M" Then addit$ = ",MT"                     '(main track flag)
                            If mid$(Master$(40),2,l-2) = "A" Then addit$ = ",AE"
                            If mid$(Master$(40),2,l-2) <> "M" And mid$(Master$(40),2,l-2) <> "A" Then addit$ = ""
                            '**********************************************************************************************************
                            If Val(Master$(1156)) + Val(Master$(1161)) < 1 Then GoTo [yipitBatch]                      '(looking at jockey sts this and last year)
                            If (Val(Master$(1156)) + Val(Master$(1161))) > 5 Then jperc = int((Val(Master$(1157)) + Val(Master$(1162))) / (Val(Master$(1156)) + Val(Master$(1161))) * 100)
[yipitBatch]
                            If (Val(Master$(1156)) + Val(Master$(1161))) < 6 Then jperc = 0     '(jockey win percentage)

                            '*************************************************************************************************************
                            ert = 0
                            If Val(Master$(845)) <> 0 Then ert = ert + 1         ' (looking at last 3 speed figs)
                            If Val(Master$(846)) <> 0 Then ert = ert + 1
                            If Val(Master$(847)) <> 0 Then ert = ert + 1


                            If Val(Master$(745)) > 10 Then Master$(745) = "10"              '(checking for beaten lengths over 10)
                            If Val(Master$(725)) > 10 Then Master$(725) = "10"
                            If Val(Master$(746)) > 10 Then Master$(746) = "10"
                            If Val(Master$(726)) > 10 Then Master$(726) = "10"
                            If Val(Master$(747)) > 10 Then Master$(747) = "10"
                            If Val(Master$(727)) > 10 Then Master$(727) = "10"   ' don't forget the l = len(Master$(number)) isn't needed with these format changed



                            avsp = 0
                            ert = 0
                            If Val(Master$(845)) <> 0 Then ert = ert + 1                         '( Checking for speed figs in last 5 races)
                            If Val(Master$(846)) <> 0 Then ert = ert + 1
                            If Val(Master$(847)) <> 0 Then ert = ert + 1
                            If Val(Master$(848)) <> 0 Then ert = ert + 1
                            If Val(Master$(849)) <> 0 Then ert = ert + 1

                            If ert < 1 Then GoTo [ertzer14Batch]
                            avsp = ((Val(Master$(845)) + Val(Master$(846)) + Val(Master$(847)) + Val(Master$(848)) + Val(Master$(849))) / ert)   ' (average speed rating)
                            class = int(avsp)
[ertzer14Batch]
                            avlp = 0
                            ert = 0
                            If Val(Master$(815)) <> 0 Then ert = ert + 1
                            If Val(Master$(816)) <> 0 Then ert = ert + 1
                            If Val(Master$(817)) <> 0 Then ert = ert + 1
                            If Val(Master$(818)) <> 0 Then ert = ert + 1
                            If Val(Master$(819)) <> 0 Then ert = ert + 1

                            If ert < 1 Then GoTo [ertzer15Batch]
                            avlp = roundoff(((Val(Master$(815)) + Val(Master$(816)) + Val(Master$(817)) + Val(Master$(818)) + Val(Master$(819))) / ert),0)   ' (average late pace)
                            latepace = avlp
[ertzer15Batch]

                            avep = 0
                            ert = 0
                            If Val(Master$(765)) <> 0 Then ert = ert + 1
                            If Val(Master$(766)) <> 0 Then ert = ert + 1
                            If Val(Master$(767)) <> 0 Then ert = ert + 1
                            If Val(Master$(768)) <> 0 Then ert = ert + 1
                            If Val(Master$(769)) <> 0 Then ert = ert + 1

                            If ert < 1 Then GoTo [ertzer16Batch]
                            avep = roundoff(((Val(Master$(765)) + Val(Master$(766)) + Val(Master$(767)) + Val(Master$(768)) + Val(Master$(769))) / ert),0)  '(avg 2F pace)
                            earlypace = avep
[ertzer16Batch]

                            '************************************************************************************************************
                            l = len(Master$(42))
                            programnum = Val(mid$(Master$(42),2,l-2))                                     ' (program number)
                            hn = hn + 1

                            aps =  aps * (((tes + jperc) / 2) / 100)   '(avg purse size number times trainer and Jockey win percent / 100)
                            '*****************************************************************************************************************


                            aw = 0
                            ds = 0
                            cn = 1
                            my = 0
                            tf = 0
                            avp = 0
                            cnn = 1
                            dt = 0



                            '(getting dist-turf-mud rating based on numbers or pedigree)
                            '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                            l = len(Master$(1266))
                            If Val(Master$(1180)) = 0 Then ds = Val(mid$(Master$(1266),2,l-2)) 'dist pedigree
                            If Val(Master$(1180)) > 0 And Val(mid$(Master$(1266),2,l-2)) = 0 Then ds = Val(Master$(1180)) 'best distspd
                            If Val(Master$(1180)) > 0 And Val(mid$(Master$(1266),2,l-2)) > 0 Then ds = roundoff(((Val(Master$(1180)) + Val(mid$(Master$(1266),2,l-2)))/2),0) 'distspd
                            distspd = ds

                            l = len(Master$(1265))
                            If Val(Master$(1178)) = 0 Then tf = Val(mid$(Master$(1265),2,l-2)) 'turf pedigree
                            If Val(Master$(1178)) > 0 And Val(mid$(Master$(1265),2,l-2)) = 0 Then tf = Val(Master$(1178)) 'best turfspd
                            If Val(Master$(1178)) > 0 And Val(mid$(Master$(1265),2,l-2)) > 0 Then tf = roundoff(((Val(Master$(1178)) + Val(mid$(Master$(1265),2,l-2)))/2),0) 'turfspd
                            turf = tf

                            l = len(Master$(1264))
                            If Val(Master$(1179)) = 0 Then my = Val(mid$(Master$(1264),2,l-2)) 'mud pedigree
                            If Val(Master$(1179)) > 0 And Val(mid$(Master$(1264),2,l-2)) = 0 Then my = Val(Master$(1179))  'best mudspd
                            If Val(Master$(1179)) > 0 And Val(mid$(Master$(1264),2,l-2)) > 0 Then my = roundoff(((Val(Master$(1179)) + Val(mid$(Master$(1264),2,l-2)))/2),0) ' mudspd
                            muddy = my
                            '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                            If Val(Master$(235)) > 0 Then
                                aw = Val(Master$(235)) 'aw     (best all weather speed number)
                                allweath = aw
                            else
                                allweath = 0
                            end if

                            If Val(Master$(85)) > 5 then
                            starts = Val(Master$(85))
                            winnum = Val(Master$(86))* .6
                            placenum = Val(Master$(87))* .2
                            shownum = Val(Master$(88))* .1
                            if winnum+placenum+shownum > 0 then
                            AvPur = Val(Master$(89))/ (winnum+placenum+shownum) ' avg purse size
                            Else
                            AvPur = 0
                            End if

                            ELSE
                             starts = Val(Master$(85))+ Val(Master$(91))
                            winnum = (Val(Master$(86))+ Val(Master$(92)))* .6
                            placenum = (Val(Master$(87))+ Val(Master$(93)))* .2
                            shownum = (Val(Master$(88))+ Val(Master$(94)))* .1
                             if winnum+placenum+shownum > 0 then
                             AvPur = (Val(Master$(89))+ Val(Master$(95)))/ (winnum+placenum+shownum) ' avg purse size
                              Else
                            AvPur = 0
                            End if

                            end if








                            l = len(Master$(1263)) 'calc best fast and dirt track rating
                            If Val(Master$(1177)) = 0 Then dt = Val(mid$(Master$(1263),2,l-2)) 'dirt pedigree
                            If Val(Master$(1177)) > 0 And Val(mid$(Master$(1263),2,l-2)) = 0 Then dt = Val(Master$(1177)) 'best dirtspd
                            If Val(Master$(1177)) > 0 And Val(mid$(Master$(1263),2,l-2)) > 0 Then dt = roundoff(((Val(mid$(Master$(1263),2,l-2)) + Val(Master$(1177)))/2),0) 'dirtspd
                            dirt = dt
                            '********************************************************************************************************************
                            If Val(Master$(96)) > 0 Then avp = ((Val(Master$(100)) / Val(Master$(96))) / 1000)       '(horse's win %)
                            If ds = 0 Then ds = 0

                            '*********************************************************************************************************************
                            wk = 0
                            'date2 = Master$(102)
                            If lastwork - raceday > Val(Master$(223)) Then GoTo [nwk1Batch]
                            If Val(Master$(185)) > .1 Then wk = 1

                            'date2 = Master$(103)
                            If lastwork2 - raceday > Val(Master$(223)) Then GoTo [nwk1Batch]
                            If Val(Master$(186)) > .1 Then wk = 2


[nwk1Batch]
                            '*******************************************************************************************************************

                            fn = fn + 1
                            hy = fig
                            fig = 0

                            zq = 0

                            a = bigfig
                            b = bigfig1
                            c = bigfig2


                            If a < b And a < c And b < c Then fig = fig - 1     'checking for speed fig improvement
                            If a < b And a < c And b < c Then zq = 1
                            If a > b And a > c Then fig = fig + 1
                            l = len(Master$(209))
                            If mid$(Master$(209),2,l-2) = "S" And Val(Master$(210)) = 0 Then fig = fig - 1  'run style and quirin speed points calc
                            If mid$(Master$(209),2,l-2) = "S" And Val(Master$(210)) = 0 Then zq = 1
                            If (Val(Master$(5)) / 220) < 6.5 And Val(Master$(210)) = 0 Then fig = fig - 1
                            If (Val(Master$(5)) / 220) < 6.5 And Val(Master$(210)) = 0 Then zq = 1
                            If Val(Master$(61)) = 4 Then fig = fig + 2
                            If Val(Master$(63)) = 1 Then fig = fig + 2
                            If Val(Master$(63)) = 2 Then fig = fig + 2

                            l = len(Master$(27))
                            If  mid$(Master$(27),2,l-2) <>  mid$(Master$(1055),2,l-2) Then fig = fig + 2  'check to see if trainer change

                            l = len(Master$(615))
                            If Val(mid$(Master$(615),2,l-2)) = 1 And Val(Master$(735)) > 2.99 Then fig = fig + 1   'check if win and margin over 2.99 lengths

                            l = len(Master$(1263))
                            If Val(mid$(Master$(1263),2,l-2)) > Val(mid$(Master$(1266),2,l-2)) And Val(Master$(65)) = 0 And Val(Master$(64)) > 3 Then fig = fig - 1
                            If Val(mid$(Master$(1263),2,l-2)) > Val(mid$(Master$(1266),2,l-2)) And Val(Master$(65)) = 0 And Val(Master$(64)) > 3 Then zq = 1

                            If Val(Master$(65)) > 1 Then fig = fig + 1  'looking for win more than just 1


                            If Val(Master$(223)) > 45 And wk = 0 Then fig = fig - 1                  'days away calc
                            If Val(Master$(223)) > 45 And wk = 0 Then zq = 1
                            If Val(Master$(223)) > 15 And Val(Master$(223)) < 30 Then fig = fig + 3
                            If Val(Master$(223)) > 0 And Val(Master$(223)) < 8 Then fig = fig + 2

                            If Val(Master$(185)) > 0 Then fig = fig + 1   'workout rank

                            If Master$(185) = "" And Val(Master$(223)) > 45 Then fig = fig - 1  ' show no workout within 45 days
                            If Master$(185) = "" And Val(Master$(223)) > 45 Then zq = 1
                            If (bigfig > (bigfig1 - 1) And bigfig > (bigfig2 - 1)) Or (bigfig > 99) Or (bigfig1 > 99) Or (bigfig2 > 99) Then fig = fig + 4 'add points based on speed fig

                            If (bigfig < bigfig1 + 1 And bigfig < bigfig2 + 1 And bigfig < 99 And bigfig1 < 99 And bigfig2 < 99) Then fig = fig - 1
                            If (bigfig < bigfig1 + 1 And bigfig < bigfig2 + 1 And bigfig < 99 And bigfig1 < 99 And bigfig2 < 99) Then zq = 1
                            l = len(Master$(615))
                            If Val(mid$(Master$(615),2,l-2)) = 2 Then fig = fig + 2
                            If Val(mid$(Master$(615),2,l-2)) = 1 Then fig = fig - 1




                            l = len(Master$(615))
                            If Val(mid$(Master$(615),2,l-2)) > 3 And Val(mid$(Master$(616),2,l-2)) > 3 And Val(mid$(Master$(617),2,l-2)) > 3 Then fig = fig - 1 'points added based on last three finish pos
                            If Val(mid$(Master$(615),2,l-2)) > 3 And Val(mid$(Master$(616),2,l-2)) > 3 And Val(mid$(Master$(617),2,l-2)) > 3 Then zq = 1
                            If Val(mid$(Master$(615),2,l-2)) < 4 Or Val(mid$(Master$(616),2,l-2)) < 4 Or Val(mid$(Master$(617),2,l-2)) < 4 Then fig = fig + 5


                            If wk <> 0 Then fig = fig + ((Val(Master$(137)) / 220))
                            If wk = 2 Then fig = fig + ((Val(Master$(138)) / 220))    'workout distance

                            If ((Val(Master$(137)) / 220)) = 5 And wk <> 0 Then fig = fig + 5
                            If ((Val(Master$(138)) / 220)) = 5 And wk = 2 Then fig = fig + 5


                            If Val(Master$(210)) > 5 Then fig = fig + 1 'quirin speed points
                            form = fig

                            If Val(Master$(815)) <> 0 Then hy = (hy + Val(Master$(815))) / 2   'late pace
                            If Val(Master$(816)) <> 0 Then hy = (hy + Val(Master$(816))) / 2
                            If Val(Master$(765)) <> 0 Then hy = (hy + Val(Master$(765))) / 2    '2 furlon pace
                            If Val(Master$(766)) <> 0 Then hy = (hy + Val(Master$(766))) / 2

                            If ds <> 0 Then hy = (hy + ds) / 2

                            fn = 0
                            If Val(Master$(845)) <> 0 Then fn = fn + 1     'points based on speed figs
                            If Val(Master$(846)) <> 0 Then fn = fn + 1
                            If Val(Master$(847)) <> 0 Then fn = fn + 1
                            If Val(Master$(848)) <> 0 Then fn = fn + 1
                            If Val(Master$(849)) <> 0 Then fn = fn + 1
                            'next is avg speed
                            If fn <> 0 Then hy = hy + ((Val(Master$(845)) + Val(Master$(846)) + Val(Master$(847)) + Val(Master$(848)) + Val(Master$(849))) / fn)

                            call2 = 0
                            fn = 0
                            l = len(Master$(585))
                            If Val(mid$(Master$(585),2,l-2)) <> 0 Then fn = fn + 1      'points based on 2nd call pos
                            If Val(mid$(Master$(586),2,l-2)) <> 0 Then fn = fn + 1
                            If Val(mid$(Master$(587),2,l-2)) <> 0 Then fn = fn + 1
                            If Val(mid$(Master$(588),2,l-2)) <> 0 Then fn = fn + 1
                            If Val(mid$(Master$(589),2,l-2)) <> 0 Then fn = fn + 1
                            If fn <> 0 Then call2 = call2 + ((Val(mid$(Master$(585),2,l-2)) + Val(mid$(Master$(586),2,l-2)) + Val(mid$(Master$(587),2,l-2)) + Val(mid$(Master$(588),2,l-2)) + Val(mid$(Master$(589),2,l-2))) / fn)



                            fcall = 0
                            fn = 0
                            l = len(Master$(615))
                            If Val(mid$(Master$(615),2,l-2)) <> 0 Then fn = fn + 1           'points based on final pos
                            If Val(mid$(Master$(616),2,l-2)) <> 0 Then fn = fn + 1
                            If Val(mid$(Master$(617),2,l-2)) <> 0 Then fn = fn + 1
                            If Val(mid$(Master$(618),2,l-2)) <> 0 Then fn = fn + 1
                            If Val(mid$(Master$(619),2,l-2)) <> 0 Then fn = fn + 1
                            If fn <> 0 Then fcall = fcall + ((Val(mid$(Master$(615),2,l-2)) + Val(mid$(Master$(616),2,l-2)) + Val(mid$(Master$(617),2,l-2)) + Val(mid$(Master$(618),2,l-2)) + Val(mid$(Master$(619),2,l-2))) / fn)

                            tentered = 0
                            fn = 0
                            ccc1 = 0
                            addc = 0

                            If Val(Master$(845)) <> 0 Then fn = fn + 1
                            If Val(Master$(846)) <> 0 Then fn = fn + 1
                            If Val(Master$(846)) <> 0 Then fn = fn + 1
                            If Val(Master$(847)) <> 0 Then fn = fn + 1
                            If Val(Master$(848)) <> 0 Then fn = fn + 1


                            If fn = 0 Then GoTo [out21Batch]

                            If fn <> 0 Then avsp = (((Val(Master$(845)) + Val(Master$(745)) * 2) / 1) + ((Val(Master$(846)) + Val(Master$(746)) * 2) / 1) + ((Val(Master$(847)) + Val(Master$(747)) * 2) / 1) + ((Val(Master$(848)) + Val(Master$(748)) * 2) / 1) + ((Val(Master$(849)) + Val(Master$(749)) * 2) / 1)) / fn
[out21Batch]
                            fn = 0
                            If Val(Master$(345)) <> 0 Then fn = fn + 1                 ' getting avg or horses runn against
                            If Val(Master$(346)) <> 0 Then fn = fn + 1
                            If Val(Master$(347)) <> 0 Then fn = fn + 1
                            If Val(Master$(348)) <> 0 Then fn = fn + 1
                            If Val(Master$(349)) <> 0 Then fn = fn + 1

                            If fn <> 0 Then tentered = (Val(Master$(345)) + Val(Master$(346)) + Val(Master$(347)) + Val(Master$(348)) + Val(Master$(349))) / fn


                            If call2 < 1 Then call2 = 1
                            If fcall < 1 Then fcall = 1
                            If addc < 1 Then addc = 1
                            If fn <> 0 Then ccc1 = (tentered / (call2 + fcall + addc)) * 100

                            If (call2 + fcall + addc) < 1 Then ccc1 = 0

                            '------------ added class code
                            eps = 0:winpct=0:itmpct=0
                            DMeps=0
                            DMwinpct=0
                            DMitmpct=0
                            ITMscore=0

                            If (Val(Master$(85)) < 3 and Val(Master$(85)) > 0 ) or (Val(Master$(85)) = 0 and Val(Master$(91)) > 0) then
                             'do last year and this year if less than 3 races in current year
                                fourths = 0
                                for i = 615 to 624
                                    if Val(Master$(i)) = 4 then fourths = fourths + 1
                                next
                                ITMscore = ((Val(Master$(86)) + Val(Master$(92))) * .2) + ((Val(Master$(87)) + Val(Master$(93))) * .45) +  ((Val(Master$(88)) +  Val(Master$(94))) * .8) + (fourths * .3)
                                If ITMscore > 0 then
                                    DMeps = INT(Val(Master$(89)) + Val(Master$(95)) / ITMscore)
                                End if
                                DMwinpct = roundoff((Val(Master$(86)) + Val(Master$(92))) / (Val(Master$(85)) + Val(Master$(91))),0)
                                DMitmpct = roundoff((Val(Master$(86)) + Val(Master$(87)) + Val(Master$(88)) + Val(Master$(92)) + Val(Master$(93)) + Val(Master$(94))) /( Val(Master$(85)) + Val(Master$(91))),0)
                            end if

                            IF Val(Master$(85)) >= 3 then
                                fourths = 0
                                for i = 615 to 624
                                    if Val(Master$(i)) = 4 then fourths = fourths + 1
                                next
                                ITMscore = (Val(Master$(86)) * .2) + (Val(Master$(87)) * .45) + (Val(Master$(88)) * .8) + (fourths * .3)
                                If ITMscore > 0 then
                                    DMeps = INT(Val(Master$(89)) / ITMscore) ' Quirin EPS
                                End if
                                DMwinpct =   roundoff(Val(Master$(86)) / Val(Master$(85)),0)
                                DMitmpct = roundoff((Val(Master$(86)) + Val(Master$(87)) + Val(Master$(88))) / Val(Master$(85)),0)
                            end if

                            ' print DMeps, DMwinpct, DMitmpct: input a$  for testing

                            ' ---------------end of added class code

                            hy = int(hy / 2)
                            pcr = int(ccc1/10) + 100 - 35
                            if ds <= 0 then ds = class  'substitute class number for 0 in DS
                            fastnum = int((((fig + ccc1 + hy + avlp + avsp + ds) / 6)*10)) *.1



                            form = 100 + (fig-40)

                            If tf < 1 Then tf = 0
                            If aw < 1 Then aw = 0
                            If my < 1 Then my = 0
                            If hy < 1 Then hy = dt

                            works =  Val(Master$(185))  'number of works
                            rank =  Val(Master$(197))   'rank of work
                            weight = Val(Master$(50)) 'weight
                            post$=Master$(3) 'post position

                            'class = Val(Master$(835))

                              l = len(Master$(209))
                            RT$= mid$(Master$(209),2,l-2)

                            runstyle1$ = RT$ + "-"+ str$(Val(Master$(210)))
                            l = len(Master$(22))
                           Breedtype$ = mid$(Master$(22),2,l-2)

                            'distspd = val(Master$(250)) ' HDW PSR Rating
                           ' form = val(Master$(212))    ' Alternate Calculation of Speed Points
                           ' pcr = val(Master$(825))     ' (New) Race Rating
                           ' allweath = val(Master$(835))' (New) Class Rating - (Based on Pace of Race)
                           ' dirt = val(Master$(845))    ' HDW  Speed Rating
                           ' fastnum  = 100 - val(Master$(515)) ' odds inversion
spdfignums = 0  ' get average speed fig for last 3 races                         
totspdfig = 0

if bigfig2 > 0 then 
totspdfig = totspdfig + bigfig2
 spdfignums = spdfignums + 1
 end if
 
 if bigfig1 > 0 then
totspdfig = totspdfig + bigfig1
 spdfignums = spdfignums + 1
 end if
 
 if bigfig > 0 then
totspdfig = totspdfig + bigfig
 spdfignums = spdfignums + 1
 end if
 if spdfignums > 0 then
 averagespeed =  INT(totspdfig/spdfignums)
     else
  averagespeed = 0
  end if              

gosub [carrollspeedBatch]



  [firstBatch]


      goto [bachtoworkpad1Batch]

'Carrol speedddddddddddddddddddddddddddddddddddddddddddddddddddddddd

[carrollspeedBatch]

bl = 745
ft = 1035
e = 0
chek = 0

      for l = 315 to 324
      if val(Master$(l)) > 1  then

 test = (racedistance-val(Master$(l))/220)
      Select Case  (racedistance-val(Master$(l))/220)

       case -1,-.5,0,.5,1
      basedist = val(Master$(l))/220
      theraces(e,0) = e
      gosub   [getbasepntsBatch]
end select

      if  (test > 1) or (test < -1) then
      chek = chek + 1
       goto [jmpeBatch]
   end if



if leng = 0   then EXIT FOR
ftpl = val(Master$(ft))/leng
fblpl = val(Master$(bl))* ftpl

totaltime= val(Master$(ft)) + fblpl
if totaltime = 0 then exit for

theraces(e,1) = int((tpl/(totaltime/leng))*1000)

else
theraces(e,1) = 0

end if
[jmpeBatch]
e = e + 1
bl = bl + 1
ft = ft + 1
next l

sort theraces(), 10,0,1
bestspeed = INT((theraces(0,1)+ theraces(1,1))/ 2)

sort theraces(), 0,3,1

worstspeed = theraces(1,1)


cspeed = bestspeed

if cspeed < 500 then
carrollspeed = cspeed * 2 ' making sure that all numbers are in the 7-8-900's
ELSE
carrollspeed = bestspeed

end if





return
'-------------------------------




 [getbasepntsBatch]
  select case basedist

      case 0
      leng = 0
      case 4
      leng = 330
      tpl = .130
      case 4.5
       leng = 371.25
      tpl =  .1357
      case 5
      leng = 412.5
      tpl = .1338
      case 5.5
      leng = 453.75
      tpl = .1353
      case 6
      leng = 495
      tpl =.1358
      case 6.5
      leng = 536.25
      tpl =.1372
      case 7
      leng = 577.5
      tpl =.1375
      case 8
      leng = 660
      tpl =.1397
      case 8.18181818
      leng = 675
      tpl =.1407
      case 8.31818182
      leng = 686.25
      tpl =.1409
      case 8.5
      leng = 701.25
       tpl =.1403
       case 9
       leng = 742.5
      tpl =.1414
      case 9.5
       leng = 783.75
      tpl = .1434
      case 10
      leng = 825
      tpl =.1428
      end select


return


'----------------------------------------------------


[firsttimeBatch]

trp = 0
trps = Val(Master$(1146)) + Val(Master$(1151))          '(trainer win persent)
If trps < 6 Then GoTo [skipitagtBatch]
trpw = Val(Master$(1147)) + Val(Master$(1152))
If trps < 1 Then trp = 0
If trps < 1 Then GoTo [skipitagtBatch]
trp = int((trpw / trps) * 100)
trainer = trp
if trainer > 0 then goto [skipitagt1Batch]

[skipitagtBatch]
trainer = 0
[skipitagt1Batch]

jperc = 0
jst = Val(Master$(1156)) + Val(Master$(1161))            ' (jockey win percent)
If jst < 6 Then GoTo [skipitjBatch]
jw = Val(Master$(1157)) + Val(Master$(1162))
If jst < 1 Then jperc = 0
If jst < 1 Then GoTo [skipitjBatch]
jperc = int((jw / jst) * 100)
jockey = jperc
if jockey > 0 then goto [skipitj1Batch]

[skipitjBatch]
jockey = 0
[skipitj1Batch]



   gosub [getpedigreeBatch] ' branch off to get pedigree numbers for FTS horses dirt, mud, turf, distspeed

   l = len(Master$(44))

    ll = len(Master$(3))

    HorseName$ = mid$(Master$(44),2,l-2)
    l = len(Master$(42))
    Saddlecloth$ = mid$(Master$(42),2,l-2)
    programnum=0
    daysaway=0
    class=0
    distspd= distspd
    earlypace=0
    latepace=-999
    runstyle1$=""
    quirinstyle$=""
    form=0
    pcr=0
    allweath= allweath
    turf= turf
    muddy=  muddy
    dirt= dirt
    fastnum=0
    mornlineodds= Val(Master$(43))
 '   firster=1
    bigfig=0
    bigfig1=0
    bigfig2=0
    works=0
    rank=0
    surfind=0
    surfind=0
    surfind2=0
    lenind=0
    lenind=0
    lenind2=0
  '  Track$=""
  '  Date$=""
    'Racenumber=0
    'todaysdistance=0
   ' surf$=""
   ' cond$=""
   ' cond22$=""
   ' RaceClsification$=""
   ' statebred$=""
    DMeps=0
    DMwinpct=0
    DMitmpct=0
    pwr=0
    racemonth=0
    racedate=0
    raceyr=0
    weight=0
    post$=mid$(Master$(3),2,ll-2)
    ft=1
    firster$ = "FIRSTER"
    AvPur=0

    goto [firstBatch]



    'get Pedigreeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

    [getpedigreeBatch]

 '(getting dist-turf-mud rating based on numbers or pedigree)
                            '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                            l = len(Master$(1266))
                            If Val(Master$(1180)) = 0 Then ds = Val(mid$(Master$(1266),2,l-2)) 'dist pedigree
                            If Val(Master$(1180)) > 0 And Val(mid$(Master$(1266),2,l-2)) = 0 Then ds = Val(Master$(1180)) 'best distspd
                            If Val(Master$(1180)) > 0 And Val(mid$(Master$(1266),2,l-2)) > 0 Then ds = roundoff(((Val(Master$(1180)) + Val(mid$(Master$(1266),2,l-2)))/2),0) 'distspd
                            distspd = ds

                            l = len(Master$(1265))
                            If Val(Master$(1178)) = 0 Then tf = Val(mid$(Master$(1265),2,l-2)) 'turf pedigree
                            If Val(Master$(1178)) = 0 And Val(mid$(Master$(1265),2,l-2)) = 0 Then tf = Val(mid$(Master$(1178),2,l-2)) 'best turfspd
                            If Val(Master$(1178)) > 0 And Val(mid$(Master$(1265),2,l-2)) > 0 Then tf = roundoff(((Val(Master$(1178)) + Val(mid$(Master$(1265),2,l-2)))/2),0) 'turfspd
                            turf = tf

                            l = len(Master$(1264))
                            If Val(Master$(1179)) = 0 Then my = Val(mid$(Master$(1264),2,l-2)) 'mud pedigree
                            If Val(Master$(1179)) = 0 And Val(mid$(Master$(1264),2,l-2)) = 0 Then my = Val(mid$(Master$(1179),2,l-2))  'best mudspd
                            If Val(Master$(1179)) > 0 And Val(mid$(Master$(1264),2,l-2)) > 0 Then my = roundoff(((Val(Master$(1179)) + Val(mid$(Master$(1264),2,l-2)))/2),0) ' mudspd
                            muddy = my
                            '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                            If Val(Master$(235)) > 0 Then
                                aw = Val(Master$(235)) 'aw     (best all weather speed number)
                                allweath = aw
                            else
                                allweath = 0
                            end if
                            l = len(Master$(1263)) 'calc best fast and dirt track rating
                            If Val(Master$(1177)) = 0 Then dt = Val(mid$(Master$(1263),2,l-2)) 'dirt pedigree
                            If Val(Master$(1177)) > 0 And Val(mid$(Master$(1263),2,l-2)) = 0 Then dt = Val(Master$(1177)) 'best dirtspd
                            If Val(Master$(1177)) > 0 And Val(mid$(Master$(1263),2,l-2)) > 0 Then dt = roundoff(((Val(mid$(Master$(1263),2,l-2)) + Val(Master$(1177)))/2),0) 'dirtspd
                            dirt = dt
                            '********************************************************************************************************************

Return



'rhrhrhrhrhrhrhrhrhrhrhrhrhrhrhrhrhrh

[racehorsesbatch]

                            Select Case val(Master$(2))   'adds up and records number of horses in each race

                                case 1
                                batchRone = batchRone + 1
                                case 2
                                batchRtwo = batchRtwo + 1
                                case 3
                                batchRthree = batchRthree + 1
                                case 4
                                batchRfour = batchRfour + 1
                                case 5
                                batchRfive = batchRfive + 1
                                case 6
                                batchRsix = batchRsix + 1
                                case 7
                                batchRseven = batchRseven + 1
                                case 8
                                batchReight = batchReight + 1
                                case 9
                                batchRnine = batchRnine + 1
                                case 10
                                batchRten = batchRten + 1
                                case 11
                                batchReleven = batchReleven + 1
                                case 12
                                batchRtwelve = batchRtwelve + 1
                                case 13
                                batchRthirteen = batchRthirteen + 1
                                case 14
                                batchRfourteen = batchRfourteen + 1
                                case 15
                                batchRfifteen = batchRfifteen + 1
                            end select
                            return

'chchchchchchchchchchchchchchch

[batchclrracehorses]




                            batchRone = 0
                            batchRtwo = 0
                            batchRthree = 0
                            batchRfour = 0
                            batchRfive = 0
                            batchRsix = 0
                            batchRseven = 0
                            batchReight = 0
                            batchRnine = 0
                            batchRten = 0
                            batchReleven = 0
                            batchRtwelve = 0
                            batchRthirteen = 0
                           batchRfourteen = 0
                            batchRfifteen = 0

                            return
    '______________________________________________________________________________________________

'run races to get final numbers to write to csv file.

[runrace]
gosub [getracenumber]

For races = racesnumber to racesrun 'number of races in racecard


racenbr = races
    h = batchhorses(0,races - 1)  ' holds total number of horses in race

    if h = 0 then
    goto [nonthoroughbred]
    end if

    numb = h
    marker = batchmarkers(0,races - 1)

    mount = marker
    tote = marker




    for f = 0 to  numb-1 'number of horses in race

    testmount = mount
        GETTRIM #horse1, mount
    if Breed$ <> "TB" then goto [skiphorse] ' check for a non throroughbred horse
        if names(f) = 1 then
            track$(f) = ""
            racerundate$(f) = ""
            nameofhorse$(f) = ""
            TracSaddle$(f) = ""
            Tracstyles$(f) = ""
            Rtype$(f) = ""
            Raceclassification$(f) = ""
            Purse(f) = 0
            finishPo$(f) = ""
            finOdds$(f) = ""
            fieldnum$(f) = ""
            lmh$(f) = ""
            firstimer(f) = 0
            firster1$(f) = ""
            allfairodds$(f) = ""
            CSVsurface$(f) = ""
            surface(f) = 0
            surface1(f) = 0
            surface2(f) =  0
            lenindicator(f) = 0
            lenindicator1(f) = 0
            lenindicator2(f) = 0
            hml$(f) = ""
            fts(f) = 0
            fts$(f) = ""
      '      hurdles1$(f) = ""
            carrollspeed(f) = 0
             payoffs$(f,0) = ""
              payoffs$(f,1) = ""
               payoffs$(f,2) = ""

            holder(f,0) = f
            holder(f,1) = 0
            holder(f,2) = 900
            holder(f,3) = 0
            holder(f,4) = 0
            holder(f,5) = 0
            holder(f,6) = 0
            holder(f,7) = 0
            holder(f,8) = 0
            holder(f,9) = 0
            holder(f,10) = 0
            holder(f,11) = 0
            holder(f,12) = 0
            holder(f,13) = 0
            holder(f,14) = 0
            holder(f,15) = 0
            holder(f,16) = 0
            holder(f,17) = 0 ' points total
            holder(f,18) = 0 ' fair odds
            holder(f,19) = 0
            holder(f,20) = 0
            holder(f,21) = 0
            holder(f,22) = 0
            holder(f,23) = 0
            holder(f,24) = 0
            holder(f,25) = 0
            holder(f,26) =  0
            holder(f,27) = 0
            holder(f,28) = 0
            holder(f,29) = 0
            holder(f,30) = 0
            holder(f,31) = 0
            holder(f,32) = 0
            holder(f,59) = 0
            holder(f,60) = 0
            holder(f,61) = 0
            holder(f,62) = 0
            holder(f,68) = 0
            holder(f,69) = 0
            holder(f,70) = 0





        else

            track$(f)  = trac$
            racerundate$(f) = racedate$
            nameofhorse$(f) = HorseName$
            TracSaddle$(f) = Saddlecloth$
            Tracstyles$(f) = runstyle1$
            Rtype$(f) = racetype$
            Raceclassification$(f) = raceclassification$
            Purse(f) = trk1Purse
            finishPo$(f) = finishPos$
            finOdds$(f) = finishOdds$
            fieldnum$(f) = field$
            lmh$(f) = quirinstyle$
            firstimer(f) = fts
            CSVsurface$(f) = todayssurface$
            surface(f) =  surfind
            surface1(f) =  surfind1
            surface2(f) =  surfind2
            lenindicator(f) = lenind
            lenindicator1(f) = lenind1
            lenindicator2(f) = lenind2
            hml$(f) = space$(5-len(ml$))+ml$
            payoffs$(f,0) = Win$
              payoffs$(f,1) = Place$
               payoffs$(f,2) = Show$
          '  hurdles1$(f) = hurdles$
          '  firster1$(f) = firster$

           ' if firster = 0 then
           ' firster1$(f) = ""
           ' else
          '  firster1$(f) = "FIRSTER"
          '  end if

            if fts = 0 then
            fts$(f) = ""
            else
            fts$(f) = "FTS"
            end if

            if fts = 1 then carrollspeed = 0


            holder(f,0) = f
            holder(f,1) = programnum
            holder(f,2) = daysaway
            holder(f,3) = class
            holder(f,4) = distspd
            holder(f,5) = earlypace
            holder(f,6) = latepace
            holder(f,7) = form
            holder(f,8) = pcr
            holder(f,9) = AvPur
            holder(f,10) = primepower 'primepower for turf factor
            holder(f,11) = averagespeed
            holder(f,12) = dirt
            holder(f,13) = fastnum
            holder(f,14) = trainer
            holder(f,15) = jockey
            holder(f,16) = mornlineodds
            holder(f,17) = 0 ' points total
            holder(f,18) = 0 ' fair odds
            holder(f,19) = bigfig2
            holder(f,20) = bigfig1
            holder(f,21) = bigfig
            holder(f,22) = rank
            holder(f,23) = works
            holder(f,31) = fts 'firster
            holder(f,32) = carrollspeed
            holder(f,60) = trk1Racenumber
            holder(f,61) = weight
            holder(f,63) = trk1todaysdistance
            holder(f,68) = Win
            holder(f,69) = Place
            holder(f,70) = Show




            Classtest(f,1) = DMeps ' store class ratings into array as read from horse.dat file
            Classtest(f,2) = DMwinpct
            Classtest(f,3) = DMitmpct


            If f = 0 then  'initialize Hi/Lo values with the first horse
                HIeps = Classtest(f,1):HIwinpct = Classtest(f,2):HIitmpct = Classtest(f,3)
                LOeps = Classtest(f,1):LOwinpct = Classtest(f,2):LOitmpct = Classtest(f,3)
                HIepace = holder(f,5):LOepace = holder(f,5)
                HIspd = holder(f,3):LOspd = holder(f,3)
            Else
                'now compare to get highest and lowest values
                If Classtest(f,1) > HIeps then HIeps = Classtest(f,1)
                If Classtest(f,2) > HIwinpct then HIwinpct = Classtest(f,2)
                If Classtest(f,3) > HIitmpct then HIitmpct = Classtest(f,3)
                If Classtest(f,1) < LOeps then LOeps = Classtest(f,1)
                If Classtest(f,2) < LOwinpct then LOwinpct = Classtest(f,2)
                If Classtest(f,3) < LOitmpct then LOitmpct = Classtest(f,3)
                If holder(f,5) > HIepace then HIepace = holder(f,5)
                If holder(f,3) > HIspd then HIspd = holder(f,3)
                If holder(f,5)  < LOepace then LOepace = holder(f,5)
                If holder(f,3)  < LOspd then LOspd = holder(f,3)
            end if

            'test$ = STR$ (Classtest(f,1)) + " " + STR$ (Classtest(f,2)) + " " + STR$ (Classtest(f,3))
            '
            'if f = 0 or f = 1 or f= 2 then
            '    Notice test$
            'end if

        end if
[skiphorse] ' where program jumps when non thoroughbred horse
        mount = mount + 1
    next f

if Breed$ <> "TB" then goto [nonthoroughbred] ' jump to loop when non TB race

     epsRange = HIeps - LOeps:winpctRange = HIwinpct - LOwinpct:itmpctRange = HIitmpct - LOitmpct
    '  if first time starters with no ITM finishes, then set ranges to 1 so no division by 0 errors
    if epsRange = 0 then epsRange = 1
    if winpctRange = 0 then winpctRange = 1
    if itmpctRange = 0 then itmpctRange = 1
    'print epsRange,winpctRange,itmpctRange:input a$
    for cntr = 0 to numb - 1
        If firstimer(cntr) = 0 then '  only run when not a firster
            eps = 60 + 40*((Classtest(cntr,1) - LOeps) / epsRange)
            winpct = 60 + 40*((Classtest(cntr,2) - LOwinpct) / winpctRange)
            itmpct = 60 + 40*((Classtest(cntr,3) - LOitmpct) / itmpctRange)
            DMclassScore = (.4 * eps) + (.3 * winpct) + (.3 * itmpct)
            ' round the score if remainder > .5
            if DMclassScore MOD 1 > .5 then
                DMclassScore = INT (DMclassScore) + 1
            Else
                DMclassScore = INT (DMclassScore)
            end if
        Else
            if firstimer(cntr) = 1 then DMclassScore = 0
        end if
        holder(cntr,24) = DMclassScore
        'print holder(cntr,24)
    next

    '--------Modified pace/speed figs from WTS
    epaceRange = HIepace - LOepace:spdRange = HIspd - LOspd
    If epaceRange = 0 then epaceRange = 1
    If spdRange = 0 then spdRange = 1
    for cntr = 0 to numb - 1
        if firstimer(cntr) = 0 then
            ep = 60 + 40*((holder(cntr,5) - LOepace) / epaceRange)
            spd = 60 + 40*((holder(cntr,3) - LOspd) / spdRange)
            if todaysdistance < 7.5 then
                spdfig = INT ((.6 * ep) + (.4 * spd))
            Else
                spdfig = INT ((.5 * ep) + (.5 * spd))
            end if
        Else
            if firstimer(cntr) = 1 then spdfig = 0
        end if
        holder(cntr,25) = spdfig
    next

    '-------calculate modifed Mitchell power number
    for cntr = 0 to numb - 1
        if todaysdistance < 7.5 then
            pwr = INT ((.6 * holder(cntr,25)) + (.4 * holder(cntr,24)))
            holder(cntr,26) = pwr
        else
            pwr = INT ((.5 * holder(cntr,25)) + (.5 * holder(cntr,24)))
            holder(cntr,26) = pwr
        end if
    next

    'fastnum = (int(((fig + ccc1 + hy + avlp + avsp + ds) / 6)*10)) *.1

    'experimental fast number
    for cntr = 0 to numb - 1
        holder(cntr,13) = holder(cntr,13) + int((.15 * holder(cntr,24)))
    next


gosub [classrank]' get the raw numbers ranks

[nonthoroughbred]
NEXT ' next horse in race
        RETURN ' temporary

 'CRCRCRCRCRCRCRCRCRCRCRCRCRCRCRCRCRCRCRCRCRCRCRCR

        [classrank] ' getting raw numbers ranking

 ' CL
        sort holder() 0,numb-1,0
        for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,3) < holder(y,3) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,40) = 1
       case 2
        holder(x,40) = 2
       case 3
        holder(x,40) = 3
       case 4
        holder(x,40) = 4
       case 5
        holder(x,40) = 5
        case 6
        holder(x,40) = 6
        case 7
        holder(x,40) = 7
         case 8
        holder(x,40) = 8
       case 9
        holder(x,40) = 9
       case 10
        holder(x,40) = 10
       case 11
        holder(x,40) = 11
       case 12
        holder(x,40) = 12
        case 13
        holder(x,40) = 13
        case 14
        holder(x,40) = 14
        case 15
        holder(x,40) = 15
        case 16
        holder(x,40) = 16
        case 17
        holder(x,40) = 17
        case 18
        holder(x,40) = 18
        case 19
        holder(x,40) = 19
        case 20
        holder(x,40) = 20
        case 21
        holder(x,40) = 21
        case 22
        holder(x,40) = 22
        case ELSE
        holder(x,40) = 99
    end select
        next x



' DS  rank

        for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,4) < holder(y,4) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,41) = 1
       case 2
        holder(x,41) = 2
       case 3
        holder(x,41) = 3
       case 4
        holder(x,41) = 4
       case 5
        holder(x,41) = 5
        case 6
        holder(x,41) = 6
        case 7
        holder(x,41) = 7
         case 8
        holder(x,41) = 8
       case 9
        holder(x,41) = 9
       case 10
        holder(x,41) = 10
       case 11
        holder(x,41) = 11
       case 12
        holder(x,41) = 12
        case 13
        holder(x,41) = 13
        case 14
        holder(x,41) = 14
        case 15
        holder(x,41) = 15
        case 16
        holder(x,41) = 16
        case 17
        holder(x,41) = 17
        case 18
        holder(x,41) = 18
        case 19
        holder(x,41) = 19
        case 20
        holder(x,41) = 20
        case 21
        holder(x,41) = 21
        case 22
        holder(x,41) = 22
        case ELSE
        holder(x,41) = 99
    end select
        next x

' ep rank

        for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,5) < holder(y,5) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,42) = 1
       case 2
        holder(x,42) = 2
       case 3
        holder(x,42) = 3
       case 4
        holder(x,42) = 4
       case 5
        holder(x,42) = 5
        case 6
        holder(x,42) = 6
        case 7
        holder(x,42) = 7
         case 8
        holder(x,42) = 8
       case 9
        holder(x,42) = 9
       case 10
        holder(x,42) = 10
       case 11
        holder(x,42) = 11
       case 12
        holder(x,42) = 12
        case 13
        holder(x,42) = 13
        case 14
        holder(x,42) = 14
        case 15
        holder(x,42) = 15
        case 16
        holder(x,42) = 16
        case 17
        holder(x,42) = 17
        case 18
        holder(x,42) = 18
        case 19
        holder(x,42) = 19
        case 20
        holder(x,42) = 20
        case 21
        holder(x,42) = 21
        case 22
        holder(x,42) = 22
        case ELSE
        holder(x,42) = 99
    end select
        next x



' lp rank

        for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,6) < holder(y,6) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,43) = 1
       case 2
        holder(x,43) = 2
       case 3
        holder(x,43) = 3
       case 4
        holder(x,43) = 4
       case 5
        holder(x,43) = 5
        case 6
        holder(x,43) = 6
        case 7
        holder(x,43) = 7
         case 8
        holder(x,43) = 8
       case 9
        holder(x,43) = 9
       case 10
        holder(x,43) = 10
       case 11
        holder(x,43) = 11
       case 12
        holder(x,43) = 12
        case 13
        holder(x,43) = 13
        case 14
        holder(x,43) = 14
        case 15
        holder(x,43) = 15
        case 16
        holder(x,43) = 16
        case 17
        holder(x,43) = 17
        case 18
        holder(x,43) = 18
        case 19
        holder(x,43) = 19
        case 20
        holder(x,43) = 20
        case 21
        holder(x,43) = 21
        case 22
        holder(x,43) = 22
        case ELSE
        holder(x,43) = 99
    end select
        next x


' fm rank

        for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,7) < holder(y,7) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,44) = 1
       case 2
        holder(x,44) = 2
       case 3
        holder(x,44) = 3
       case 4
        holder(x,44) = 4
       case 5
        holder(x,44) = 5
        case 6
        holder(x,44) = 6
        case 7
        holder(x,44) = 7
         case 8
        holder(x,44) = 8
       case 9
        holder(x,44) = 9
       case 10
        holder(x,44) = 10
       case 11
        holder(x,44) = 11
       case 12
        holder(x,44) = 12
        case 13
        holder(x,44) = 13
        case 14
        holder(x,44) = 14
        case 15
        holder(x,44) = 15
        case 16
        holder(x,44) = 16
        case 17
        holder(x,44) = 17
        case 18
        holder(x,44) = 18
        case 19
        holder(x,44) = 19
        case 20
        holder(x,44) = 20
        case 21
        holder(x,44) = 21
        case 22
        holder(x,44) = 22
        case ELSE
        holder(x,44) = 99
    end select
        next x

' Pc rank

        for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,8) < holder(y,8) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,45) = 1
       case 2
        holder(x,45) = 2
       case 3
        holder(x,45) = 3
       case 4
        holder(x,45) = 4
       case 5
        holder(x,45) = 5
        case 6
        holder(x,45) = 6
        case 7
        holder(x,45) = 7
         case 8
        holder(x,45) = 8
       case 9
        holder(x,45) = 9
       case 10
        holder(x,45) = 10
       case 11
        holder(x,45) = 11
       case 12
        holder(x,45) = 12
        case 13
        holder(x,45) = 13
        case 14
        holder(x,45) = 14
        case 15
        holder(x,45) = 15
        case 16
        holder(x,45) = 16
        case 17
        holder(x,45) = 17
        case 18
        holder(x,45) = 18
        case 19
        holder(x,45) = 19
        case 20
        holder(x,45) = 20
        case 21
        holder(x,45) = 21
        case 22
        holder(x,45) = 22
        case ELSE
        holder(x,45) = 99
    end select
        next x


' Avg Purse rank

        for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,9) < holder(y,9) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,59) = 1
       case 2
        holder(x,59) = 2
       case 3
        holder(x,59) = 3
       case 4
        holder(x,59) = 4
       case 5
        holder(x,59) = 5
        case 6
        holder(x,59) = 6
        case 7
        holder(x,59) = 7
         case 8
        holder(x,59) = 8
       case 9
        holder(x,59) = 9
       case 10
        holder(x,59) = 10
       case 11
        holder(x,59) = 11
       case 12
        holder(x,59) = 12
        case 13
        holder(x,59) = 13
        case 14
        holder(x,59) = 14
        case 15
        holder(x,59) = 15
        case 16
        holder(x,59) = 16
        case 17
        holder(x,59) = 17
        case 18
        holder(x,59) = 18
        case 19
        holder(x,59) = 19
        case 20
        holder(x,59) = 20
        case 21
        holder(x,59) = 21
        case 22
        holder(x,59) = 22
        case ELSE
        holder(x,59) = 99
    end select
        next x


' turf rank

        for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,10) < holder(y,10) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,46) = 1
       case 2
        holder(x,46) = 2
       case 3
        holder(x,46) = 3
       case 4
        holder(x,46) = 4
       case 5
        holder(x,46) = 5
        case 6
        holder(x,46) = 6
        case 7
        holder(x,46) = 7
        case 8
        holder(x,46) = 8
       case 9
        holder(x,46) = 9
       case 10
        holder(x,46) = 10
       case 11
        holder(x,46) = 11
       case 12
        holder(x,46) = 12
        case 13
        holder(x,46) = 13
        case 14
        holder(x,46) = 14
        case 15
        holder(x,46) = 15
        case 16
        holder(x,46) = 16
        case 17
        holder(x,46) = 17
        case 18
        holder(x,46) = 18
        case 19
        holder(x,46) = 19
        case 20
        holder(x,46) = 20
        case 21
        holder(x,46) = 21
        case 22
        holder(x,46) = 22
        case ELSE
        holder(x,46) = 99
    end select
        next x




' mud rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,11) < holder(y,11) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,47) = 1
       case 2
        holder(x,47) = 2
       case 3
        holder(x,47) = 3
       case 4
        holder(x,47) = 4
       case 5
        holder(x,47) = 5
        case 6
        holder(x,47) = 6
        case 7
        holder(x,47) = 7
         case 8
        holder(x,47) = 8
       case 9
        holder(x,47) = 9
       case 10
        holder(x,47) = 10
       case 11
        holder(x,47) = 11
       case 12
        holder(x,47) = 12
        case 13
        holder(x,47) = 13
        case 14
        holder(x,47) = 14
        case 15
        holder(x,47) = 15
        case 16
        holder(x,47) = 16
        case 17
        holder(x,47) = 17
        case 18
        holder(x,47) = 18
        case 19
        holder(x,47) = 19
        case 20
        holder(x,47) = 20
        case 21
        holder(x,47) = 21
        case 22
        holder(x,47) = 22
        case ELSE
        holder(x,47) = 99
    end select
        next x



' dirt rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,12) < holder(y,12) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,48) = 1
       case 2
        holder(x,48) = 2
       case 3
        holder(x,48) = 3
       case 4
        holder(x,48) = 4
       case 5
        holder(x,48) = 5
        case 6
        holder(x,48) = 6
        case 7
        holder(x,48) = 7
         case 8
        holder(x,48) = 8
       case 9
        holder(x,48) = 9
       case 10
        holder(x,48) = 10
       case 11
        holder(x,48) = 11
       case 12
        holder(x,48) = 12
        case 13
        holder(x,48) = 13
        case 14
        holder(x,48) = 14
        case 15
        holder(x,48) = 15
        case 16
        holder(x,48) = 16
        case 17
        holder(x,48) = 17
        case 18
        holder(x,48) = 18
        case 19
        holder(x,48) = 19
        case 20
        holder(x,48) = 20
        case 21
        holder(x,48) = 21
        case 22
        holder(x,48) = 22
        case ELSE
        holder(x,48) = 99
    end select
        next x


' fast rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,13) < holder(y,13) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,49) = 1
       case 2
        holder(x,49) = 2
       case 3
        holder(x,49) = 3
       case 4
        holder(x,49) = 4
       case 5
        holder(x,49) = 5
        case 6
        holder(x,49) = 6
        case 7
        holder(x,49) = 7
         case 8
        holder(x,49) = 8
       case 9
        holder(x,49) = 9
       case 10
        holder(x,49) = 10
       case 11
        holder(x,49) = 11
       case 12
        holder(x,49) = 12
        case 13
        holder(x,49) = 13
        case 14
        holder(x,49) = 14
        case 15
        holder(x,49) = 15
        case 16
        holder(x,49) = 16
        case 17
        holder(x,49) = 17
        case 18
        holder(x,49) = 18
        case 19
        holder(x,49) = 19
        case 20
        holder(x,49) = 20
        case 21
        holder(x,49) = 21
        case 22
        holder(x,49) = 22
        case ELSE
        holder(x,49) = 99
    end select
        next x



' Tr rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,14) < holder(y,14) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,50) = 1
       case 2
        holder(x,50) = 2
       case 3
        holder(x,50) = 3
       case 4
        holder(x,50) = 4
       case 5
        holder(x,50) = 5
        case 6
        holder(x,50) = 6
        case 7
        holder(x,50) = 7
         case 8
        holder(x,50) = 8
       case 9
        holder(x,50) = 9
       case 10
        holder(x,50) = 10
       case 11
        holder(x,50) = 11
       case 12
        holder(x,50) = 12
        case 13
        holder(x,50) = 13
        case 14
        holder(x,50) = 14
        case 15
        holder(x,50) = 15
        case 16
        holder(x,50) = 16
        case 17
        holder(x,50) = 17
        case 18
        holder(x,50) = 18
        case 19
        holder(x,50) = 19
        case 20
        holder(x,50) = 20
        case 21
        holder(x,50) = 21
        case 22
        holder(x,50) = 22
        case ELSE
        holder(x,50) = 99
    end select
        next x



' Jky rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,15) < holder(y,15) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,51) = 1
       case 2
        holder(x,51) = 2
       case 3
        holder(x,51) = 3
       case 4
        holder(x,51) = 4
       case 5
        holder(x,51) = 5
        case 6
        holder(x,51) = 6
        case 7
        holder(x,51) = 7
         case 8
        holder(x,51) = 8
       case 9
        holder(x,51) = 9
       case 10
        holder(x,51) = 10
       case 11
        holder(x,51) = 11
       case 12
        holder(x,51) = 12
        case 13
        holder(x,51) = 13
        case 14
        holder(x,51) = 14
        case 15
        holder(x,51) = 15
        case 16
        holder(x,51) = 16
        case 17
        holder(x,51) = 17
        case 18
        holder(x,51) = 18
        case 19
        holder(x,51) = 19
        case 20
        holder(x,51) = 20
        case 21
        holder(x,51) = 21
        case 22
        holder(x,51) = 22
        case ELSE
        holder(x,51) = 99
    end select
        next x


' ml rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,16) > holder(y,16) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,52) = 1
       case 2
        holder(x,52) = 2
       case 3
        holder(x,52) = 3
       case 4
        holder(x,52) = 4
       case 5
        holder(x,52) = 5
        case 6
        holder(x,52) = 6
        case 7
        holder(x,52) = 7
         case 8
        holder(x,52) = 8
       case 9
        holder(x,52) = 9
       case 10
        holder(x,52) = 10
       case 11
        holder(x,52) = 11
       case 12
        holder(x,52) = 12
        case 13
        holder(x,52) = 13
        case 14
        holder(x,52) = 14
        case 15
        holder(x,52) = 15
        case 16
        holder(x,52) = 16
        case 17
        holder(x,52) = 17
        case 18
        holder(x,52) = 18
        case 19
        holder(x,52) = 19
        case 20
        holder(x,52) = 20
        case 21
        holder(x,52) = 21
        case 22
        holder(x,52) = 22
        case ELSE
        holder(x,52) = 99
    end select
        next x


' S3 rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,19) < holder(y,19) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,53) = 1
       case 2
        holder(x,53) = 2
       case 3
        holder(x,53) = 3
       case 4
        holder(x,53) = 4
       case 5
        holder(x,53) = 5
        case 6
        holder(x,53) = 6
        case 7
        holder(x,53) = 7
         case 8
        holder(x,53) = 8
       case 9
        holder(x,53) = 9
       case 10
        holder(x,53) = 10
       case 11
        holder(x,53) = 11
       case 12
        holder(x,53) = 12
        case 13
        holder(x,53) = 13
        case 14
        holder(x,53) = 14
        case 15
        holder(x,53) = 15
        case 16
        holder(x,53) = 16
        case 17
        holder(x,53) = 17
        case 18
        holder(x,53) = 18
        case 19
        holder(x,53) = 19
        case 20
        holder(x,53) = 20
        case 21
        holder(x,53) = 21
        case 22
        holder(x,53) = 22
        case ELSE
        holder(x,53) = 99
    end select
        next x



' S2 rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,20) < holder(y,20) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,54) = 1
       case 2
        holder(x,54) = 2
       case 3
        holder(x,54) = 3
       case 4
        holder(x,54) = 4
       case 5
        holder(x,54) = 5
        case 6
        holder(x,54) = 6
        case 7
        holder(x,54) = 7
         case 8
        holder(x,54) = 8
       case 9
        holder(x,54) = 9
       case 10
        holder(x,54) = 10
       case 11
        holder(x,54) = 11
       case 12
        holder(x,54) = 12
        case 13
        holder(x,54) = 13
        case 14
        holder(x,54) = 14
        case 15
        holder(x,54) = 15
        case 16
        holder(x,54) = 16
        case 17
        holder(x,54) = 17
        case 18
        holder(x,54) = 18
        case 19
        holder(x,54) = 19
        case 20
        holder(x,54) = 20
        case 21
        holder(x,54) = 21
        case 22
        holder(x,54) = 22
        case ELSE
        holder(x,54) = 99
    end select
        next x

' S1 rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,21) < holder(y,21) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,55) = 1
       case 2
        holder(x,55) = 2
       case 3
        holder(x,55) = 3
       case 4
        holder(x,55) = 4
       case 5
        holder(x,55) = 5
        case 6
        holder(x,55) = 6
        case 7
        holder(x,55) = 7
         case 8
        holder(x,55) = 8
       case 9
        holder(x,55) = 9
       case 10
        holder(x,55) = 10
       case 11
        holder(x,55) = 11
       case 12
        holder(x,55) = 12
        case 13
        holder(x,55) = 13
        case 14
        holder(x,55) = 14
        case 15
        holder(x,55) = 15
        case 16
        holder(x,55) = 16
        case 17
        holder(x,55) = 17
        case 18
        holder(x,55) = 18
        case 19
        holder(x,55) = 19
        case 20
        holder(x,55) = 20
        case 21
        holder(x,55) = 21
        case 22
        holder(x,55) = 22
        case ELSE
        holder(x,55) = 99
    end select
        next x



'  cs rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,32) < holder(y,32) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,56) = 1
       case 2
        holder(x,56) = 2
       case 3
        holder(x,56) = 3
       case 4
        holder(x,56) = 4
       case 5
        holder(x,56) = 5
        case 6
        holder(x,56) = 6
        case 7
        holder(x,56) = 7
         case 8
        holder(x,56) = 8
       case 9
        holder(x,56) = 9
       case 10
        holder(x,56) = 10
       case 11
        holder(x,56) = 11
       case 12
        holder(x,56) = 12
        case 13
        holder(x,56) = 13
        case 14
        holder(x,56) = 14
        case 15
        holder(x,56) = 15
        case 16
        holder(x,56) = 16
        case 17
        holder(x,56) = 17
        case 18
        holder(x,56) = 18
        case 19
        holder(x,56) = 19
        case 20
        holder(x,56) = 20
        case 21
        holder(x,56) = 21
        case 22
        holder(x,56) = 22
        case ELSE
        holder(x,56) = 99
    end select
        next x


'  CC rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,24) < holder(y,24) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,57) = 1
       case 2
        holder(x,57) = 2
       case 3
        holder(x,57) = 3
       case 4
        holder(x,57) = 4
       case 5
        holder(x,57) = 5
        case 6
        holder(x,57) = 6
        case 7
        holder(x,57) = 7
         case 8
        holder(x,57) = 8
       case 9
        holder(x,57) = 9
       case 10
        holder(x,57) = 10
       case 11
        holder(x,57) = 11
       case 12
        holder(x,57) = 12
        case 13
        holder(x,57) = 13
        case 14
        holder(x,57) = 14
        case 15
        holder(x,57) = 15
        case 16
        holder(x,57) = 16
        case 17
        holder(x,57) = 17
        case 18
        holder(x,57) = 18
        case 19
        holder(x,57) = 19
        case 20
        holder(x,57) = 20
        case 21
        holder(x,57) = 21
        case 22
        holder(x,57) = 22
        case ELSE
        holder(x,57) = 99
    end select
        next x


'  P-S rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,25) < holder(y,25) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,58) = 1
       case 2
        holder(x,58) = 2
       case 3
        holder(x,58) = 3
       case 4
        holder(x,58) = 4
       case 5
        holder(x,58) = 5
        case 6
        holder(x,58) = 6
        case 7
        holder(x,58) = 7
         case 8
        holder(x,58) = 8
       case 9
        holder(x,58) = 9
       case 10
        holder(x,58) = 10
       case 11
        holder(x,58) = 11
       case 12
        holder(x,58) = 12
        case 13
        holder(x,58) = 13
        case 14
        holder(x,58) = 14
        case 15
        holder(x,58) = 15
        case 16
        holder(x,58) = 16
        case 17
        holder(x,58) = 17
        case 18
        holder(x,58) = 18
        case 19
        holder(x,58) = 19
        case 20
        holder(x,58) = 20
        case 21
        holder(x,58) = 21
        case 22
        holder(x,58) = 22
        case ELSE
        holder(x,58) = 99
    end select
        next x




'  Pwr rank


 for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb

if  holder(x,26) < holder(y,26) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

        Select Case  poscount
       case 1
        holder(x,75) = 1
       case 2
        holder(x,75) = 2
       case 3
        holder(x,75) = 3
       case 4
        holder(x,75) = 4
       case 5
        holder(x,75) = 5
        case 6
        holder(x,75) = 6
        case 7
        holder(x,75) = 7
         case 8
        holder(x,75) = 8
       case 9
        holder(x,75) = 9
       case 10
        holder(x,75) = 10
       case 11
        holder(x,75) = 11
       case 12
        holder(x,75) = 12
        case 13
        holder(x,75) = 13
        case 14
        holder(x,75) = 14
        case 15
        holder(x,75) = 15
        case 16
        holder(x,75) = 16
        case 17
        holder(x,75) = 17
        case 18
        holder(x,75) = 18
        case 19
        holder(x,75) = 19
        case 20
        holder(x,75) = 20
        case 21
        holder(x,75) = 21
        case 22
        holder(x,75) = 22
        case ELSE
        holder(x,75) = 99
    end select
        next x





' I believe this is where we write the csv file. All horses have info ready to write to excel file


Gosub [horseCSV]


Return ' to gosub clasrank








'_________________________

[resort]   're-sort holder array for next rank sort.
for pt = 0 to numb-1 '
        srt(pt,1) = holder(pt,0)
    next pt
    sort srt(),numb-1,0,1


    Return

'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

[createCSV]'Create CSV file with the headers only.


CSVarray$(0)= "Track"
CSVarray$(1)= "Date"
CSVarray$(2)= "Race"
CSVarray$(3)= "Dist"
CSVarray$(4)= "Surf"
CSVarray$(5)= "Type"
CSVarray$(6)= "Cond"
CSVarray$(7)= "Purse"
CSVarray$(8)= "P#"
CSVarray$(9)= "Name"
CSVarray$(10)= "Weight"
CSVarray$(11)= "LR"
CSVarray$(12)= "CL"
CSVarray$(13)= "CL-R"
CSVarray$(14)= "DS"
CSVarray$(15)= "DS-R"
CSVarray$(16)= "EP"
CSVarray$(17)= "EP-R"
CSVarray$(18)= "Style"
CSVarray$(19)= "LP"
CSVarray$(20)= "LP-R"
CSVarray$(21)= "RS"
CSVarray$(22)= "FM"
CSVarray$(23)= "FM-R"
CSVarray$(24)= "PC"
CSVarray$(25)= "PC-R"
CSVarray$(26)= "AVP"
CSVarray$(27)= "AVP-R"
CSVarray$(28)= "Prime"
CSVarray$(29)= "P-R"
CSVarray$(30)= "Ave-S"
CSVarray$(31)= "AVSp-R"
CSVarray$(32)= "DT"
CSVarray$(33)= "DT-R"
CSVarray$(34)= "Fast"
CSVarray$(35)= "Fast-R"
CSVarray$(36)= "TR"
CSVarray$(37)= "TR-R"
CSVarray$(38)= "JK"
CSVarray$(39)= "JK-R"
CSVarray$(40)= "ML"
CSVarray$(41)= "S3"
CSVarray$(42)= "S3-R"
CSVarray$(43)= "S2"
CSVarray$(44)= "S2-R"
CSVarray$(45)= "S1"
CSVarray$(46)= "S1-R"
CSVarray$(47)= "CC"
CSVarray$(48)= "CC-R"
CSVarray$(49)= "PS"
CSVarray$(50)= "PS-R"
CSVarray$(51)= "PWR"
CSVarray$(52)= "PWR-R"
CSVarray$(53)= "CS"
CSVarray$(54)= "CS-R"
CSVarray$(55)= "Finish"
CSVarray$(56)= "Odds"
CSVarray$(57)= "Field"
CSVarray$(58)= "Win Payoff"
CSVarray$(59)= "Place Payoff"
CSVarray$(60)= "Show Plyoff"


open "C:\temphandi\Handi.csv" for output as #handisearch


datapoints = 61
    data$=""
for x=1 to datapoints
        if x<datapoints then
            data$=data$+CSVarray$(x-1)+","
        else 'So there is no comma after the last data.
            data$=data$+CSVarray$(x-1)
        end if
    next
    #handisearch,data$
    close #handisearch
    wait

'CSVCSVCSVCSVCSVCSVCSVCSVCSVCSV
[horseCSV]

for hcsv = 0 to numb-1
CSVHorsearray$(hcsv,0) = track$(hcsv)
CSVHorsearray$(hcsv,1) = racerundate$(hcsv)
CSVHorsearray$(hcsv,2) = Str$(holder(hcsv,60))
CSVHorsearray$(hcsv,3) = Str$(holder(hcsv,63))
CSVHorsearray$(hcsv,4) = CSVsurface$(hcsv)
CSVHorsearray$(hcsv,5) = Rtype$(hcsv)
CSVHorsearray$(hcsv,6) = Raceclassification$(hcsv)
CSVHorsearray$(hcsv,7) = Str$(Purse(hcsv))
CSVHorsearray$(hcsv,8) = TracSaddle$(hcsv)
CSVHorsearray$(hcsv,9) = nameofhorse$(hcsv)
CSVHorsearray$(hcsv,10) = Str$(holder(hcsv,61))
CSVHorsearray$(hcsv,11)  = Str$(holder(hcsv,2))
CSVHorsearray$(hcsv,12) = Str$(holder(hcsv,3))
CSVHorsearray$(hcsv,13) = Str$(holder(hcsv,40)) 'class rank
CSVHorsearray$(hcsv,14) = Str$(holder(hcsv,4))
CSVHorsearray$(hcsv,15) =  Str$(holder(hcsv,41))' DS rank
CSVHorsearray$(hcsv,16) = Str$(holder(hcsv,5))
CSVHorsearray$(hcsv,17) =  Str$(holder(hcsv,42))' ep rank
CSVHorsearray$(hcsv,18) = Tracstyles$(hcsv)' run style, ie: Ep or E etc
CSVHorsearray$(hcsv,19) = Str$(holder(hcsv,6))
CSVHorsearray$(hcsv,20) =  Str$(holder(hcsv,43))'lp rank
CSVHorsearray$(hcsv,21) = lmh$(hcsv)' Quirin run style
CSVHorsearray$(hcsv,22) = Str$(holder(hcsv,7))
CSVHorsearray$(hcsv,23) =  Str$(holder(hcsv,44))
CSVHorsearray$(hcsv,24) = Str$(holder(hcsv,8))
CSVHorsearray$(hcsv,25) =  Str$(holder(hcsv,45))
CSVHorsearray$(hcsv,26) = Str$(holder(hcsv,9))
CSVHorsearray$(hcsv,27) =  Str$(holder(hcsv,59))
CSVHorsearray$(hcsv,28) = Str$(holder(hcsv,10))
CSVHorsearray$(hcsv,29) =  Str$(holder(hcsv,46))
CSVHorsearray$(hcsv,30) = Str$(holder(hcsv,11))
CSVHorsearray$(hcsv,31) =  Str$(holder(hcsv,47))
CSVHorsearray$(hcsv,32) = Str$(holder(hcsv,12))
CSVHorsearray$(hcsv,33) =  Str$(holder(hcsv,48))
CSVHorsearray$(hcsv,34) = Str$(holder(hcsv,13))
CSVHorsearray$(hcsv,35) =  Str$(holder(hcsv,49))
CSVHorsearray$(hcsv,36) = Str$(holder(hcsv,14))
CSVHorsearray$(hcsv,37) =  Str$(holder(hcsv,50))
CSVHorsearray$(hcsv,38) = Str$(holder(hcsv,15))
CSVHorsearray$(hcsv,39) =  Str$(holder(hcsv,51))
CSVHorsearray$(hcsv,40) = Str$(holder(hcsv,16))
CSVHorsearray$(hcsv,41) = Str$(holder(hcsv,19))
CSVHorsearray$(hcsv,42) =  Str$(holder(hcsv,53))
CSVHorsearray$(hcsv,43) = Str$(holder(hcsv,20))
CSVHorsearray$(hcsv,44) =  Str$(holder(hcsv,54))
CSVHorsearray$(hcsv,45) = Str$(holder(hcsv,21))
CSVHorsearray$(hcsv,46) =  Str$(holder(hcsv,55))
CSVHorsearray$(hcsv,47) = Str$(holder(hcsv,24))
CSVHorsearray$(hcsv,48) =  Str$(holder(hcsv,57))
CSVHorsearray$(hcsv,49) = Str$(holder(hcsv,25))
CSVHorsearray$(hcsv,50) =  Str$(holder(hcsv,58))
CSVHorsearray$(hcsv,51) =  Str$(holder(hcsv,26))
CSVHorsearray$(hcsv,52) =  Str$(holder(hcsv,75))
CSVHorsearray$(hcsv,53) =  Str$(holder(hcsv,32))
CSVHorsearray$(hcsv,54) =  Str$(holder(hcsv,56))'CS rank
CSVHorsearray$(hcsv,55) =  finishPo$(hcsv)
CSVHorsearray$(hcsv,56) =  finOdds$(hcsv)
CSVHorsearray$(hcsv,57) =  fieldnum$(hcsv)
CSVHorsearray$(hcsv,58) =   payoffs$(hcsv,0)
CSVHorsearray$(hcsv,59) =  payoffs$(hcsv,1)
CSVHorsearray$(hcsv,60) =  payoffs$(hcsv,2)
open "C:\temphandi\Handi.csv" for APPEND as #handisearch
datapoints=61
    data$=""

for x=1 to datapoints
        if x<datapoints then
            data$=data$+CSVHorsearray$(hcsv,x-1)+","
        else 'So there is no comma after the last data.
            data$=data$+CSVHorsearray$(hcsv,x-1)
        end if
    next
    #handisearch,data$
close #handisearch


next


Return ' return to gosub [horseCSV]

'load race cards load race cards load race cards load race cards


[importfiles]


 temp$="datadir.ini"
                            Open "IsFile32.dll" For DLL As #ff
                            CallDLL #ff, "IsFile",temp$ As ptr, result As long
                            close #ff
                            if result = 0 then
                                Open temp$ for input As #d
                                line input #d,extension$
                                line input #d,csvdir$
                                close #d
                            else
                                extension$ = "C:\horse\data\"
                            end if
                            fullpath$=extension$+"*.drf;*.mcp;*.jcp;*.xrd"
                            filedialog "Select Track", fullpath$, fileName$
                            if fileName$<>"" then
                                open fileName$ for input as #Hdata
                               trackname$=SeparateFile$(fileName$) 'Not sure what this is for.

                                racenum=0 'new track then no race chosen yet
                                dirpath$=SeparatePath$(fileName$)
                                open temp$ for output As #d
                                print #d, dirpath$
                                print #d, csvdir$
                                close #d
                            else
                                notice "No file chosen!"

                                racenum=0 'no track, so no race can be selected
                                trackflag = 0
                                goto [main.inputLoop]
                            end if
                           ' trackname$ = UPPER$(LEFT$(trackname$,3)) 'assign track name so track sele
                           ' TrackCSV$ = "" 'initialize the variable for output to .csv file when track is selected
                           ' NewTrackCSV$="" ' the same for the 2nd csv file


        racecount = 0
        horserecord = 1
        Racenumber = 0
        racerecord = 1
        numberraces = 1
close #Hdata
N$ = right$(trackname$, 3)
if  right$(trackname$, 3) = "xrd" or right$(trackname$, 3) = "XRD" then ' if results file selected then process
Racefolder$="C:\handibatchresults"
   RacefullFname$= Racefolder$ +"\" + trackname$
open fileName$ for input as #original
  open RacefullFname$ for output as #copy
  print #copy, input$(#original, lof(#original));
  close #original
  close #copy
goto [main.inputLoop]
end if

Racefolder$="C:\handibatchracedata"
   RacefullFname$= Racefolder$ +"\" + trackname$


open fileName$ for input as #original
  open RacefullFname$ for output as #copy
  print #copy, input$(#original, lof(#original));
  close #original
  close #copy





goto [main.inputLoop]



'racesstartracesstartracesstartracesstart)
[getracenumber]

Select Case racesstart

   case 1
   racesnumber = 1
   case 2
   racesnumber = 2
   case 3
   racesnumber = 3
   case 4
   racesnumber = 4
   case 5
   racesnumber = 5
   case 6
   racesnumber = 6
   case 7
   racesnumber = 7
   case 8
   racesnumber = 8
   case 9
   racesnumber = 9
   case 10
   racesnumber = 10
   case 11
   racesnumber = 11
   case 12
   racesnumber = 12
   case 13
   racesnumber = 13
   case 14
   racesnumber = 14
   case 15
   racesnumber = 15
   case 16
   racesnumber = 16
   case 17
   racesnumber = 17
   case 18
   racesnumber = 18

   End Select

   Return


'typeracefilestyperacefilestyperacefilestyperacefilestyperacefiles

[typefiles]






    '-----Begin code for #typefiles

    nomainwin
    WindowWidth = 435
    WindowHeight = 365
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

    radiobutton #typefiles.radiobutton1, "JCP", [JCPradiobutton1Set], [JCPradiobutton1Reset], 195,  67,  50,  50
    radiobutton #typefiles.radiobutton2, "DRF", [DRFradiobutton2Set], [DRFradiobutton2Reset], 195, 122,  53,  50
    radiobutton #typefiles.radiobutton3, "MCP", [MCPradiobutton3Set], [MCPradiobutton3Reset], 195, 177,  54,  50
    button #typefiles.button4,"Close",[closeFiletypebutton], UL, 175, 282, 100,  25

    '-----End GUI objects code

    open "Data File Type" for graphics_nsb_nf as #typefiles
    print #typefiles, "down;fill white; flush"
    print #typefiles, "color black; backcolor white"
    print #typefiles, "font ms_sans_serif 12 bold"
    print #typefiles.button4, "!font ms_sans_serif 10"
    print #typefiles, "trapclose [quit.typefiles]"

    print #typefiles, "place 100  50"
print #typefiles, "\Select The Type of Data File"


[typefiles.inputLoop]   'wait here for input event
    wait


[JCPradiobutton1Set]   'Perform action for the radiobutton named 'radiobutton1'


   datatype$ = "jcp"

    wait



[JCPradiobutton1Reset]   'Perform action for the radiobutton named 'radiobutton1'

    'Insert your own code here

    wait

[DRFradiobutton2Set]   'Perform action for the radiobutton named 'radiobutton2'


    datatype$ = "drf"

    wait



[DRFradiobutton2Reset]   'Perform action for the radiobutton named 'radiobutton2'

    'Insert your own code here

    wait

[MCPradiobutton3Set]   'Perform action for the radiobutton named 'radiobutton3'


    datatype$ = "mcp"

    wait



[MCPradiobutton3Reset]   'Perform action for the radiobutton named 'radiobutton3'

    'Insert your own code here

    wait


[closeFiletypebutton]   'Perform action for the button named 'button4'

    goto [quit.typefiles]

    wait

[quit.typefiles] 'End the program

 Put #filetype, 1

    close #typefiles







Goto [main.inputLoop]

































































































































































































































































































































































































































































































































































































































































































































































































































































































































































