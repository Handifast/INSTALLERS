









Dim Master$(1434)
Dim analysts$(200)
Dim  scales$(10)
Dim horses(6,25)
Dim markers(6,25)
Dim srt(25,2)
Dim srt1(25,4)
Dim srt2(25,4)
Dim srts(25,4)
Dim holder(40,76)
Dim rankings(25,25)
Dim firster1$(25)
Dim firstimer(25)
Dim names(25)
Dim factnums(4,20)
Dim nameofhorse$(27)
Dim TracSaddle$(27)
Dim Tracstyles$(25)
Dim lmh$(25)
Dim lenindicator(25)
Dim fts(25)
Dim fts$(25)
Dim carrollspeed(25)
Dim racetype$(25)

Dim surface(25)
Dim surface1(25)
Dim surface2(25)
Dim styles$(25)
Dim surf$(25)
Dim todaysdistance(25)
Dim cond$(25)
Dim racenumber(25)
Dim RaceClassification$(25)
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
Dim consensus$(3,2)
Dim consensusRanking(12,2)
Dim consensustotal(25)
Dim ConsensuName$(25)
Dim folders$(50)
Dim temp(25)


'Dim a$(16)



dim  info$(10, 10)


Global   raceobjectflag$, mx,my, pop ,TrackCSV$ ' FLAG TO CHECK FOR FIRST TIME MAKING A RACE OBJECT LATER IN PROGRAM


OPEN "C:\handifiles\race.obj" FOR RANDOM AS #raceobject LEN=275
  FIELD #raceobject,_ ' set up the fields for file opened as #raceobject
     50 AS Folder$,_
    100 AS Name$,_ ' 1st 100 bytes contains Name$, string
    5   AS Class,_
    5   AS Distancespeed,_
    5   AS EarlyPace,_
    5   AS LatePace,_
    5   AS Form,_
    5   AS PerformanceClass,_
    7   AS avgpurse,_
    5   AS Primepowerpts,_
    5   AS averagespeedpts,_
    5   AS Dirt,_
    5   AS Fast,_
    5   AS Trainer,_
    5   AS Jockey,_
    5   AS Speed3,_
    5   AS Speed2,_
    5   AS LastSpeed,_
    5   AS CarrollSpeed,_
    5   AS Classconsist,_
    5   AS PowerSpeed,_
    5   AS MitchellPower,_
    5   AS MornLine,_
    5   AS Daysaway,_
    10  AS Scale$,_
    3   AS pacepoints,_

OPEN "C:\handifiles\temprace.obj" FOR RANDOM AS #tempraceobject LEN=254
  FIELD #tempraceobject,_ ' set up the fields for file opened as #tempraceobject
     50 AS Folder2$,_
    100 AS Name2$,_ ' 1st 100 bytes contains Name$, string
    5   AS Class2,_
    5   AS Distancespeed2,_
    5   AS EarlyPace2,_
    5   AS LatePace2,_
    5   AS Form2,_
    5   AS PerformanceClass2,_
    7   AS avgpurse2,_
    5   AS Turf2,_
    5   AS Mud2,_
    5   AS Dirt2,_
    5   AS Fast2,_
    5   AS Trainer2,_
    5   AS Jockey2,_
    5   AS Speed32,_
    5   AS Speed22,_
    5   AS LastSpeed2,_
    5   AS CarrollSpeed2,_
    5   AS Classconsist2,_
    5   AS PowerSpeed2,_
    2 AS EarlyContender2,_
   3  AS LastRaceDate2,_
   2 AS Twist2,_




OPEN "C:\handifiles\raceobjectctrl.obj" FOR RANDOM AS #raceobjectcontrol LEN=5
  FIELD #raceobjectcontrol,_ ' set up the fields for file opened as #raceobjectcontrol
    5 AS raceobjectnumber,_ '


open "C:\handifiles\horse.dat" for random as #horse1 len = 739 ' open as random access
    FIELD #horse1,_
       10 AS HorseKey$,_
       25 AS HorseName$,_
        3 AS Saddlecloth$,_
        3 AS trac$,_
        5 AS racedate$,_
        2 AS racenumber,_
        3 AS programnum,_
        3 AS daysaway,_
        3 AS class,_
        3 AS distspd,_
        3 AS earlypace,_
        5 AS latepace,_
        6 AS runstyle1$,_
        3 AS quirinstyle$,_
        2 AS quirinpoints,_
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
        3 AS class,_
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
    5   AS AvPurrank,_
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
    5   AS Daysawayrank,_
    3   AS pacepoints,_
    2 AS EarlyContender,_
   3  AS LastRaceDate,_
   2 AS Twist,_






         OPEN "C:\handifiles\race.dat" FOR RANDOM AS #racedat LEN=329
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

        OPEN "C:\handifiles\analyst.flg" FOR RANDOM AS #flag LEN=1
  FIELD #flag,_  ' set up the fields for file opened as flag for testing if first time creating race objects
        1 AS flagup$,_

         OPEN "C:\handifiles\analystfoldername.dat" FOR RANDOM AS #analystfolder LEN=103
  FIELD #analystfolder,_
        100 AS Analfoldername$,_
          3 AS Analfoldernumber,_


         OPEN "C:\handifiles\analystfoldertotal.dat" FOR RANDOM AS #analtotalfolder LEN=3
  FIELD #analtotalfolder,_
        3 AS totalfolders,_


[InitColors]
    'Please use default colors when possible.
    'ForegroundColor$ = "Black"
    'BackgroundColor$ = "Buttonface"

    True = 1 : False = 0

[WindowSetup]
    NOMAINWIN
    WindowWidth = 450 : WindowHeight = 410
    UpperLeftX = INT((DisplayWidth-WindowWidth)/2)
    UpperLeftY = INT((DisplayHeight-WindowHeight)/2)

[ControlSetup]

Menu        #main, "&Settings", "I&nitialize Analyst's Folders", [initializefolders],"C&reate Analyst's Folders", [analystsfolders]
Menu        #main, "&File" , "I&mport Race Files", [ImportRaceFiles],  "E&xit", [quit]
'Menu        #main, "&Edit", "E&dit Race Files Folder", [racefilespath], "E&dit User Setup", [Usersetupfile], "E&dit Tracks", [Edittracks], "E&dit My Tracks", [Editmytracks]
Menu        #main, "&Race Analysts","&Build Race Analysts", [BuildRaceobjects], "&Delete Race Analysts", [setup.delanalyst.Window], "&View/Change Race Analysts", [viewchangeRaceAnalyst]
Menu        #main, "&Handicap", "S&tart Handicapping", [setup.top.Window]



Open "Handifast Version 10.5" for Graphics_nsb as #main
    #main "trapclose [quit]"
    #main "down; fill Buttonface; flush"
    print #main, "color blue; backcolor Buttonface"
numberdays = date$("days") ' check to see if donation request is over 60 days then it doesn't print any longer.
    if numberdays > 42200 then
    goto [jumpdate]
    ELSE
     print #main, "Place 10 50";
    #main "font ms_sans_serif 12 Bold"
    print #main, "\ Greetings."
    print #main, "\ Hope you find this tool helpful";
     print #main, "\ I worked on this program for a very long time "
     print #main, "\ and put in many hours  in coding the program. "
     print #main, "\ So I'm going to ask, if you see any value "
      print #main, "\ in Handifast, would you be so kind as to "
     print #main, "\ send a donation my way.  "

   print #main, "\     "
   print #main, "\ My Paypal address is milfredo@sonic.net "
   print #main, "\ I appreciate anything you can do!    "
   print #main, "\ Handi    "
   print #main, "Place 200 330";
   #main "font ms_sans_serif 8"
   print #main, "\Donation Request will disappear in 60 days"
[jumpdate]
   End If
   print #main, "flush"
    #main "font ms_sans_serif 10"
recordnumberfiles = 1 '


[#main.Inputloop]

    Wait

    [closetrack1]
 print #top.textbox7, ""
 close #top
 goto  [#main.Inputloop]


[quit]

    Close #horse1
    Close #racedat
    close #raceobject
    close #raceobjectcontrol
    close #flag
    close #analystfolder
    close #analtotalfolder
    close #tempraceobject

    close #main : END

'code to open display and handicapping screen.
'HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
'HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH



[setup.top.Window]

    '-----Begin code for #top

    'nomainwin
    WindowWidth = 1200
    WindowHeight = 920
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=10



Dim a$(16)'
Dim b$(100)
ranknumber = 0

    '-----Begin GUI objects code
    ComboboxColor$ = "white"
    a$(1) = "Race"
    a$(2) = "race 1"
    a$(3) = "race 2"
    a$(4) = "race 3"
    a$(5) = "race 4"
    a$(6) = "race 5"
    a$(7) = "race 6"
    a$(8) = "race 7"
    a$(9) = "race 8"
    a$(10) = "race 9"
    a$(11) = "race 10"
    a$(12) = "race 11"
    a$(13) = "race 12"
    a$(14) = "race 13"
    a$(15) = "race 14"
    a$(16) = "race 15"

     b$(1) = "analysts"


    combobox #top.combo1, a$(), [trk1races],   25, 115, 100, 100  ' card's list of races for the day
    combobox #top.combo2, b$(), [combox2],   300, 115, 300, 100  ' analysts combobox
    TextboxColor$ = "lightgray"
    textbox #top.textbox7,  25,  89, 100,  25
    button #top.button31,"CT 1.",[closetrack1], UL,   134,  89, 40,  25
     button #top.buttont1,"Print Current Race T1",[trackoneraceoneprint], UL, 506, 33, 156,  25
     graphicbox #top.track1, 0, 152, 1190, 800
    ' radiobutton #top.radiobutton19, "T-1", [radiobutton19Set], [radiobutton19Reset], 134, 115,  40,  25
   ' button #top.buttont1,"Print Current Race T1",[trackoneraceoneprint], UL, 506, 33, 156,  25
button #top.buttontcalc, "Activate Dutchman", [dutchmancalc], UL, 940, 33, 150, 25
button #top.rawnum, "Raw Numbers", [rawselected],UL, 25, 35, 100, 25
button #top.ranknum, "Rank Numbers", [rankselected],UL, 200, 35, 100, 25
button #top.consensusadd, "Add Consensus Analyst", [selconsensus], UL, 650, 80, 200, 25
button #top.analystchange, "Change Analyst Current Race", [changeanalystcurrentrace],UL, 650, 115, 200, 25
button #top.consensus, "Open Consensus", [consensuswindow],UL, 970, 115, 200, 25
button #top.consensus, "Pace Pressure Guage", [Pacewindow],UL, 970, 80, 200, 25


     open "Handifast Version 10" for graphics_nsb as #top
    print #top, "down;fill 37 43 235 ; flush"
    print #top, "color black; backcolor 37 43 235 "
    print #top, "font ms_sans_serif 10"

    print #top, "font ms_sans_serif 14"
print #top, "color white"
print #top, "place 900 24"
print #top, "\The Dutchman Calculator"

print #top, "place 25 24"
print #top, "\Select Raw or Rank Numbers for Display."

    print #top.textbox7, "!font ms_sans_serif 10"
    print #top.textbox7, trackname$
     print #top.buttont1, "!font ms_sans_serif 10 bold"
     print #top, "trapclose [quit.top]"
     #top.combo1, "selectindex 1"
     print #top, "size 4"
    print #top, "line 01 145 1190 145"
    print #top, "down"
    print #top, "font ms_sans_serif 14"
    print #top, "color 255 128 0 Bold"
    print #top, "place 418 24"
    print #top, "\ The H.H. Wood's HandiFast Program"
    print #top, "place 375 100"
 print #top, "color white"
    print #top, "\ Race Analysts"
    print #top, "place 50 80"
    print #top, "\ Track"

    print #top.analystchange, "!hide"
   print  #top.consensusadd, "!hide"

    print #top, "Flush"

     Gosub [selectfolder] ' go allow user to select a folder name
analystsRAF = 1
    gettrim #raceobjectcontrol, 1 ' number of analysts in total
     ' control number for when RAF matches to load new RAF
    For w = 1 to raceobjectnumber
    gettrim  #raceobject, w

    if Folder$ = Foldername$ then
    gosub [loadRAF]' load raf to use to load analysts combobox based on folder selected.
    end if

    Next w




    redim b$(analystsRAF+1)

    for i = 1 to analystsRAF-1
    gettrim #tempraceobject, i
            b$(i) = Name2$
        next i
print #top.combo2, "reload"
print #top.combo2, "enable"

     redim a$(totalracesone+1)
        a$(0) = "Race"
        for i = 1 to totalracesone
            a$(i) = "Race "+ STR$(i)
        next i


       print #top.combo1, "reload"
       print #top.combo1, "enable"
       trkone = 1

 print #top, "color white; backcolor 37 43 235 "
    [top.inputLoop]   'wait here for input event
    wait

[quit.top]

close #top
goto [#main.Inputloop]

'ccccccccccccccccccccccccccccccccccccccccccccc
[trk1races] ' Where we start after user selects a race handicap

 #top.track1 "when leftButtonDouble [leftdoubleclick]"

 print #top, "place 415 130"
print #top, "backcolor  blue"
print #top, "color  blue"
print #top, "circlefilled 7"

print #top.analystchange, "!hide" ' hide change button between races.
print #top.consensusadd, "!hide"
print   #top.combo1, "selectionindex? index"

 racenbr = index-1
    h = horses(0,index - 2)  ' holds total number of horses in race
    numb = h
    marker = markers(0,index - 2)

    mount = marker
    tote = marker

    ConsensusFlag = 0 ' set flag so consensus total doesnt build up.

    gosub [cleanodds]
    goto [scratch]
    wait

'ffffffffffffffffffffffffffffffffffffffffffffffffffffffff

[trk1races2] ' Where we start after user selects a race handicap

 #top.track1 "when leftButtonDouble [leftdoubleclick]"




print #top.analystchange, "!hide"
print   #top.combo1, "selectionindex? index"

 racenbr = index-1
    h = horses(0,index - 2)  ' holds total number of horses in race
    numb = h
    marker = markers(0,index - 2)

    mount = marker
    tote = marker


gosub [cleanodds2]
goto [raceinfo]

    wait




'ffffffffffffffffffffffffffffffffffffffffffffffffffffffff

     [finish]

     GETTRIM #horse1, mount
     Testtype$ = Breedtype$


    open "SCRATCHES" for graphics_nsb as #mainscratch
    print #mainscratch, "down;fill white; flush"
    print #mainscratch, "color black; backcolor white"
    print #mainscratch, "font ms_sans_serif 12 bold"
    print #mainscratch.button1, "!font ms_sans_serif 12 bold"
    print #mainscratch.statictext3, "!font ms_sans_serif 14 bold"
    print #mainscratch.statictext4, "!font ms_sans_serif 14 bold"
    print #mainscratch, "trapclose [quit.mainscratch]"

     w = 70
        print #mainscratch, "font ms_sans_serif 14 bold"
        GETTRIM #horse1, mount
        Print #mainscratch, "Place 80  20 ";
        print #mainscratch, "\"; "Scratches for";"  ";Track1$;"  "; trk1currentmonth;"/"; trk1currentday;"/"; trk1currentyear;"  ";"Race #";" ";trk1Racenumber
        print #mainscratch, "font ms_sans_serif 12 bold"
        print #mainscratch, "color Darkblue"   'print horses on scratch sheet
        for f = 0 to numb-1
            GETTRIM #horse1, mount
            Print #mainscratch, "Place 70  "; w
            print #mainscratch, "\"; "#";Saddlecloth$
            print #mainscratch, "Place 120  "; w
            print #mainscratch, "\"; HorseName$

            w = w + 30
            mount = mount + 1
        next f

        print #mainscratch, "flush"
        race1 = 0

        for d = 0 to 20
            names(d) = 0
        next d

        [mainscratch.inputLoop]   'wait here for input event
    wait

[closescratch]   'Perform action for the button named 'button1'

    goto [quit.mainscratch]

 [checkbox2Set]   'Perform action for the checkbox named 'checkbox2'


    print #mainscratch, "place 70 70 ";
    print #mainscratch, "\                                                                 ";
    names(0) = 1


    wait


[checkbox2Reset]   'Perform action for the checkbox named 'checkbox2'

    'Insert your own code here

    wait

[checkbox4Set]   'Perform action for the checkbox named 'checkbox4'


    print #mainscratch, "place 70 100 ";
    print #mainscratch, "\                                                                  ";
    names(1) = 1


    wait



[checkbox4Reset]   'Perform action for the checkbox named 'checkbox4'

    'Insert your own code here

    wait

[checkbox5Set]   'Perform action for the checkbox named 'checkbox5'



    print #mainscratch, "place 70 130 ";
    print #mainscratch, "\                                                                            ";
    names(2) = 1


    wait



[checkbox5Reset]   'Perform action for the checkbox named 'checkbox5'

    'Insert your own code here

    wait

[checkbox6Set]   'Perform action for the checkbox named 'checkbox6'



    print #mainscratch, "place 70 160 ";
    print #mainscratch, "\                                                                              ";
    names(3) = 1


    wait



[checkbox6Reset]   'Perform action for the checkbox named 'checkbox6'

    'Insert your own code here

    wait

[checkbox7Set]   'Perform action for the checkbox named 'checkbox7'



    print #mainscratch, "place 70 190 ";
    print #mainscratch, "\                                                                                  ";
    names(4) = 1

    wait



[checkbox7Reset]   'Perform action for the checkbox named 'checkbox7'

    'Insert your own code here

    wait

[checkbox8Set]   'Perform action for the checkbox named 'checkbox8'



    print #mainscratch, "place 70 220 ";
    print #mainscratch, "\                                                                                ";
    names(5) = 1


    wait



[checkbox8Reset]   'Perform action for the checkbox named 'checkbox8'

    'Insert your own code here

    wait

[checkbox9Set]   'Perform action for the checkbox named 'checkbox9'



    print #mainscratch, "place 70 250 ";
    print #mainscratch, "\                                                                                       ";
    names(6) = 1


    wait



[checkbox9Reset]   'Perform action for the checkbox named 'checkbox9'

    'Insert your own code here

    wait

[checkbox10Set]   'Perform action for the checkbox named 'checkbox10'



    print #mainscratch, "place 70 280 ";
    print #mainscratch, "\                                                                                              ";
    names(7) = 1


    wait



[checkbox10Reset]   'Perform action for the checkbox named 'checkbox10'

    'Insert your own code here

    wait

[checkbox11Set]   'Perform action for the checkbox named 'checkbox11'



    print #mainscratch, "place 70 310 ";
    print #mainscratch, "\                                                                                               ";
    names(8) = 1


    wait



[checkbox11Reset]   'Perform action for the checkbox named 'checkbox11'

    'Insert your own code here

    wait

[checkbox12Set]   'Perform action for the checkbox named 'checkbox12'



    print #mainscratch, "place 70 340 ";
    print #mainscratch, "\                                                                                               ";
    names(9) = 1


    wait



[checkbox12Reset]   'Perform action for the checkbox named 'checkbox12'

    'Insert your own code here

    wait

[checkbox13Set]   'Perform action for the checkbox named 'checkbox13'



    print #mainscratch, "place 70 370 ";
    print #mainscratch, "\                                                                                                ";
    names(10) = 1


    wait



[checkbox13Reset]   'Perform action for the checkbox named 'checkbox13'

    'Insert your own code here

    wait

[checkbox14Set]   'Perform action for the checkbox named 'checkbox14'



    print #mainscratch, "place 70 400 ";
    print #mainscratch, "\                                                                                             ";
    names(11) = 1


    wait



[checkbox14Reset]   'Perform action for the checkbox named 'checkbox14'

    'Insert your own code here

    wait

[checkbox15Set]   'Perform action for the checkbox named 'checkbox15'



    print #mainscratch, "place 70 430 ";
    print #mainscratch, "\                                                                                              ";
    names(12) = 1


    wait



[checkbox15Reset]   'Perform action for the checkbox named 'checkbox15'

    'Insert your own code here

    wait

[checkbox16Set]   'Perform action for the checkbox named 'checkbox16'



    print #mainscratch, "place 70 460 ";
    print #mainscratch, "\                                                                                                ";
    names(13) = 1


    wait



[checkbox16Reset]   'Perform action for the checkbox named 'checkbox16'

    'Insert your own code here

    wait

[checkbox17Set]   'Perform action for the checkbox named 'checkbox17'



    print #mainscratch, "place 70 490 ";
    print #mainscratch, "\                                                                                                ";
    names(14) = 1


    wait



[checkbox17Reset]   'Perform action for the checkbox named 'checkbox17'

    'Insert your own code here

    wait

[checkbox18Set]   'Perform action for the checkbox named 'checkbox18'



    print #mainscratch, "place 70 520 ";
    print #mainscratch, "\                                                                                                 ";
    names(15) = 1


    wait



[checkbox18Reset]   'Perform action for the checkbox named 'checkbox18'

    'Insert your own code here

    wait

[checkbox19Set]   'Perform action for the checkbox named 'checkbox19'



    print #mainscratch, "place 70 550 ";
    print #mainscratch, "\                                                                                                   ";
    names(16) = 1


    wait



[checkbox19Reset]   'Perform action for the checkbox named 'checkbox19'

    'Insert your own code here

    wait

[checkbox20Set]   'Perform action for the checkbox named 'checkbox20'



    print #mainscratch, "place 70 580 ";
    print #mainscratch, "\                                                                                                  ";
    names(17) = 1


    wait



[checkbox20Reset]   'Perform action for the checkbox named 'checkbox20'

    'Insert your own code here

    wait

[checkbox21Set]   'Perform action for the checkbox named 'checkbox21'



    print #mainscratch, "place 70 610 ";
    print #mainscratch, "\                                                                                                    ";
    names(18) = 1


    wait



[checkbox21Reset]   'Perform action for the checkbox named 'checkbox21'

    'Insert your own code here

    wait

[checkbox22Set]   'Perform action for the checkbox named 'checkbox22'



    print #mainscratch, "place 70 640 ";
    print #mainscratch, "\                                                                                                     ";
    names(19) = 1


    wait



[checkbox22Reset]   'Perform action for the checkbox named 'checkbox22'

    'Insert your own code here


[checkbox23Set]   'Perform action for the checkbox named 'checkbox22'



    print #mainscratch, "place 70 670 ";
    print #mainscratch, "\                                                                                                 ";
    names(20) = 1


    wait



[checkbox23Reset]   'Perform action for the checkbox named 'checkbox22'

    'Insert your own code here


[checkbox24Set]   'Perform action for the checkbox named 'checkbox22'



    print #mainscratch, "place 70 700 ";
    print #mainscratch, "\                                                                                           ";
    names(21) = 1


    wait



[checkbox24Reset]   'Perform action for the checkbox named 'checkbox22'

    'Insert your own code here


[checkbox25Set]   'Perform action for the checkbox named 'checkbox22'



    print #mainscratch, "place 70 730 ";
    print #mainscratch, "\                                                                                                ";
    names(22) = 1


    wait



[checkbox25Reset]   'Perform action for the checkbox named 'checkbox22'




    [quit.mainscratch] 'End the program
    print #mainscratch, "discard"
    close #mainscratch

    goto [raceinfo]



    'clclclclclclclclclclclclclclclclclclclclc
   [cleanodds]
     for cl = 0 to h
        srts(cl,0) = 0
        srts(cl,0) = 0
        srts(cl,0) = 0
        srt(cl,0) = 0
        srt(cl,1) = 0
    next cl
    totpoints = 0
    for c = 0 to 25
        firstimer(c) = 0
    next c
    for cs = 0 to 25
        names(cs) = 0
    next cs



    return


    'clclclclclclclclclclclclclclclclclclclclc
   [cleanodds2]
     for cl = 0 to h
        srts(cl,0) = 0
        srts(cl,0) = 0
        srts(cl,0) = 0
        srt(cl,0) = 0
        srt(cl,1) = 0
    next cl
    totpoints = 0
    for c = 0 to 25
        firstimer(c) = 0
    next c
 '   for cs = 0 to 25
 '       names(cs) = 0
 '   next cs



    return

    'ririririririririririririririri

    [raceinfo]

changeA = 0 '                      reset change analyst switch to neutral position

    print #top.track1,"color black; backcolor buttonface"
    GETTRIM #horse1, marker
    racenumber(A) = racenbr
    todaysdistance(A) = trk1todaysdistance
    surf$(A) = surf$
    cond$(A) = cond$
    cond2$(A) = cond22$
    RaceClassification$(A) = RaceClassification$
    Track$(A) = Track$
    racemonth(A) = racemonth
    racedate(A) = racedate
    raceyr(A) = raceyr
    todayssurface$(A) = trk1surf2$ 'todayssurface$
    hurdles1$(A) = trk1hurdles$
    'firster1$(A) = firster$

setdist = todaysdistance(A)
setsurf$ = todayssurface$(A)

gosub [settings]
' The above code and code below is race info printed out so user can decide which analyst to use.

     print #top.track1, "down;fill buttonface; flush"
    print #top.track1, "color  black;backcolor buttonface"
    print #top.track1, "font arial 12 bold"
    'GETTRIM #race1, racenum
    print #top.track1, "place 12 22"
    print #top.track1, "\";Track1$;"  "; trk1currentmonth;"/"; trk1currentday;"/"; trk1currentyear;"                                                                                                     Form Adjusted Speed Totals"
    print #top.track1, "color DarkBlue"
    print #top.track1, "place 12 42"
    print #top.track1, "\Race #";" ";trk1Racenumber;" ";trk1posttime2$;"  ";trk1distance$;"  ";trk1surf$;"  ";trk1statebred$;trk1RaceClassification$;"  ";hurdles1$(A);"  ";"Purse";"  $";trk1Purse;"  ";trk1cond$;" ";trk1cond22$;"  ";trk1cond33$
    print #top.track1, "place 12 62"
    print #top.track1, "\";trk1wage$;trk1wage2$
    print #top.track1, "place 440 84 "; y
    print #top.track1, "\(Double-click in any column with numbers to sort)";





     horserecord = 1
    mote = 1







    raceactive1 = raceactive1 + 1 ' increment race scratch count


    mount = marker
    disp = marker
    trip = marker


  '======================================================================================================

    'Here is where we need to have user select the Analyst.

    '======================================================================================================

    wait

[runrace]

    for f = 0 to numb-1
        GETTRIM #horse1, mount

        if names(f) = 1 then
            nameofhorse$(f) = ""
            TracSaddle$(f) = ""
            Tracstyles$(f) = ""
            lmh$(f) = ""
            firstimer(f) = 0
            firster1$(f) = ""
            allfairodds$(f) = ""
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
            holder(f,69) = 0
            holder(f,70) = 0


        else



            nameofhorse$(f) = HorseName$
            TracSaddle$(f) = space$(2-len(Saddlecloth$))+Saddlecloth$
            Tracstyles$(f) = runstyle1$
            lmh$(f) = quirinstyle$
            firstimer(f) = fts
            surface(f) =  surfind
            surface1(f) =  surfind1
            surface2(f) =  surfind2
            lenindicator(f) = lenind
            lenindicator1(f) = lenind1
            lenindicator2(f) = lenind2
            hml$(f) = space$(5-len(ml$))+ml$
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
            holder(f,10) = primepower
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
            holder(f,69) = pacepoints ' holding for pace number later in program
            holder(f,70) = quirinpoints




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

        mount = mount + 1
    next f

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
            pwr = INT((.6 * holder(cntr,25)) + (.4 * holder(cntr,24)))
            holder(cntr,26) = pwr
        else
            pwr = INT((.5 * holder(cntr,25)) + (.5 * holder(cntr,24)))
            holder(cntr,26) = pwr
        end if
    next

    'fastnum = (int(((fig + ccc1 + hy + avlp + avsp + ds) / 6)*10)) *.1

    'experimental fast number
    for cntr = 0 to numb - 1
        holder(cntr,13) = holder(cntr,13) + int((.15 * holder(cntr,24)))
    next
   'Here we will have the program go to the scaling object the user chose

    print #top, "backcolor  blue"
    print #top, "color blue"
    print #top, "size 3"
    print #top, "line 620 115 635 95"
    print #top, "line 620 115 650 120"
    print #top, "line 620 115 665 102"

   print #top.analystchange, "!show"  ' show the change button after first analyst selected.
   print #top.consensusadd, "!show"

  Select Case   Scale2$

     case "Woods"
     goto [woods]

     case "Fibonacci"
     goto [Fibonacci]


END Select




'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
'THIS IS WHERE THE WOODS SCALES CALCULATES THE TOTAL POINTS


[woods]
 if CL1 > 0 or CL1 < 0 then
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
        holder(x,17) = CL1*2
       case 2
        holder(x,17) = CL1
       case 3
        holder(x,17) = CL1
       case 4
        holder(x,17) = CL1
    end select
        next x

    end if



    if DS1 > 0 or DS1 < 0 then
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
        holder(x,17) = DS1*2 + holder(x,17)
       case 2
        holder(x,17) = DS1 + holder(x,17)
       case 3
        holder(x,17) = DS1 + holder(x,17)
       case 4
        holder(x,17) = DS1 + holder(x,17)
    end select
        next x

    end if

    if EP1 > 0 or EP1 < 0 then
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
        holder(x,17) = EP1*2 + holder(x,17)
       case 2
        holder(x,17) = EP1 + holder(x,17)
       case 3
        holder(x,17) = EP1 + holder(x,17)
       case 4
        holder(x,17) = EP1 + holder(x,17)
    end select
        next x

    end if

    if LP1 > 0 or LP1 < 0 then
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
        holder(x,17) = LP1*2 + holder(x,17)
       case 2
        holder(x,17) = LP1 + holder(x,17)
       case 3
        holder(x,17) = LP1 + holder(x,17)
       case 4
        holder(x,17) = LP1 + holder(x,17)
    end select
        next x

    end if

    if FM1 > 0 or FM1 < 0 then
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
        holder(x,17) = FM1*2 + holder(x,17)
       case 2
        holder(x,17) = FM1 + holder(x,17)
       case 3
        holder(x,17) = FM1 + holder(x,17)
       case 4
        holder(x,17) = FM1 + holder(x,17)
    end select
        next x

    end if

    if PC1 > 0 or PC1 < 0 then
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
        holder(x,17) = PC1*2 + holder(x,17)
       case 2
        holder(x,17) = PC1 + holder(x,17)
       case 3
        holder(x,17) = PC1 + holder(x,17)
       case 4
        holder(x,17) = PC1 + holder(x,17)
    end select
        next x

    end if

    if AVP1 > 0 or AVP1 < 0 then
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
        holder(x,17) = AVP1*2 + holder(x,17)
       case 2
        holder(x,17) = AVP1 + holder(x,17)
       case 3
        holder(x,17) = AVP1 + holder(x,17)
       case 4
        holder(x,17) = AVP1 + holder(x,17)
    end select
        next x

    end if

    if TF1 > 0 or TF1 < 0 then
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
        holder(x,17) = TF1*2 + holder(x,17)
       case 2
        holder(x,17) = TF1 + holder(x,17)
       case 3
        holder(x,17) = TF1 + holder(x,17)
       case 4
        holder(x,17) = TF1 + holder(x,17)
    end select
        next x

    end if

    if  MY1 > 0 or MY1 < 0 then
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
        holder(x,17) = MY1*2 + holder(x,17)
       case 2
        holder(x,17) = MY1 + holder(x,17)
       case 3
        holder(x,17) = MY1 + holder(x,17)
       case 4
        holder(x,17) = MY1 + holder(x,17)
    end select
        next x

    end if

    if DT1 > 0 or DT1 < 0 then
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
        holder(x,17) = DT1*2 + holder(x,17)
       case 2
        holder(x,17) = DT1 + holder(x,17)
       case 3
        holder(x,17) = DT1 + holder(x,17)
       case 4
        holder(x,17) = DT1 + holder(x,17)
    end select
        next x

    end if

    if Fast1 > 0 or Fast1 < 0 then
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
        holder(x,17) = Fast1*2 + holder(x,17)
       case 2
        holder(x,17) = Fast1 + holder(x,17)
       case 3
        holder(x,17) = Fast1 + holder(x,17)
       case 4
        holder(x,17) = Fast1 + holder(x,17)
    end select
        next x

    end if

    if  TR1 > 0 or TR1 < 0 then
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
        holder(x,17) = TR1*2 + holder(x,17)
       case 2
        holder(x,17) = TR1 + holder(x,17)
       case 3
        holder(x,17) = TR1 + holder(x,17)
       case 4
        holder(x,17) = TR1 + holder(x,17)
    end select
        next x

    end if

    if JK1 > 0 or JK1 < 0 then
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
        holder(x,17) = JK1*2 + holder(x,17)
       case 2
        holder(x,17) = JK1 + holder(x,17)
       case 3
        holder(x,17) = JK1 + holder(x,17)
       case 4
        holder(x,17) = JK1 + holder(x,17)
    end select
        next x

    end if

    if ML1 > 0 or ML1 < 0 then
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
        holder(x,17) = ML1*2 + holder(x,17)
       case 2
        holder(x,17) = ML1 + holder(x,17)
       case 3
        holder(x,17) = ML1 + holder(x,17)
       case 4
        holder(x,17) = ML1 + holder(x,17)
    end select
        next x
    end if

    if S11 > 0 or S11 < 0 then
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
        holder(x,17) = S11*2 + holder(x,17)
       case 2
        holder(x,17) = S11 + holder(x,17)
       case 3
        holder(x,17) = S11 + holder(x,17)
       case 4
        holder(x,17) = S11 + holder(x,17)
    end select
        next x

    end if

    if S21 > 0 or S21 < 0 then
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
        holder(x,17) = S21*2 + holder(x,17)
       case 2
        holder(x,17) = S21 + holder(x,17)
       case 3
        holder(x,17) = S21 + holder(x,17)
       case 4
        holder(x,17) = S21 + holder(x,17)
    end select
        next x

    end if

    if S31 > 0 or S31 < 0 then
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
        holder(x,17) = S31*2 + holder(x,17)
       case 2
        holder(x,17) = S31 + holder(x,17)
       case 3
        holder(x,17) = S31 + holder(x,17)
       case 4
        holder(x,17) = S31 + holder(x,17)
    end select
        next x

    end if


    if CC1 > 0 or CC1 < 0 then
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
        holder(x,17) = CC1*2 + holder(x,17)
       case 2
        holder(x,17) = CC1 + holder(x,17)
       case 3
        holder(x,17) = CC1 + holder(x,17)
       case 4
        holder(x,17) = CC1 + holder(x,17)
    end select
        next x

    end if


    if PS1 > 0 or PS1 < 0 then
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
        holder(x,17) = PS1*2 + holder(x,17)
       case 2
        holder(x,17) = PS1 + holder(x,17)
       case 3
        holder(x,17) = PS1 + holder(x,17)
       case 4
        holder(x,17) = PS1 + holder(x,17)
    end select
        next x

    end if


    if PWR1 > 0 or PWR1 < 0 then
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
        holder(x,17) = PWR1*2 + holder(x,17)
       case 2
        holder(x,17) = PWR1 + holder(x,17)
       case 3
        holder(x,17) = PWR1 + holder(x,17)
       case 4
        holder(x,17) = PWR1 + holder(x,17)
    end select
        next x

    end if


    if CS1 > 0 or CS1 < 0 then
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
        holder(x,17) = CS1*2 + holder(x,17)
       case 2
        holder(x,17) = CS1 + holder(x,17)
       case 3
        holder(x,17) = CS1 + holder(x,17)
       case 4
        holder(x,17) = CS1 + holder(x,17)
    end select
        next x

    end if



     if  DAW1 > 0 or DAW1 < 0 then
        for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb
if  holder(x,2) < holder(y,2) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

       Select Case  poscount
       case 1
        if holder(x,2) > 45 then
        holder(x,17) = DAW1*2 + holder(x,17)
        end if
       case 2
        if holder(x,2) > 45 then
        holder(x,17) = DAW1 + holder(x,17)
        end if
       case 3
        if holder(x,2) > 45 then
        holder(x,17) = DAW1  + holder(x,17)
        end if
       case 4
       if holder(x,2) > 45 then
        holder(x,17) = DAW1 + holder(x,17)
        end if
    end select
        next x

    end if





    sort holder(),0,numb-1,0
    for f = 0 to numb-1
        totpoints = totpoints + holder(f,17)
    next f
    for ff = 0 to numb-1
        if holder(ff,17) < 1 then
            holder(ff,18) = 0 '299
        else
            holder(ff,18) = (totpoints-holder(ff,17))/holder(ff,17)

        end if

    next ff




    for pts = 0 to numb-1
        srt1(pts,0) =  pts
        srt1(pts,1) = holder(pts,17)
        srt1(pts,2) = holder(pts,18)
    next pts
    sort srt1(),numb-1,0,1




    for pts = 0 to numb-1
        srt(pts,0) =  pts
        srt(pts,1) = holder(pts,0)
    next pts
    sort srt(),0,numb-1,1


    if ConsensusFlag = 0 then
gosub [cleanconsensustotal]
 end if


    gosub [sortconsensus] ' go and sort based on total points
if consensusButton = 2 then
goto [secondconsensus]
End if

if consensusButton = 3 then
gosub [thirdconsensus]
End if

if consensusButton = 4 then
gosub [fourthconsensus]
End if

    goto [fairodds] ' if woods is scaling model then this is end of woods and now detour to rest of print statement for the race

    'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

    [Fibonacci]

     if CL1 > 0 or CL1 < 0 then   ' CL
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
        holder(x,17) = CL1
       case 2
        holder(x,17) = CL1* .62
       case 3
        holder(x,17) = CL1* .38
       case 4
        holder(x,17) = CL1* .24
    end select
        next x

    end if
    '--------------------------

    if DS1 > 0 or DS1 < 0 then   ' DS


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
        holder(x,17) = DS1 + holder(x,17)
       case 2
        holder(x,17) = DS1* .62 + holder(x,17)
       case 3
        holder(x,17) = DS1* .38 + holder(x,17)
       case 4
        holder(x,17) = DS1* .24 + holder(x,17)
    end select
        next x

    end if
    '--------------------------
    if EP1 > 0 or  EP1 < 0 then

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
        holder(x,17) = EP1 + holder(x,17)
       case 2
        holder(x,17) = EP1* .62 + holder(x,17)
       case 3
        holder(x,17) = EP1* .38 + holder(x,17)
       case 4
        holder(x,17) = EP1* .24 + holder(x,17)
    end select
        next x

    end if

    '--------------------------
    if LP1 > 0 or LP1 < 0 then

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
        holder(x,17) = LP1 + holder(x,17)
       case 2
        holder(x,17) = LP1* .62 + holder(x,17)
       case 3
        holder(x,17) = LP1* .38 + holder(x,17)
       case 4
        holder(x,17) = LP1* .24 + holder(x,17)
    end select
        next x

    end if
    '--------------------------
    if FM1 > 0 or FM1 < 0 then

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
        holder(x,17) = FM1 + holder(x,17)
       case 2
        holder(x,17) = FM1* .62 + holder(x,17)
       case 3
        holder(x,17) = FM1* .38 + holder(x,17)
       case 4
        holder(x,17) = FM1* .24 + holder(x,17)
    end select
        next x

        end if
    '--------------------------
    if PC1 > 0 or PC1 < 0 then

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
        holder(x,17) = PC1 + holder(x,17)
       case 2
        holder(x,17) = PC1* .62 + holder(x,17)
       case 3
        holder(x,17) = PC1* .38 + holder(x,17)
       case 4
        holder(x,17) = PC1* .24 + holder(x,17)
    end select
        next x

    end if
    '--------------------------
    if AVP1 > 0 or AVP1 < 0 then

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
        holder(x,17) = AVP1 + holder(x,17)
       case 2
        holder(x,17) = AVP1* .62 + holder(x,17)
       case 3
        holder(x,17) = AVP1* .38 + holder(x,17)
       case 4
        holder(x,17) = AVP1* .24 + holder(x,17)
    end select
        next x

    end if
    '--------------------------
    if TF1 > 0 or TF1 < 0 then

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
        holder(x,17) = TF1 + holder(x,17)
       case 2
        holder(x,17) = TF1* .62 + holder(x,17)
       case 3
        holder(x,17) = TF1* .38 + holder(x,17)
       case 4
        holder(x,17) = TF1* .24 + holder(x,17)
    end select
        next x

    end if
    '--------------------------
    if  MY1 > 0 or MY1 < 0 then

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
        holder(x,17) = MY1 + holder(x,17)
       case 2
        holder(x,17) = MY1* .62 + holder(x,17)
       case 3
        holder(x,17) = MY1* .38 + holder(x,17)
       case 4
        holder(x,17) = MY1* .24 + holder(x,17)
    end select
        next x

    end if
    '--------------------------
    if DT1 > 0 or DT1 < 0 then

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
        holder(x,17) = DT1 + holder(x,17)
       case 2
        holder(x,17) = DT1* .62 + holder(x,17)
       case 3
        holder(x,17) = DT1* .38 + holder(x,17)
       case 4
        holder(x,17) = DT1* .24 + holder(x,17)
    end select
        next x

    end if
    '--------------------------
    if Fast1 > 0 or Fast1 < 0 then

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
        holder(x,17) = Fast1 + holder(x,17)
       case 2
        holder(x,17) = Fast1* .62 + holder(x,17)
       case 3
        holder(x,17) = Fast1* .38 + holder(x,17)
       case 4
        holder(x,17) = Fast1* .24 + holder(x,17)
    end select
        next x

        end if
    '--------------------------
    if  TR1 > 0 or TR1 < 0 then

        for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb
     a$ = nameofhorse$(x)
    aa$ = nameofhorse$(y)
if  holder(x,14) < holder(y,14) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

       Select Case  poscount
       case 1
        holder(x,17) = TR1 + holder(x,17)
       case 2
        holder(x,17) = TR1* .62 + holder(x,17)
       case 3
        holder(x,17) = TR1* .38 + holder(x,17)
       case 4
        holder(x,17) = TR1* .24 + holder(x,17)
    end select
        next x

    end if
    '--------------------------
    if JK1 > 0 or JK1 < 0 then

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
        holder(x,17) = JK1 + holder(x,17)
       case 2
        holder(x,17) = JK1* .62 + holder(x,17)
       case 3
        holder(x,17) = JK1* .38 + holder(x,17)
       case 4
        holder(x,17) = JK1* .24 + holder(x,17)
    end select
        next x

    end if
    '--------------------------
    if ML1 > 0 or  ML1 < 0 then

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
        holder(x,17) = ML1 + holder(x,17)
       case 2
        holder(x,17) = ML1* .62 + holder(x,17)
       case 3
        holder(x,17) = ML1* .38 + holder(x,17)
       case 4
        holder(x,17) = ML1* .24 + holder(x,17)
    end select
        next x
    end if
    '--------------------------
    if S11 > 0 or S11 < 0 then

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
        holder(x,17) = S11 + holder(x,17)
       case 2
        holder(x,17) = S11* .62 + holder(x,17)
       case 3
        holder(x,17) = S11* .38 + holder(x,17)
       case 4
        holder(x,17) = S11* .24 + holder(x,17)
    end select
        next x
    end if


    '--------------------------
    if S21 > 0 or S21 < 0 then

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
        holder(x,17) = S21 + holder(x,17)
       case 2
        holder(x,17) = S21* .62 + holder(x,17)
       case 3
        holder(x,17) = S21* .38 + holder(x,17)
       case 4
        holder(x,17) = S21* .24 + holder(x,17)
    end select
        next x

    end if
    '--------------------------
    if S31 > 0 or S31 < 0 then

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
        holder(x,17) = S31 + holder(x,17)
       case 2
        holder(x,17) = S31* .62 + holder(x,17)
       case 3
        holder(x,17) = S31* .38 + holder(x,17)
       case 4
        holder(x,17) = S31* .24 + holder(x,17)
    end select
        next x

    end if
'--------------------------
    if CC1 > 0 or CC1 < 0 then

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
        holder(x,17) = CC1 + holder(x,17)
       case 2
        holder(x,17) = CC1* .62 + holder(x,17)
       case 3
        holder(x,17) = CC1* .38 + holder(x,17)
       case 4
        holder(x,17) = CC1* .24 + holder(x,17)
    end select
        next x

    end if
'--------------------------
    if PS1 > 0 or PS1 < 0 then

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
        holder(x,17) = PS1 + holder(x,17)
       case 2
        holder(x,17) = PS1* .62 + holder(x,17)
       case 3
        holder(x,17) = PS1* .38 + holder(x,17)
       case 4
        holder(x,17) = PS1* .24 + holder(x,17)
    end select
        next x
    end if
'--------------------------
    if PWR1 > 0 or PWR1 < 0 then

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
        holder(x,17) = PWR1 + holder(x,17)
       case 2
        holder(x,17) = PWR1* .62 + holder(x,17)
       case 3
        holder(x,17) = PWR1* .38 + holder(x,17)
       case 4
        holder(x,17) = PWR1* .24 + holder(x,17)
    end select
        next x

    end if
'--------------------------
    if CS1 > 0 or CS1 < 0 then

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
        holder(x,17) =  CS1 + holder(x,17)
       case 2
        holder(x,17) =  CS1* .62 + holder(x,17)
       case 3
        holder(x,17) =  CS1* .38 + holder(x,17)
       case 4
        holder(x,17) =  CS1* .24 + holder(x,17)
    end select
        next x

    end if

    if  DAW1 > 0 or DAW1 < 0 then

        for x =  0 to numb-1
        poscount = 0
        y = 0
     while y <  numb
if  holder(x,2) < holder(y,2) then
poscount = poscount + 1
end if
 y = y + 1
 Wend
poscount = poscount + 1

       Select Case  poscount
       case 1
        if holder(x,2) > 45 then
        holder(x,17) = DAW1 + holder(x,17)
        end if
       case 2
        if holder(x,2) > 45 then
        holder(x,17) = DAW1*.62 + holder(x,17)
        end if
       case 3
        if holder(x,2) > 45 then
        holder(x,17) = DAW1*.38  + holder(x,17)
        end if
       case 4
       if holder(x,2) > 45 then
        holder(x,17) = DAW1*.24  + holder(x,17)
        end if
    end select
        next x

    end if



    sort holder(),0,numb-1,0
    for f = 0 to numb-1
        totpoints = totpoints + holder(f,17)
    next f
    for ff = 0 to numb-1
        if holder(ff,17) < 1 then
            holder(ff,18) = 0 '299
        else
            holder(ff,18) = (totpoints-holder(ff,17))/holder(ff,17)

        end if

    next ff




    for pts = 0 to numb-1
        srt1(pts,0) =  pts
        srt1(pts,1) = holder(pts,17)
        srt1(pts,2) = holder(pts,18)
    next pts
    sort srt1(),numb-1,0,1




    for pts = 0 to numb-1
        srt(pts,0) =  pts
        srt(pts,1) = holder(pts,0)
    next pts
    sort srt(),0,numb-1,1


if ConsensusFlag = 0 then
gosub [cleanconsensustotal]
 end if


    gosub [sortconsensus] ' go and sort based on total points
if consensusButton = 2 then
goto [secondconsensus]
End if

if consensusButton = 3 then
gosub [thirdconsensus]
End if

if consensusButton = 4 then
gosub [fourthconsensus]
End if

    goto [fairodds]


    [Percentage]

    [fairodds]

'***********************************  fairodds text track1
    for fo = 0 to numb-1
        if holder(fo,18) >= 0.10 and holder(fo,18) <= 0.11 then fairodds$(fo) = "1/9"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 0.20 and holder(fo,18) <= 0.3999 then fairodds$(fo) = "1/5"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 0.40 and holder(fo,18) <= 0.4999 then fairodds$(fo) = "2/5"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 0.50 and holder(fo,18) <= 0.5999 then fairodds$(fo) = "1/2"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 0.60 and holder(fo,18) <= 0.7999 then fairodds$(fo) = "3/5"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 0.80 and holder(fo,18) <= 0.9999 then fairodds$(fo) = "4/5"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 1.00 and holder(fo,18) <= 1.1999 then fairodds$(fo) = "1-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 1.20 and holder(fo,18) <= 1.3999 then fairodds$(fo) = "6/5"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 1.40 and holder(fo,18) <= 1.4999 then fairodds$(fo) = "7/5"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 1.50 and holder(fo,18) <= 1.5999 then fairodds$(fo) = "3/2"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 1.60 and holder(fo,18) <= 1.7999 then fairodds$(fo) = "8/5"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 1.80 and holder(fo,18) <= 1.9999 then fairodds$(fo) = "9/5"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 2.00 and holder(fo,18) <= 2.4999 then fairodds$(fo) = "2-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 2.50 and holder(fo,18) <= 2.9999 then fairodds$(fo) = "5/2"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 3.00 and holder(fo,18) <= 3.4999 then fairodds$(fo) = "3-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 3.50 and holder(fo,18) <= 3.9999 then fairodds$(fo) = "7/2"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 4.00 and holder(fo,18) <= 4.4999 then fairodds$(fo) = "4-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 4.50 and holder(fo,18) <= 4.9999 then fairodds$(fo) = "9/2"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 5.00 and holder(fo,18) <= 5.9999 then fairodds$(fo) = "5-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 6.00 and holder(fo,18) <= 6.9999 then fairodds$(fo) = "6-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 7.00 and holder(fo,18) <= 7.9999 then fairodds$(fo) = "7-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 8.00 and holder(fo,18) <= 8.9999 then fairodds$(fo) = "8-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 9.00 and holder(fo,18) <= 9.9999 then fairodds$(fo) = "9-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 10.00 and holder(fo,18) <= 10.9999 then fairodds$(fo) = "10-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 11.00 and holder(fo,18) <= 11.9999 then fairodds$(fo) = "11-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 12.00 and holder(fo,18) <= 12.9999 then fairodds$(fo) = "12-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 13.00 and holder(fo,18) <= 13.9999 then fairodds$(fo) = "13-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 14.00 and holder(fo,18) <= 14.9999 then fairodds$(fo) = "14-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 15.00 and holder(fo,18) <= 15.9999 then fairodds$(fo) = "15-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 16.00 and holder(fo,18) <= 16.9999 then fairodds$(fo) = "16-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 17.00 and holder(fo,18) <= 17.9999 then fairodds$(fo) = "17-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 18.00 and holder(fo,18) <= 18.9999 then fairodds$(fo) = "18-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 19.00 and holder(fo,18) <= 19.9999 then fairodds$(fo) = "19-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 20.00 and holder(fo,18) <= 20.9999 then fairodds$(fo) = "20-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 21.00 and holder(fo,18) <= 21.9999 then fairodds$(fo) = "21-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 22.00 and holder(fo,18) <= 22.9999 then fairodds$(fo) = "22-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 23.00 and holder(fo,18) <= 23.9999 then fairodds$(fo) = "23-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 24.00 and holder(fo,18) <= 24.9999 then fairodds$(fo) = "24-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 25.00 and holder(fo,18) <= 25.9999 then fairodds$(fo) = "25-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 26.00 and holder(fo,18) <= 26.9999 then fairodds$(fo) = "26-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 27.00 and holder(fo,18) <= 27.9999 then fairodds$(fo) = "27-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 28.00 and holder(fo,18) <= 28.9999 then fairodds$(fo) = "28-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 29.00 and holder(fo,18) <= 29.9999 then fairodds$(fo) = "29-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 30.00 and holder(fo,18) <= 34.9999 then fairodds$(fo) = "30-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 35.00 and holder(fo,18) <= 39.9999 then fairodds$(fo) = "35-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 40.00 and holder(fo,18) <= 44.9999 then fairodds$(fo) = "40-1"
      next

      for fo = 0 to numb-1
        if holder(fo,18) >= 45.00 and holder(fo,18) <= 49.9999 then fairodds$(fo) = "45-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 50.00 and holder(fo,18) <= 54.9999 then fairodds$(fo) = "50-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 55.00 and holder(fo,18) <= 59.9999 then fairodds$(fo) = "55-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 60.00 and holder(fo,18) <= 64.9999 then fairodds$(fo) = "60-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 65.00 and holder(fo,18) <= 69.9999 then fairodds$(fo) = "65-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 70.00 and holder(fo,18) <= 74.9999 then fairodds$(fo) = "70-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 75.00 and holder(fo,18) <= 74.9999 then fairodds$(fo) = "75-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 80.00 and holder(fo,18) <= 84.9999 then fairodds$(fo) = "80-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) >= 85.00 then fairodds$(fo) = "99-1"
      next

    for fo = 0 to numb-1
        if holder(fo,18) = 0.00 then fairodds$(fo) = "99-1"
      next

    for fo = 0 to numb-1
      allfairodds$(fo) = space$(5-len(fairodds$(fo)))+fairodds$(fo)
      next

    y = 210

 If ranknumber > 0 then ' this is the break if displaying rank instead of raw numbers
 goto [classrank]
 End if



'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS

'Here is where we check for Rank or raw.

if ranknumber = 1 then

goto [rankreprint]
end if

    sorted = 0
[reprint]


   print #top.track1,"color black; backcolor buttonface"
    GETTRIM #horse1, marker
    racenumber(A) = racenbr
    todaysdistance(A) = trk1todaysdistance
    surf$(A) = surf$
    cond$(A) = cond$
    cond2$(A) = cond22$
    RaceClassification$(A) = RaceClassification$
    Track$(A) = Track$
    racemonth(A) = racemonth
    racedate(A) = racedate
    raceyr(A) = raceyr
    todayssurface$(A) = trk1surf2$ 'todayssurface$
    hurdles1$(A) = trk1hurdles$
    'firster1$(A) = firster$


setdist = todaysdistance(A)
setsurf$ = todayssurface$(A)



     print #top.track1, "down;fill buttonface; flush"
    print #top.track1, "color  black;backcolor buttonface"
    print #top.track1, "font arial 12 bold"
    'GETTRIM #race1, racenum
    print #top.track1, "place 12 22"
    print #top.track1, "\";Track1$;"  "; trk1currentmonth;"/"; trk1currentday;"/"; trk1currentyear;"                                                                                                     Form Adjusted Speed Totals"
    print #top.track1, "color DarkBlue"
    print #top.track1, "place 12 42"
    print #top.track1, "\Race #";" ";trk1Racenumber;" ";trk1posttime2$;"  ";trk1distance$;"  ";trk1surf$;"  ";trk1statebred$;trk1RaceClassification$;"  ";hurdles1$(A);"  ";"Purse";"  $";trk1Purse;"  ";trk1cond$;" ";trk1cond22$;"  ";trk1cond33$
    print #top.track1, "place 12 62"
    print #top.track1, "\";trk1wage$;trk1wage2$
    print #top.track1, "place 440 84 "; y
    print #top.track1, "\(Double-click in any column with numbers to sort)";"                                                             FTS = FIRSTER"



     print #top.track1, "size 2"
    print #top.track1, "line 01 94 1190 94"
    'print #top.track1, "size 2"
    'print #top.track1, "line 55 120  55 800"
    print #top.track1, "place 8 132"
    print #top.track1, "\Pr#";
    print #top.track1, "place 44 132"
    print #top.track1, "\Horse Name";
    print #top.track1, "place 44 112"
    print #top.track1, "font arial 12 bold"
    print #top.track1, "\Points assigned ==>";
    print #top.track1, "font arial 10 bold"

     print #top.track1, "place 212 112"
    print #top.track1, "\";DAW1 ' days away

    print #top.track1, "place 246 112"
    print #top.track1, "\";CL1 ' cls

    print #top.track1, "place 282 112"
    print #top.track1, "\";DS1 ' ds

    print #top.track1, "place 318 112"
    print #top.track1, "\";EP1 ' ep

    print #top.track1, "place 392 112"
    print #top.track1, "\";LP1 ' lp

    print #top.track1, "place 462 112"
    print #top.track1, "\";FM1 ' fm

    print #top.track1, "place 498 112"
    print #top.track1, "\";PC1 ' pc

    print #top.track1, "place 532 112"
    print #top.track1, "\";AVP1 ' aw

    print #top.track1, "place 572 112"
    print #top.track1, "\";Primepowerpts ' tf

    print #top.track1, "place 608 112"
    print #top.track1, "\";averagespeedpts ' my

    print #top.track1, "place 644 112"
    print #top.track1, "\";DT1 ' dt

    print #top.track1, "place 680 112"
    print #top.track1, "\";Fast1 ' fast

    print #top.track1, "place 716 112"
    print #top.track1, "\";TR1 ' tr

    print #top.track1, "place 752 112"
    print #top.track1, "\"; JK1 ' jk

    print #top.track1, "place 788 112"
    print #top.track1, "\"; S31 's3

    print #top.track1, "place 822 112"
    print #top.track1, "\"; S21 ' s2

    print #top.track1, "place 858 112"
    print #top.track1, "\"; S11 ' s1

    print #top.track1, "place 896 112"
    print #top.track1, "\"; CC1 ' cc

    print #top.track1, "place 930 112"
    print #top.track1, "\"; PS1 ' ps

    print #top.track1, "place 968 112"
    print #top.track1, "\";PWR1 ' per

    print #top.track1, "place 1004 112"
    print #top.track1, "\";CS1 ' carroll speed

    print #top.track1, "place 1038 112"
    print #top.track1, "\"; ML1 ' ml


    print #top.track1, "color  black"
    print #top.track1, "size 2"
    print #top.track1, "line 01 138 1190 138"
    print #top.track1, "color  black"
   ' print #top.track1, "size 2"
   ' print #top.track1, "line 220 120  220 800"

    '----------- These headings added to replace buttons for sort
    print #top.track1, "font arial 10 bold"
    'print #top.track1, "color  blue"
    print #top.track1, "place 212 132"
    print #top.track1, "\LR";
    print #top.track1, "place 248 132"
    print #top.track1, "\CL";
    print #top.track1, "place 284 132"
    print #top.track1, "\DS";
    print #top.track1, "place 320 132"
    print #top.track1, "\EP";
    print #top.track1, "place 358 112"
    print #top.track1, "\RT";
    print #top.track1, "place 350 132"
    print #top.track1, "\SPTS";
    print #top.track1, "place 394 132"
    print #top.track1, "\LP";
    print #top.track1, "place 428 132"
    print #top.track1, "\RS";
    print #top.track1, "place 464 132"
    print #top.track1, "\FM";
    print #top.track1, "place 500 132"
    print #top.track1, "\PC";
    print #top.track1, "place 532 132"
    print #top.track1, "\AVP";

    print #top.track1, "place 574 132"
    print #top.track1, "\PRI";
    print #top.track1, "place 608 132"
    print #top.track1, "\ASP";
    print #top.track1, "place 646 132"
    print #top.track1, "\DT";
    print #top.track1, "place 673 132"
    print #top.track1, "\FAST";
    print #top.track1, "place 716 132"
    print #top.track1, "\TR";
    print #top.track1, "place 752 132"
    print #top.track1, "\JK";
    print #top.track1, "place 790 132"
    print #top.track1, "\S3";
    print #top.track1, "place 824 132"
    print #top.track1, "\S2";
    print #top.track1, "place 860 132"
    print #top.track1, "\S1";
    'print #top.track1, "place 1030 170"
    'print #top.track1, "\RK";
    'print #top.track1, "place 1070 170"
    'print #top.track1, "\WK";
    print #top.track1, "place 894 132"
    print #top.track1, "\C-C";
    print #top.track1, "place 930 132"
    print #top.track1, "\P-S";
    print #top.track1, "place 963 132"
    print #top.track1, "\PWR";
    print #top.track1, "place 1004 132"
    print #top.track1, "\CS";
    print #top.track1, "place 1040 132"
    print #top.track1, "\ML";
    print #top.track1, "place 1072 112"
    print #top.track1, "\FAIR";
    print #top.track1, "place 1070 132"
    print #top.track1, "\ODDS";
    print #top.track1, "place 1112 112"
    print #top.track1, "\TOT";
    print #top.track1, "place 1112 132"
    print #top.track1, "\PTS";

    print #top.track1, "font arial 9 "
    print #top.track1, "color  black"


  for t = 0 to numb-1

     if names(srt(t,0)) = 1 then
            goto [looped]
        else
print #top.track1, "place 12  "; y-54
testname$ = TracSaddle$(srt(t,0))
print #top.track1, "\"; TracSaddle$(srt(t,0))
x=42:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 45  "; y-54
testhorse$ = nameofhorse$(srt(t,0))
print #top.track1, "\"; nameofhorse$(srt(t,0))
x=204:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 210 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),2)) ' days away
x=240:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 246 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),3)) ' class
x=276:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 282 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),4)) ' dist speed
x=312:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 318 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),5)) ' early speed
x=348:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 352 "; y-54
'print #top.track1, "color  red"
print #top.track1, "\"; Tracstyles$(srt(t,0))
x=386:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
'   print #top.track1, "color  black"
print #top.track1, "place 392 "; y-54
print #top.track1, "\"; using("####", holder(srt(t,0),6)) ' late pace
x=420:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 432 "; y-54
print #top.track1, "\"; lmh$(srt(t,0))
x=456:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 462 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),7)) ' form
x=492:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 498 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),8)) ' pcr
x=528:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 536 "; y-54
'if firstimer(srt(t,0)) = 1 then
'holder(srt(t,0),9) = 0
'end if
if holder(srt(t,0),9) > 99998 then
    purse$ = STR$(holder(srt(t,0),9))
    print #top.track1, "\"; left$(purse$, 3)
    else
    if holder(srt(t,0),9) > 999 and holder(srt(t,0),9) < 99999 then
    purse$ = STR$(holder(srt(t,0),9))
    print #top.track1,"\"; left$(purse$, 2)
    else
     if holder(srt(t,0),9) < 999 then
     purse$ = STR$(holder(srt(t,0),9))
     print #top.track1,"\"; left$(purse$,1)
     end if
     end if
     end if


'print #top.track1, "\"; using("###", holder(srt(t,0),9)) ' aw


x=564:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 570 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),10)) ' turf
test = (holder(srt(t,0),10))
x=600:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 606 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),11)) ' mud
x=636:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 642 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),12)) ' dirt
x=672:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "font arial 9 bold"
print #top.track1, "color blue"
print #top.track1, "place 678 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),13)) ' fast
print #top.track1, "font arial 9 "
print #top.track1, "color  black"
x=708:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 714 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),14)) ' trnwpct
x=744:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 750 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),15)) ' jkwpct
x=780:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 786 "; y-54
gosub [getcolor2]
gosub [getdist2]
print #top.track1, "\"; using("###", holder(srt(t,0),19)) ' 3rsr
print #top.track1, "font arial 9"
print #top.track1, "color  black"
x=816:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 822 "; y-54
gosub [getcolor1]
gosub [getdist1]
print #top.track1, "\"; using("###", holder(srt(t,0),20)) ' 2rsr
print #top.track1, "font arial 9"
print #top.track1, "color  black"
x=852:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 858 "; y-54
gosub [getcolor]
gosub [getdist]
print #top.track1, "\"; using("###", holder(srt(t,0),21)) ' 1rsr
print #top.track1, "font arial 9 "
print #top.track1, "color  black"
x=888:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 894 "; y-54
'change display to eliminate WK and RK score;  replace with C-C and P-S
if names(srt(t,0)) = 1 then holder(srt(t,0),24)) = 0
print #top.track1, "\"; using("###", holder(srt(t,0),24)) ' c-c
x=924:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 930 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),25)) ' p-s
x=960:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 966 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),26)) ' pwr
x=996:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 1000 "; y-54
print #top.track1, "\"; using("####", holder(srt(t,0),32)) 'carroll speed
print #top.track1, "down"
x=1032:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 1034 "; y-54
print #top.track1, "\"; hml$(srt(t,0)) 'using("###.#", holder(srt(t,0),16)) ' ml
x=1068:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 1074 "; y-54
print #top.track1, "\"; allfairodds$(srt(t,0))
'print #top.track1, "\"; using("###.####", holder(srt(t,0),18)) ' fair odds
print #top.track1, "font arial 9"
print #top.track1, "color  black"
x=1108:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "font arial 9 bold"
print #top.track1, "color  blue"
print #top.track1, "place 1110 "; y-54
print #top.track1, "\"; using("####", holder(srt(t,0),17)) ' point total
print #top.track1, "font arial 12 bold"
print #top.track1, "color  red"
print #top.track1, "place 1145 "; y-54
'print #top.track1, "\"; using("###", holder(srt(t,0),31))
print #top.track1, "\"; fts$(srt(t,0))
print #top.track1, "font arial 9 "
print #top.track1, "color  black"

end if






x=1:b=1190
'#main, "place ";x;" ";y;
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-46;" ";b;" ";y-46;

        lasty = y ' the last y position for MouseY double-click test

        y = y + 25
[looped]
    next t



print #top.track1, "flush"





    wait

[changeanalystcurrentrace]
print #top.analystchange, "!hide" ' hide change button between races.
dummy = 0



print #top.track1, "cls"

goto [trk1races2]



'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS

[scratch]

 'nomainwin
    WindowWidth = 550
    WindowHeight = 820
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code
    for p = 1 to numb

    button #mainscratch.button1,"Close",[closescratch], UL, 200, 740, 125,  25
    button #mainscratch.button2,"Close",[closescratch], UL, 400, 25, 125,  25
    if p = 1 then checkbox #mainscratch.checkbox2, "", [checkbox2Set], [checkbox2Reset],  30,  52,  40,  25
    statictext #mainscratch.statictext3, "Horses", 170,  25, 100,  40
    statictext #mainscratch.statictext4, "PN", 70,  25, 100,  40
    if p = 2 then checkbox #mainscratch.checkbox4, "", [checkbox4Set], [checkbox4Reset],  30,  82,  42,  25
    if p = 3 then checkbox #mainscratch.checkbox5, "", [checkbox5Set], [checkbox5Reset],  30, 112,  35,  25
    if p = 4 then checkbox #mainscratch.checkbox6, "", [checkbox6Set], [checkbox6Reset],  30, 142,  35,  25
    if p = 5 then checkbox #mainscratch.checkbox7, "", [checkbox7Set], [checkbox7Reset],  30, 172,  35,  25
    if p = 6 then checkbox #mainscratch.checkbox8, "", [checkbox8Set], [checkbox8Reset],  30, 202,  35,  25
    if p = 7 then checkbox #mainscratch.checkbox9, "", [checkbox9Set], [checkbox9Reset],  30, 232,  35,  25
    if p = 8 then checkbox #mainscratch.checkbox10, "", [checkbox10Set], [checkbox10Reset],  30, 262,  35,  25
    if p = 9 then checkbox #mainscratch.checkbox11, "", [checkbox11Set], [checkbox11Reset],  30, 292,  35,  25
    if p = 10 then checkbox #mainscratch.checkbox12, "", [checkbox12Set], [checkbox12Reset],  30, 322,  42,  25
    if p = 11 then checkbox #mainscratch.checkbox13, "", [checkbox13Set], [checkbox13Reset],  30, 352,  42,  25
    if p = 12 then checkbox #mainscratch.checkbox14, "", [checkbox14Set], [checkbox14Reset],  30, 382,  42,  25
    if p = 13 then checkbox #mainscratch.checkbox15, "", [checkbox15Set], [checkbox15Reset],  30, 412,  42,  25
    if p = 14 then checkbox #mainscratch.checkbox16, "", [checkbox16Set], [checkbox16Reset],  30, 442,  42,  25
    if p = 15 then checkbox #mainscratch.checkbox17, "", [checkbox17Set], [checkbox17Reset],  30, 472,  42,  25
    if p = 16 then checkbox #mainscratch.checkbox18, "", [checkbox18Set], [checkbox18Reset],  30, 502,  42,  25
    if p = 17 then checkbox #mainscratch.checkbox19, "", [checkbox19Set], [checkbox19Reset],  30, 532,  42,  25
    if p = 18 then checkbox #mainscratch.checkbox20, "", [checkbox20Set], [checkbox20Reset],  30, 562,  42,  25
    if p = 19 then checkbox #mainscratch.checkbox21, "", [checkbox21Set], [checkbox21Reset],  30, 592,  42,  25
    if p = 20 then checkbox #mainscratch.checkbox22, "", [checkbox22Set], [checkbox22Reset],  30, 622,  42,  25
    if p = 21 then checkbox #mainscratch.checkbox23, "", [checkbox23Set], [checkbox23Reset],  30, 652,  42,  25
    if p = 22 then checkbox #mainscratch.checkbox24, "", [checkbox24Set], [checkbox24Reset],  30, 682,  42,  25
    if p = 23 then checkbox #mainscratch.checkbox25, "", [checkbox25Set], [checkbox25Reset],  30, 712,  42,  25


    next p

    goto [finish]

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

[clrracehorses]

                            Rone = 0
                            Rtwo = 0
                            Rthree = 0
                            Rfour = 0
                            Rfive = 0
                            Rsix = 0
                            Rseven = 0
                            Reight = 0
                            Rnine = 0
                            Rten = 0
                            Releven = 0
                            Rtwelve = 0
                            Rthirteen = 0
                            Rfourteen = 0
                            Rfifteen = 0

                            return
' here we will import the race file

 [ImportRaceFiles]


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
                            fullpath$=extension$+"*.drf;*.mcp;*.jcp"
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
                                goto [#main.Inputloop]
                            end if
                            trackname$ = UPPER$(LEFT$(trackname$,3)) 'assign track name so track sele
                            TrackCSV$ = "" 'initialize the variable for output to .csv file when track is selected
                            NewTrackCSV$="" ' the same for the 2nd csv file


        racecount = 0
        horserecord = 1
        Racenumber = 0
        racerecord = 1
        numberraces = 1

cursor hourglass
       gosub [counthorse]



         close #Hdata

         gosub  [csvracefileread]


         goto [#main.Inputloop]


'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

 [counthorse] ' get number of horses in file to get length of file


                            count = 0


                            while not(eof(#Hdata))
                                input #Hdata, t$


                                count=count+1
                            wend


                            numberhorses = count/ 1435



return



[cleanracehorses]

                            Rone = 0
                            Rtwo = 0
                            Rthree = 0
                            Rfour = 0
                            Rfive = 0
                            Rsix = 0
                            Rseven = 0
                            Reight = 0
                            Rnine = 0
                            Rten = 0
                            Releven = 0
                            Rtwelve = 0
                            Rthirteen = 0
                            Rfourteen = 0
                            Rfifteen = 0

                            return


'---------------------------------------------------------------------

[race#horses]

                            Select Case val(Master$(2))   'adds up and records number of horses in each race

                                case 1
                                Rone = Rone + 1
                                case 2
                                Rtwo = Rtwo + 1
                                case 3
                                Rthree = Rthree + 1
                                case 4
                                Rfour = Rfour + 1
                                case 5
                                Rfive = Rfive + 1
                                case 6
                                Rsix = Rsix + 1
                                case 7
                                Rseven = Rseven + 1
                                case 8
                                Reight = Reight + 1
                                case 9
                                Rnine = Rnine + 1
                                case 10
                                Rten = Rten + 1
                                case 11
                                Releven = Releven + 1
                                case 12
                                Rtwelve = Rtwelve + 1
                                case 13
                                Rthirteen = Rthirteen + 1
                                case 14
                                Rfourteen = Rfourteen + 1
                                case 15
                                Rfifteen = Rfifteen + 1
                            end select
                            return


'---------------------------------------------------------------------


'----------------------------------------------------------------------------


     [csvracefileread]

     cursor hourglass
fileput = 1
raceflag = 0


     open fileName$ for input as #Hdata '---------OPEN FILE AND START READING DATA IN TO MASTER ARRAY READY FOR PROCESSING.
        for zz = 0 to numberhorses-1

            for y = 0 to 1434
                'Master$(y)= inputto$(#Hdata,",")

                '************* This is the added code *****************
                temp$=inputto$(#Hdata,",")
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
                    If backone = 0 then Master$(y)=temp$
                end if
                '*************************************************
            next y

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



       Put #racedat, recordnumberfiles   '-----------------PUT TRACK INFO IN RANDOM ACCESS FILE FOR DAYS HANDICAPPING


goto [workpad]

[bachtoworkpad1]



            gosub [race#horses]
            firster = 0
            firster$ = ""



HorseKey$ = racetracks$(0) + str$(totalracesone)'------------CREATE HORSE KEY WITH TRACK CODE AND RACENUMBER
PUT #horse1, fileput'-------------------WRITE HORSE INFO TO RANDOM ACCESS FILE
fileput = fileput + 1

 next zz






 tachnumber = 1

        horses(0,0) = Rone
        horses(0,1) = Rtwo
        horses(0,2) = Rthree
        horses(0,3) = Rfour
        horses(0,4) = Rfive
        horses(0,5) = Rsix
        horses(0,6) = Rseven
        horses(0,7) = Reight
        horses(0,8) = Rnine
        horses(0,9) = Rten
        horses(0,10) = Releven
        horses(0,11) = Rtwelve
        horses(0,12) = Rthirteen
        horses(0,13) = Rfourteen
        horses(0,14) = Rfifteen

        markers(0,0) = 1
        markers(0,1) = 1 + Rone
        markers(0,2) = Rtwo + Rone + 1
        markers(0,3) = Rthree + Rtwo + Rone + 1
        markers(0,4) = Rfour + Rthree + Rtwo + Rone + 1
        markers(0,5) = Rfive + Rfour + Rthree + Rtwo + Rone + 1
        markers(0,6) = Rsix + Rfive + Rfour + Rthree + Rtwo + Rone + 1
        markers(0,7) = Rseven + Rsix + Rfive + Rfour + Rthree + Rtwo + Rone + 1
        markers(0,8) = Reight + Rseven + Rsix + Rfive + Rfour + Rthree + Rtwo + Rone + 1
        markers(0,9) = Rnine + Reight + Rseven + Rsix + Rfive + Rfour + Rthree + Rtwo + Rone + 1
        markers(0,10) = Rten + Rnine + Reight + Rseven + Rsix + Rfive + Rfour + Rthree + Rtwo + Rone + 1
        markers(0,11) = Releven + Rten + Rnine + Reight + Rseven + Rsix + Rfive + Rfour + Rthree + Rtwo + Rone + 1
        markers(0,12) = Rtwelve + Releven + Rten + Rnine + Reight + Rseven + Rsix + Rfive + Rfour + Rthree + Rtwo + Rone + 1
        markers(0,13) = Rthirteen +  Rtwelve + Releven + Rten + Rnine + Reight + Rseven + Rsix + Rfive + Rfour + Rthree + Rtwo + Rone + 1
        markers(0,14) = Rfourteen + Rthirteen +  Rtwelve + Releven + Rten + Rnine + Reight + Rseven + Rsix + Rfive + Rfour + Rthree + Rtwo + Rone + 1





        gosub [clrracehorses]

        cursor normal
        race1 = 1
        close #Hdata



cursor normal

        '********************************

        goto [#main.Inputloop]

        '------------------------------------------------




[workpad] ' Here's where we will do all the handicapping work. Guts of the programming.
                            l = len(Master$(44))
                            HorseName$ = mid$(Master$(44),2,l-2)
                            l = len(Master$(42))
                            Saddlecloth$ = mid$(Master$(42),2,l-2)
                            programnum =  val(Master$(42))
                            mornlineodds = Val(Master$(43))
                            l = len(Master$(22))
                            Breedtype$ = mid$(Master$(22),2,l-2)
                            quirinpoints =  val(Master$(210))

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


totalPosnum = 0
Posnum = 575
Entrants = 345
checkpoint = 0
for j = 0 to 3

if Val(Mid$(Master$(Posnum),2,1)) > 0 then
 temptotalPosnum =   Val(Mid$(Master$(Posnum),2,1))/val(Master$(Entrants))
totalPosnum = totalPosnum + temptotalPosnum
Posnum = Posnum + 1
Entrants = Entrants + 1
checkpoint = checkpoint  +  1

end if
Next j
if checkpoint > 0 then
pacepoints = INT((totalPosnum/j) * 100)
 ELSE
 pacepoints = 99
 End if


fts = 0  'is the horse a first time starter
if surface1$ = "" and surface2$ = "" and surface3$ = "" and surface4$ = "" and surface5$ = "" and surface6$ = "" and surface7$ = "" and surface8$ = "" and surface9$ = "" and surface10$ = "" and primepower = 0 then fts = 1

fts$ = ""
if fts = 1 then fts$ = "FTS"



                            If Val(Master$(96)) < 1 Then
                                firster = 1 ' check to see if first time starter
 '126
                                goto [firsttime]
                            end if

                            If Val(Master$(96)) < 1 Then
                                aps = 0
                            else                       ' (check for first time starter)
                                aps = ((Val(Master$(100)) / Val(Master$(96))) / 1000)                '(number representing average purse size)
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
                            If mid$(Master$(6),2,l-2) = "D" And Val(Master$(1332)) > 0 Then GoTo [iskipit]
                            If mid$(Master$(6),2,l-2) = "d" And Val(Master$(1332)) > 0 Then frmpts = frmpts + 1
                            If mid$(Master$(6),2,l-2) = "d" And Val(Master$(1332)) > 0 Then ccc = 3
                            If mid$(Master$(6),2,l-2) = "d" And Val(Master$(1332)) > 0 Then GoTo [iskipit]
                            If mid$(Master$(6),2,l-2) = "T" And Val(Master$(75)) > 0 Then frmpts = frmpts + 1
                            If mid$(Master$(6),2,l-2) = "T" And Val(Master$(75)) > 0 Then ccc = 3
                            If mid$(Master$(6),2,l-2) = "T" And Val(Master$(75)) > 0 Then GoTo [iskipit]
                            If mid$(Master$(6),2,l-2) = "t" And Val(Master$(75)) > 0 Then frmpts = frmpts + 1
                            If mid$(Master$(6),2,l-2) = "t" And Val(Master$(75)) > 0 Then ccc = 3
                            If mid$(Master$(6),2,l-2) = "t" And Val(Master$(75)) > 0 Then GoTo [iskipit]
                            If mid$(Master$(24),2,l-2) = "A"  And Val(Master$(231)) > 0 Then frmpts = frmpts + 1
                            If mid$(Master$(24),2,l-2) = "A" And Val(Master$(231)) > 0 Then ccc = 3

[iskipit]

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

                            pace = ((yyy + zzz) / 2)                                            '(calc pace fig)
                            '-----------------------------------------------------
                            '****************************************************************************************************************
                            l = len(Master$(1402))
                            If mid$(Master$(1402),2,l-2) = "" Then Master$(1402) = " "               '(check for all weather surface)
                            If mid$(Master$(1403),2,l-2) = "" Then Master$(1403) = " "
                            If mid$(Master$(1404),2,l-2) = "" Then Master$(1404) = " "

                            '**************************************************************************************************************
                            jperc = 0
                            jst = Val(Master$(1156)) + Val(Master$(1161))            ' (jockey win percent)
                            If jst < 6 Then GoTo [skipit]
                            jw = Val(Master$(1157)) + Val(Master$(1162))
                            If jst < 1 Then jperc = 0
                            If jst < 1 Then GoTo [skipit]
                            jperc = int((jw / jst) * 100)
                            jockey = jperc
[skipit]
                            '**************************************************************************************************************
                            trp = 0
                            trps = Val(Master$(1146)) + Val(Master$(1151))          '(trainer win persent)
                            If trps < 6 Then GoTo [skipitag]
                            trpw = Val(Master$(1147)) + Val(Master$(1152))
                            If trps < 1 Then trp = 0
                            If trps < 1 Then GoTo [skipitag]
                            trp = int((trpw / trps) * 100)
                            trainer = trp
[skipitag]

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
                            If Val(Master$(1156)) + Val(Master$(1161)) < 1 Then GoTo [yipit]                      '(looking at jockey sts this and last year)
                            If (Val(Master$(1156)) + Val(Master$(1161))) > 5 Then jperc = int((Val(Master$(1157)) + Val(Master$(1162))) / (Val(Master$(1156)) + Val(Master$(1161))) * 100)
[yipit]
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

                            If ert < 1 Then GoTo [ertzer14]
                            avsp = ((Val(Master$(845)) + Val(Master$(846)) + Val(Master$(847)) + Val(Master$(848)) + Val(Master$(849))) / ert)   ' (average speed rating)
                            class = int(avsp)
[ertzer14]
                            avlp = 0
                            ert = 0
                            If Val(Master$(815)) <> 0 Then ert = ert + 1
                            If Val(Master$(816)) <> 0 Then ert = ert + 1
                            If Val(Master$(817)) <> 0 Then ert = ert + 1
                            If Val(Master$(818)) <> 0 Then ert = ert + 1
                            If Val(Master$(819)) <> 0 Then ert = ert + 1

                            If ert < 1 Then GoTo [ertzer15]
                            avlp = roundoff(((Val(Master$(815)) + Val(Master$(816)) + Val(Master$(817)) + Val(Master$(818)) + Val(Master$(819))) / ert),0)   ' (average late pace)
                            latepace = avlp
[ertzer15]

                            avep = 0
                            ert = 0
                            If Val(Master$(765)) <> 0 Then ert = ert + 1
                            If Val(Master$(766)) <> 0 Then ert = ert + 1
                            If Val(Master$(767)) <> 0 Then ert = ert + 1
                            If Val(Master$(768)) <> 0 Then ert = ert + 1
                            If Val(Master$(769)) <> 0 Then ert = ert + 1

                            If ert < 1 Then GoTo [ertzer16]
                            avep = roundoff(((Val(Master$(765)) + Val(Master$(766)) + Val(Master$(767)) + Val(Master$(768)) + Val(Master$(769))) / ert),0)  '(avg 2F pace)
                            earlypace = avep
[ertzer16]

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

                             AvPur = 0

                            if Val(Master$(96)) < 1 then
                            AvPur = 0
                            goto [endavpur]
                            end if

                            If Val(Master$(85)) > 5 then
                            starts = Val(Master$(85))
                            winnum = Val(Master$(86))* .6
                            placenum = Val(Master$(87))* .2
                            shownum = Val(Master$(88))* .1
                            if (winnum+placenum+shownum) > 0 then
                            AvPur = Val(Master$(89))/ (winnum+placenum+shownum) ' avg purse size
                            else
                             AvPur = 0
                             end if
                            ELSE

                             starts = Val(Master$(85))+ Val(Master$(91))
                            winnum = (Val(Master$(86))+ Val(Master$(92)))* .6
                            placenum = (Val(Master$(87))+ Val(Master$(93)))* .2
                            shownum = (Val(Master$(88))+ Val(Master$(94)))* .1
                            if (winnum+placenum+shownum) > 0 then
                             AvPur = (Val(Master$(89))+ Val(Master$(95)))/ (winnum+placenum+shownum) ' avg purse size
                             else
                             AvPur = 0
                             end if
                            end if

                            [endavpur]


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
                            If lastwork - raceday > Val(Master$(223)) Then GoTo [nwk1]
                            If Val(Master$(185)) > .1 Then wk = 1

                            'date2 = Master$(103)
                            If lastwork2 - raceday > Val(Master$(223)) Then GoTo [nwk1]
                            If Val(Master$(186)) > .1 Then wk = 2


[nwk1]
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
                            If (bigfig > (bigfig1 - 1) And bigfig > (bigfig2 - 1)) Or (bigfig > 99) Or (bigfig1 > 99) Or (bigfig2 > 99)) Then fig = fig + 4 'add points based on speed fig

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


                            If fn = 0 Then GoTo [out21]

                            If fn <> 0 Then avsp = (((Val(Master$(845)) + Val(Master$(745)) * 2) / 1) + ((Val(Master$(846)) + Val(Master$(746)) * 2) / 1) + ((Val(Master$(847)) + Val(Master$(747)) * 2) / 1) + ((Val(Master$(848)) + Val(Master$(748)) * 2) / 1) + ((Val(Master$(849)) + Val(Master$(749)) * 2) / 1)) / fn
[out21]
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
                                DMwinpct =   roundoff((Val(Master$(86)) / Val(Master$(85))),0)
                                DMitmpct = roundoff(((Val(Master$(86)) + Val(Master$(87)) + Val(Master$(88))) / Val(Master$(85))),0)
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





     winsnum = 0
  placesnum = 0
  shownums = 0                          ' fastnum  = 100 - val(Master$(515)) ' odds inversion
win = 300
place = 100
show = 50
finish = 615
purse =  555

  For x = 0 to 5
l = len(Master$(finish))

  prs = Val( mid$(Master$(finish),2,l-2))
  'prs$ = Master$(finish)

  if Val( mid$(Master$(finish),2,l-2)) = 1 then
  winsnum = winsnum + win
  end if

  if Val( mid$(Master$(finish),2,l-2)) = 2 then
  placesnum = placesnum + place
  end if

  if Val( mid$(Master$(finish),2,l-2)) = 3 then
  shownums = shownums + show
  end if

  finish = finish + 1
  purse = purse + 1

  next x


' Where we calc whetter horse is Qualifyer









gosub [carrollspeed]



  [first]





                               goto [bachtoworkpad1]




                             redim a$(totalracesone+1)
        a$(0) = "Race"
        for i = 1 to totalracesone
            a$(i) = "Race "+ STR$(i)
        next i
       ' print #top.combobox1, "reload"
       ' print #top.combobox1, "enable"


 goto [#main.Inputloop]
'------------------------------------------------------------------------------

[carrollspeed]

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
      gosub   [getbasepnts]
end select

      if  (test > 1) or (test < -1) then
      chek = chek + 1
       goto [jmpe]
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
[jmpe]
e = e + 1
bl = bl + 1
ft = ft + 1
next l

sort theraces(), 10,0,1
bestspeed = int((theraces(0,1)+ theraces(1,1))/ 2)

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




 [getbasepnts]
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


[firsttime]

trp = 0
trps = Val(Master$(1146)) + Val(Master$(1151))          '(trainer win persent)
If trps < 6 Then GoTo [skipitagt]
trpw = Val(Master$(1147)) + Val(Master$(1152))
If trps < 1 Then trp = 0
If trps < 1 Then GoTo [skipitagt]
trp = int((trpw / trps) * 100)
trainer = trp
if trainer > 0 then goto [skipitagt1]

[skipitagt]
trainer = 0
[skipitagt1]

jperc = 0
jst = Val(Master$(1156)) + Val(Master$(1161))            ' (jockey win percent)
If jst < 6 Then GoTo [skipitj]
jw = Val(Master$(1157)) + Val(Master$(1162))
If jst < 1 Then jperc = 0
If jst < 1 Then GoTo [skipitj]
jperc = int((jw / jst) * 100)
jockey = jperc
if jockey > 0 then goto [skipitj1]

[skipitj]
jockey = 0
[skipitj1]



   gosub [getpedigree] ' branch off to get pedigree numbers for FTS horses dirt, mud, turf, distspeed

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
    carrollspeed=0
    AvPur = 0
    match = 0
    rank = 0

    goto [first]


'**********************************************************************************************************************************
'**********************************************************************************************************************************



[BuildRaceobjects] ' BEGINNING OF BUILDING analysts OBJECTS

'Form created with the help of Freeform 3 v03-27-03
'Generated on Jul 02, 2015 at 14:14:00


'[setup.objectbuild.Window]

    '-----Begin code for #objectbuild

    WindowWidth = 660
    WindowHeight = 680
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code


    statictext #objectbuild.statictext1, "Available Factors",  20,  47, 160,  20
    ListboxColor$ = "white"
    listbox #objectbuild.listbox2, scales$(), [Scaleslistbox],  335, 102, 200, 250
    statictext #objectbuild.statictext3, "Scaling", 400,  67,  85,  20
    statictext #objectbuild.statictext3, "Enter Name For Object", 355,  400,  200,  20
    textbox #objectbuild.name, 340, 425,  200,  25
    button #objectbuild.button4,"Save Object Setup",[saveobjectsetup], UL, 350, 500, 190,  25
    button #objectbuild.button5,"Negative Value",[negativefactor], UL,   180,  43, 125,  25
    checkbox #objectbuild.checkbox5, "Class", [classcheckbox5Set], [checkbox5Reset],  20,  77,  64,  25
    checkbox #objectbuild.checkbox7, "Distance Speed", [Distancespeedcheckbox7Set], [checkbox7Reset],  20, 102, 122,  25
    checkbox #objectbuild.checkbox8, "Early Pace", [earlypacecheckbox8Set], [checkbox8Reset],  20, 127,  91,  25
    checkbox #objectbuild.checkbox9, "Late Pace", [latepacecheckbox9Set], [checkbox9Reset],  20, 152,  86,  25
    checkbox #objectbuild.checkbox10, "Form", [formcheckbox10Set], [checkbox10Reset],  20, 177,  56,  25
    checkbox #objectbuild.checkbox11, "Performance Class", [perfclasscheckbox11Set], [checkbox11Reset],  20, 202, 139,  25
    checkbox #objectbuild.checkbox12, "Avg Purse", [allweathercheckbox12Set], [checkbox12Reset],  20, 227,  94,  25
    checkbox #objectbuild.checkbox13, "Prime Power", [turfcheckbox13Set], [checkbox13Reset],  20, 252,  148,  25
    checkbox #objectbuild.checkbox14, "Average Speed", [mudcheckbox14Set], [checkbox14Reset],  20, 277,  151,  25
    checkbox #objectbuild.checkbox15, "Dirt", [dirtcheckbox15Set], [checkbox15Reset],  20, 302,  45,  25
    checkbox #objectbuild.checkbox16, " F.A.S.T. Number", [fastcheckbox16Set], [checkbox16Reset],  20, 327, 126,  25
    checkbox #objectbuild.checkbox17, "Trainer", [trainercheckbox17Set], [checkbox17Reset],  20, 352,  68,  25
    checkbox #objectbuild.checkbox18, "Jockey", [jockeycheckbox18Set], [checkbox18Reset],  20, 377,  69,  25
    checkbox #objectbuild.checkbox19, "Speed 3 Back", [speed3checkbox19Set], [checkbox19Reset],  20, 402, 110,  25
    checkbox #objectbuild.checkbox20, "Speed 2 Back", [speed2checkbox20Set], [checkbox20Reset],  20, 427, 110,  25
    checkbox #objectbuild.checkbox21, "Last Speed", [lastspeedcheckbox21Set], [checkbox21Reset],  20, 452,  94,  25
    checkbox #objectbuild.checkbox22, "Carroll Speed", [Carrollcheckbox22Set], [checkbox22Reset],  20, 477, 108,  25
    checkbox #objectbuild.checkbox23, "Class/Consistency", [CCcheckbox23Set], [checkbox23Reset],  20, 502, 145,  25
    checkbox #objectbuild.checkbox24, "Power/Speed Combo", [PSpeedcheckbox24Set], [checkbox24Reset],  20, 527, 155,  25
    checkbox #objectbuild.checkbox25, "Mitchell Power", [mitchellcheckbox25Set], [checkbox25Reset],  20, 552, 111,  25
    checkbox #objectbuild.checkbox26, "Morning Line", [mornlinecheckbox26Set], [checkbox26Reset],  20, 577, 101,  25
    checkbox #objectbuild.checkbox27, "Days Away", [Dayscheckbox27Set], [checkbox27Reset],  20, 603, 101,  25
    TextboxColor$ = "BUTTONFACE"
    textbox #objectbuild.classtextbox27, 180,  77,  55,  20
    textbox #objectbuild.DStextbox28, 180,  102,  55,  20
    textbox #objectbuild.EPtextbox29, 180, 127,  55,  20
    textbox #objectbuild.LPtextbox30, 180, 152,  55,  20
    textbox #objectbuild.Formtextbox31, 180, 180,  55,  20
    textbox #objectbuild.PCtextbox32, 180, 204,  55,  20
    textbox #objectbuild.AWtextbox33, 180, 229,  55,  20
    textbox #objectbuild.Turftextbox34, 180, 252,  55,  20

    textbox #objectbuild.Mudtextbox36, 180, 277,  55,  20
    textbox #objectbuild.Dirttextbox35, 180, 302,  55,  20
    textbox #objectbuild.FASTtextbox37, 180, 327,  55,  20
    textbox #objectbuild.TRtextbox38, 180, 352,  55,  20
    textbox #objectbuild.JKtextbox39, 180, 377,  55,  20
    textbox #objectbuild.3SPtextbox40, 180, 402,  55,  20
    textbox #objectbuild.2SPeedtextbox41, 180, 427,  55,  20
    textbox #objectbuild.LastSPtextbox42, 180, 452,  55,  20
    textbox #objectbuild.CAROLtextbox43, 180, 477,  55,  20
    textbox #objectbuild.CCtextbox44, 180, 502,  55,  20
    textbox #objectbuild.PStextbox45, 180, 527,  55,  20
    textbox #objectbuild.Mitcheltextbox46, 180, 552,  55,  20
    textbox #objectbuild.MLtextbox47, 180, 577,  55,  20
    textbox #objectbuild.daystextbox48, 180, 603,  55,  20


    '-----End GUI objects code

    open "Build Race Object" for graphics_nsb as #objectbuild
    print #objectbuild, "down;fill white; flush"
    #objectbuild, "trapclose [quitobjectbuild]"
    print #objectbuild, "color black; backcolor buttonface"
    print #objectbuild, "font ms_sans_serif 10"
    print #objectbuild.statictext1, "!font ms_sans_serif 10 bold"
    print #objectbuild.statictext3, "!font ms_sans_serif 10 bold"
    print #objectbuild.button4, "!font ms_sans_serif 10 bold"
    print #objectbuild.classtextbox27, "!font ms_sans_serif 10 bold"
    print #objectbuild.DStextbox28, "!font ms_sans_serif 10 bold"
    print #objectbuild.EPtextbox29, "!font ms_sans_serif 10 bold"
    print #objectbuild.LPtextbox30, "!font ms_sans_serif 10 bold"
    print #objectbuild.Formtextbox31, "!font ms_sans_serif 10 bold"
    print #objectbuild.PCtextbox32, "!font ms_sans_serif 10 bold"
    print #objectbuild.AWtextbox33, "!font ms_sans_serif 10 bold"
    print #objectbuild.Turftextbox34, "!font ms_sans_serif 10 bold"
    print #objectbuild.Dirttextbox35, "!font ms_sans_serif 10 bold"
    print #objectbuild.Mudtextbox36, "!font ms_sans_serif 10 bold"
    print #objectbuild.FASTtextbox37, "!font ms_sans_serif 10 bold"
    print #objectbuild.TRtextbox38, "!font ms_sans_serif 10 bold"
    print #objectbuild.JKtextbox39, "!font ms_sans_serif 10 bold"
    print #objectbuild.3SPtextbox40, "!font ms_sans_serif 10 bold"
    print #objectbuild.2SPeedtextbox41, "!font ms_sans_serif 10 bold"
    print #objectbuild.LastSPtextbox42, "!font ms_sans_serif 10 bold"
    print #objectbuild.CAROLtextbox43, "!font ms_sans_serif 10 bold"
    print #objectbuild.CCtextbox44, "!font ms_sans_serif 10 bold"
    print #objectbuild.PStextbox45, "!font ms_sans_serif 10 bold"
    print #objectbuild.Mitcheltextbox46, "!font ms_sans_serif 10 bold"
    print #objectbuild.MLtextbox47, "!font ms_sans_serif 10 bold"
    print #objectbuild.daystextbox48, "!font ms_sans_serif 10 bold"
Print #objectbuild, "place 10 30"
    Print #objectbuild, "\Select Factor then Enter Value Up To 250 Points. After All Factors Selected Then Select a Scaling Object "

     i = 0
       open "C:\handifiles\scales.txt" for input as #S ' LOAD UP LISTBOX WITH SCALING OPTIONS.
         While Not (EOf(#S))
         Input #S, scales$(i)
         i = i + 1
         Wend

         print #objectbuild.listbox2, "reload"
       close #S

Name$ = ""   '-------------INITIALIZE NAME RECORD AND READY FOR RACE OBJECT NAME ASSIGNMENT

gosub [initialfillobject] ' fill text boxes with all 0's before building analysts.


    [negativeloop]  ' holding spot after negative button selected

          wait


        goto [racecalc]

'IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII

 [calcloop]


      wait  ' PAUSE TILL USER CLOSES WINDOW AFTER BUILDING RACE OBJECTS

     [classcheckbox5Set]  'BEGIN THE CHECK BOX CODE
     flagcheckbox = 1
        gosub  [racecalc]
        goto  [calcloop]  ' BRINGS UP THE POINT ASSIGNMENT CALCULATOR
        [classbox]

    if negfact = 1 then
         pointasignment = pointasignment * -1
     negfact = 0
    end if

        Class = pointasignment


     print   #objectbuild.classtextbox27, pointasignment


     goto [quitobjectcalculator]

    [Distancespeedcheckbox7Set]
    flagcheckbox = 2
         gosub  [racecalc]
         goto  [calcloop]
         [distspeedbox]

          if negfact = 1 then
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         Distancespeed = pointasignment

       print  #objectbuild.DStextbox28, pointasignment


      goto [quitobjectcalculator]


    [earlypacecheckbox8Set]
    flagcheckbox = 3
        gosub  [racecalc]
         goto  [calcloop]
         [earlypacebox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         EarlyPace = pointasignment

         print  #objectbuild.EPtextbox29, pointasignment

      goto [quitobjectcalculator]



    [latepacecheckbox9Set]
    flagcheckbox = 4
        gosub  [racecalc]
         goto  [calcloop]
         [latepacebox]


          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         LatePace = pointasignment

          print  #objectbuild.LPtextbox30, pointasignment

      goto [quitobjectcalculator]



    [formcheckbox10Set]
    flagcheckbox = 5
         gosub  [racecalc]
         goto  [calcloop]
         [formbox]


          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         Form = pointasignment

          print  #objectbuild.Formtextbox31, pointasignment

      goto [quitobjectcalculator]



    [perfclasscheckbox11Set]
    flagcheckbox = 6
        gosub  [racecalc]
         goto  [calcloop]
         [perfclassbox]


          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


        PerformanceClass = pointasignment

         print  #objectbuild.PCtextbox32, pointasignment

      goto [quitobjectcalculator]



    [allweathercheckbox12Set]
    flagcheckbox = 7
        gosub  [racecalc]
         goto  [calcloop]
         [allweathbox]


          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         avgpurse = pointasignment

         print  #objectbuild.AWtextbox33, pointasignment

      goto [quitobjectcalculator]



    [turfcheckbox13Set]
    flagcheckbox = 8
        gosub  [racecalc]
         goto  [calcloop]
         [turfbox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         Primepowerpts = pointasignment

          print  #objectbuild.Turftextbox34, pointasignment

      goto [quitobjectcalculator]


    [mudcheckbox14Set]
    flagcheckbox = 9
        gosub  [racecalc]
         goto  [calcloop]
         [mudbox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


             averagespeedpts = pointasignment

         print  #objectbuild.Mudtextbox36, pointasignment

      goto [quitobjectcalculator]


    [dirtcheckbox15Set]
    flagcheckbox = 10
        gosub  [racecalc]
         goto  [calcloop]
         [dirtbox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         Dirt = pointasignment

         print  #objectbuild.Dirttextbox35, pointasignment

      goto [quitobjectcalculator]


    [fastcheckbox16Set]
    flagcheckbox = 11
        gosub  [racecalc]
         goto  [calcloop]
         [FASTbox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         Fast = pointasignment

         print  #objectbuild.FASTtextbox37, pointasignment

      goto [quitobjectcalculator]


    [trainercheckbox17Set]
    flagcheckbox = 12
        gosub  [racecalc]
         goto  [calcloop]
         [trainerbox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         Trainer = pointasignment

         print  #objectbuild.TRtextbox38, pointasignment

      goto [quitobjectcalculator]



    [jockeycheckbox18Set]
    flagcheckbox = 13
        gosub  [racecalc]
         goto  [calcloop]
         [jockeybox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         Jockey = pointasignment

         print  #objectbuild.JKtextbox39, pointasignment

      goto [quitobjectcalculator]


    [speed3checkbox19Set]
    flagcheckbox = 14
        gosub  [racecalc]
         goto  [calcloop]
         [speed3box]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         Speed3 = pointasignment

         print  #objectbuild.3SPtextbox40, pointasignment

      goto [quitobjectcalculator]


    [speed2checkbox20Set]
    flagcheckbox = 15
        gosub  [racecalc]
         goto  [calcloop]
         [speed2box]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         Speed2 = pointasignment

         print  #objectbuild.2SPeedtextbox41, pointasignment

      goto [quitobjectcalculator]


    [lastspeedcheckbox21Set]
    flagcheckbox = 16
        gosub  [racecalc]
         goto  [calcloop]
         [lastspeedbox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         LastSpeed = pointasignment

         print  #objectbuild.LastSPtextbox42, pointasignment

      goto [quitobjectcalculator]


    [Carrollcheckbox22Set]
    flagcheckbox = 17
        gosub  [racecalc]
         goto  [calcloop]
         [carrollspeedbox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


        CarrollSpeed = pointasignment

         print  #objectbuild.CAROLtextbox43, pointasignment

      goto [quitobjectcalculator]


    [CCcheckbox23Set]
    flagcheckbox = 18
        gosub  [racecalc]
         goto  [calcloop]
         [CCdbox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         Classconsist = pointasignment

          print  #objectbuild.CCtextbox44, pointasignment

      goto [quitobjectcalculator]


    [PSpeedcheckbox24Set]
    flagcheckbox = 19
        gosub  [racecalc]
         goto  [calcloop]
         [PSpeedbox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         PowerSpeed = pointasignment

         print  #objectbuild.PStextbox45, pointasignment

      goto [quitobjectcalculator]


    [mitchellcheckbox25Set]
    flagcheckbox = 20
        gosub  [racecalc]
         goto  [calcloop]
         [mitchellbox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         MitchellPower = pointasignment

          print  #objectbuild.Mitcheltextbox46, pointasignment

      goto [quitobjectcalculator]



    [mornlinecheckbox26Set]
    flagcheckbox = 21
        gosub  [racecalc]
         goto  [calcloop]
         [mornlinebox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         MornLine = pointasignment

          print  #objectbuild.MLtextbox47, pointasignment

          goto [quitobjectcalculator]

     [Dayscheckbox27Set]
    flagcheckbox = 22
        gosub  [racecalc]
         goto  [calcloop]
         [daysawaybox]

          if negfact = 1 then 'assign negative value to factor if button was pressed.
    pointasignment = pointasignment * -1
     negfact = 0
    end if


         Daysaway = pointasignment

          print  #objectbuild.daystextbox48, pointasignment

      goto [quitobjectcalculator]

'**************
      [negativefactor] ' code to run if negative factor selected

      negfact = 1

      goto [calcloop] ' return control to factor selection

'***************

       [Scaleslistbox]

      print #objectbuild.listbox2, "selection? selected$"

test$ = selected$

      SELECT Case  selected$

      case "Woods"

                   Scale$ = "Woods"

      case  "Fibonacci"

                   Scale$ = "Fibonacci"

      case "Percentage"

                   Scale$ = "Percentage"



     END SELECT


   scalename$ =  Scale$ 

goto [calcloop]


 [saveobjectsetup]




print #objectbuild.name, "!contents? userText$";
    Name$ = userText$

if Name$ = "" then  '------------------------------CHECK TO MAKE SURE RACE OBJECT HAS A NAME BEFORE SAVING.

 Notice "Hold on Partner, You have to give the race Object a name."
 goto [calcloop]
END If

'gettrim #raceobject, 1
'if lower$(Name$) = lower$(Name2$) or upper$(Name$) = upper$(Name2$) then
'Notice "Hold on Partner, You have given the race Object a duplicate name."
'goto [calcloop]
'END If




 Gosub [selectfolder] ' go allow user to select a folder name


gettrim #flag,1
if flagup$ = "T" then
raceobjectnumber = 0
flagup$ = "F"
put #flag,1
else
gettrim #raceobjectcontrol, 1
end if

  if  raceobjectnumber < 1 then     '----------------------CHECKING TO SEE IF RACE OBJECT SAVED TO FILE YET
    PUT #raceobject, 1
    raceobjectnumber = 1
    ELSE
         if changeanalyst > 0 then
          PUT #raceobject, changeanalyst
             Else

     PUT #raceobject, raceobjectnumber + 1
    raceobjectnumber = raceobjectnumber + 1
         end if
  END If



  PUT #raceobjectcontrol, 1



  flagcheckbox = 0
  gosub [cleanfactors]

  goto [quitobjectbuild]

  wait




[quitobjectbuild]

'---------------------------------CHECK TO MAKE SURE THAT RACE OBJECT HAS BEEN GIVEN A NAME

   close #objectbuild

   goto [#main.Inputloop]


 [saveobjectsetup2]




print #objectbuild.name, "!contents? userText$";
    Name$ = userText$

'if Name$ = "" then  '------------------------------CHECK TO MAKE SURE RACE OBJECT HAS A NAME BEFORE SAVING.

' Notice "Hold on Partner, You have to give the race Object a name."
 'goto [calcloop]
'END If

'gettrim #tempraceobject, 1
'if lower$(Name$) = lower$(Name2$) or upper$(Name$) = upper$(Name2$) then
'Notice "Hold on Partner, You have given the race Object a duplicate name."
'goto [calcloop]
'END If




 Gosub [selectfolder] ' go allow user to select a folder name


gettrim #flag,1
if flagup$ = "T" then
raceobjectnumber = 0
flagup$ = "F"
put #flag,1
else
gettrim #raceobjectcontrol, 1
end if

  if  raceobjectnumber < 1 then     '----------------------CHECKING TO SEE IF RACE OBJECT SAVED TO FILE YET
    PUT #raceobject, 1
    raceobjectnumber = 1
    ELSE
         if changeanalyst > 0 then
          PUT #raceobject, changeanalyst
             Else

     PUT #raceobject, raceobjectnumber + 1
    raceobjectnumber = raceobjectnumber + 1
         end if
  END If



  PUT #raceobjectcontrol, 1



  flagcheckbox = 0
  gosub [cleanfactors]

  goto [quitobjectbuild2]

  wait




[quitobjectbuild2]

'---------------------------------CHECK TO MAKE SURE THAT RACE OBJECT HAS BEEN GIVEN A NAME

   close #objectbuild

   goto [#main.Inputloop]



[racecalc]
'[setup.objectcalculator.Window]

    '-----Begin code for #objectcalculator

    WindowWidth = 250
    WindowHeight = 370
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

    button #objectcalculator.button1,"1",[onebutton1Click], UL, 60, 82,  40,  40
    button #objectcalculator.button2,"2",[twobutton2Click], UL, 100, 82,  40,  40
    button #objectcalculator.button3,"3",[threebutton3Click], UL, 140, 82,  40,  40
    button #objectcalculator.button4,"4",[fourbutton4Click], UL, 60, 122,  40,  40
    button #objectcalculator.button5,"5",[fivebutton5Click], UL, 100, 122,  40,  40
    button #objectcalculator.button6,"6",[sixbutton6Click], UL, 140, 122,  40,  40
    button #objectcalculator.button7,"7",[sevenbutton7Click], UL, 60, 162,  40,  40
    button #objectcalculator.button8,"8",[eightbutton8Click], UL, 100, 162,  40,  40
    button #objectcalculator.button9,"9",[ninebutton9Click], UL, 140, 162,  40,  40
    button #objectcalculator.button11,"*",[starbutton11Click], UL, 60, 202,  40,  40
    button #objectcalculator.button10,"0",[zerobutton10Click], UL, 100, 202,  40,  40
    button #objectcalculator.button12,"#",[hashbutton12Click], UL, 140, 202,  40,  40
    button #objectcalculator.button13,"Clear", [clearcalculator], UL, 75, 250, 80, 20
    TextboxColor$ = "white"
    textbox #objectcalculator.Calctextbox13, 70,  42, 100,  25
    button #objectcalculator.button14,"Calculate",[CalcFactorbutton14Click], UL, 70, 290, 100,  25

    '-----End GUI objects code

    open "Value Calculator" for graphics_nsb as #objectcalculator
    print #objectcalculator, "down;fill buttonface; flush"
    #objectcalculator "trapclose [quitobjectcalculator]"
    print #objectcalculator, "color black; backcolor buttonface"
    print #objectcalculator, "font ms_sans_serif 10 bold"
    print #objectcalculator.button1, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button2, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button3, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button4, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button5, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button6, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button7, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button8, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button9, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button10, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button11, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button12, "!font ms_sans_serif 10 bold"
    print #objectcalculator.Calctextbox13, "!font ms_sans_serif 10 bold"
    print #objectcalculator.button14, "!font ms_sans_serif 10 bold"

    Print #objectcalculator, "place 50 30"
    Print #objectcalculator, "\Assign Factor Points"
       [clearCalc]  ' LOOP TO START ALL OVER IF USER MAKES A MISTAKE AND CLEARS THE CALC
         a$ = ""
         b$ = ""
         c$ = ""
          pointclick = 0
    [pLoop]
    wait


  [onebutton1Click]       'BEGIN ACTUAL CODE FOR CALCULATOR BUTTON BEING PUSHED. ONLY ALLOWS 3 BUTTONS TO BE PUSHED AND NO TOTAL OVER 250.
    pointclick = pointclick + 1
   SELECT CASE pointclick
     case 1
         a$ = "1"
     case 2
         b$ = "1"
     case 3
         c$ = "1"
    END SELECT


      pointasignment = val(a$+b$+c$)

     If pointasignment > 250 then
       Notice "Now....Now, Only 250 points...No cheating!"
       Print #objectcalculator.Calctextbox13, ""
      goto  [clearCalc]
     Else
         Print #objectcalculator.Calctextbox13, a$+b$+c$
     End If

    goto [pLoop]

   [twobutton2Click]
       pointclick = pointclick + 1
   SELECT CASE pointclick
     case 1
         a$ = "2"
     case 2
         b$ = "2"
     case 3
         c$ = "2"
    END SELECT
     pointasignment = val(a$+b$+c$)
     If pointasignment > 250 then
       Notice "Now....Now, Only 250 points...No cheating!"
       Print #objectcalculator.Calctextbox13, ""
      goto  [clearCalc]
     Else
         Print #objectcalculator.Calctextbox13, a$+b$+c$
     End If

    goto [pLoop]

   [threebutton3Click]
       pointclick = pointclick + 1
   SELECT CASE pointclick
     case 1
         a$ = "3"
     case 2
         b$ = "3"
     case 3
         c$ = "3"
    END SELECT
     pointasignment = val(a$+b$+c$)
     If pointasignment > 250 then
       Notice "Now....Now, Only 250 points...No cheating!"
       Print #objectcalculator.Calctextbox13, ""
      goto  [clearCalc]
     Else
         Print #objectcalculator.Calctextbox13, a$+b$+c$
     End If

    goto [pLoop]

   [fourbutton4Click]
       pointclick = pointclick + 1
   SELECT CASE pointclick
     case 1
         a$ = "4"
     case 2
         b$ = "4"
     case 3
         c$ = "4"
    END SELECT
     pointasignment = val(a$+b$+c$)
     If pointasignment > 250 then
       Notice "Now....Now, Only 250 points...No cheating!"
       Print #objectcalculator.Calctextbox13, ""
      goto  [clearCalc]
     Else
         Print #objectcalculator.Calctextbox13, a$+b$+c$
     End If

    goto [pLoop]

   [fivebutton5Click]
       pointclick = pointclick + 1
   SELECT CASE pointclick
     case 1
         a$ = "5"
     case 2
         b$ = "5"
     case 3
         c$ = "5"
    END SELECT
     pointasignment = val(a$+b$+c$)
     If pointasignment > 250 then
       Notice "Now....Now, Only 250 points...No cheating!"
       Print #objectcalculator.Calctextbox13, ""
      goto  [clearCalc]
     Else
         Print #objectcalculator.Calctextbox13, a$+b$+c$
     End If

    goto [pLoop]

   [sixbutton6Click]
      pointclick = pointclick + 1
   SELECT CASE pointclick
     case 1
         a$ = "6"
     case 2
         b$ = "6"
     case 3
         c$ = "6"
    END SELECT
     pointasignment = val(a$+b$+c$)
     If pointasignment > 250 then
       Notice "Now....Now, Only 250 points...No cheating!"
       Print #objectcalculator.Calctextbox13, ""
      goto  [clearCalc]
     Else
         Print #objectcalculator.Calctextbox13, a$+b$+c$
     End If

    goto [pLoop]

   [sevenbutton7Click]
       pointclick = pointclick + 1
   SELECT CASE pointclick
     case 1
         a$ = "7"
     case 2
         b$ = "7"
     case 3
         c$ = "7"
    END SELECT
     pointasignment = val(a$+b$+c$)
     If pointasignment > 250 then
       Notice "Now....Now, Only 250 points...No cheating!"
       Print #objectcalculator.Calctextbox13, ""
      goto  [clearCalc]
     Else
         Print #objectcalculator.Calctextbox13, a$+b$+c$
     End If

    goto [pLoop]

   [eightbutton8Click]
      pointclick = pointclick + 1
   SELECT CASE pointclick
     case 1
         a$ = "8"
     case 2
         b$ = "8"
     case 3
         c$ = "8"
    END SELECT
     pointasignment = val(a$+b$+c$)
     If pointasignment > 250 then
       Notice "Now....Now, Only 250 points...No cheating!"
       Print #objectcalculator.Calctextbox13, ""
      goto  [clearCalc]
     Else
         Print #objectcalculator.Calctextbox13, a$+b$+c$
     End If

    goto [pLoop]

   [ninebutton9Click]
       pointclick = pointclick + 1
   SELECT CASE pointclick
     case 1
         a$ = "9"
     case 2
         b$ = "9"
     case 3
         c$ = "9"
    END SELECT
     pointasignment = val(a$+b$+c$)
     If pointasignment > 250 then
       Notice "Now....Now, Only 250 points...No cheating!"
       Print #objectcalculator.Calctextbox13, ""
      goto  [clearCalc]
     Else
         Print #objectcalculator.Calctextbox13, a$+b$+c$
     End If

    goto [pLoop]

   [zerobutton10Click]
      pointclick = pointclick + 1
   SELECT CASE pointclick
     case 1
         a$ = "0"
     case 2
         b$ = "0"
     case 3
         c$ = "0"
    END SELECT
     pointasignment = val(a$+b$+c$)
     If pointasignment > 250 then
       Notice "Now....Now, Only 250 points...No cheating!"
       Print #objectcalculator.Calctextbox13, ""
      goto  [clearCalc]
     Else
         Print #objectcalculator.Calctextbox13, a$+b$+c$
     End If

    goto [pLoop]

   [starbutton11Click]

      Notice "A man woke up in a hospital after a serious accident. He shouted, doctor, doctor, I can't feel my legs! The doctor replied, I know you can't, I've cut off your arms!"

    goto [pLoop]

   [hashbutton12Click]

      Notice     "Two Eskimos sitting in a kayak were chilly, so they lit a fire in the craft. Unsurprisingly it sank, proving once again that you can't have your kayak and heat it too."

    goto [pLoop]

   [clearcalculator]   'USER PRESSED CLEAR BUTTON ON CALCULATOR TO START AGAIN.
   Print #objectcalculator.Calctextbox13, ""
    goto [clearCalc]


    [CalcFactorbutton14Click]  'CODE TO DIRECT WHICH FACTOR TO WRITE POINTS INTO THE TEXTBOX.

    Select Case flagcheckbox
       Case 1
       goto [classbox]

       Case 2
       goto [distspeedbox]

       Case 3
       goto [earlypacebox]

       Case 4
       goto [latepacebox]

       Case 5
       goto [formbox]

       Case 6
       goto [perfclassbox]

       Case 7
       goto [allweathbox]

       Case 8
       goto [turfbox]

       Case 9
       goto [mudbox]

       Case 10
       goto [dirtbox]

       Case 11
       goto [FASTbox]

       Case 12
       goto [trainerbox]

       Case 13
       goto [jockeybox]

       Case 14
       goto [speed3box]

       Case 15
       goto [speed2box]

       Case 16
       goto [lastspeedbox]

       Case 17
       goto [carrollspeedbox]

       Case 18
       goto [CCdbox]

       Case 19
       goto [PSpeedbox]

       Case 20
       goto [mitchellbox]

       Case 21
       goto [mornlinebox]

       Case 22
       goto [daysawaybox]



      END SELECT


Wait


  [quitobjectcalculator]
     close  #objectcalculator
    Return

'----------------------------------------------------------------$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


' where we put code for deleting race analysts.


'Form created with the help of Freeform 3 v07-31-2015
'Generated on Apr 02, 2016 at 19:52:25


[setup.delanalyst.Window]

    '-----Begin code for #delanalyst

    WindowWidth = 600
    WindowHeight = 410
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

    ComboboxColor$ = "white"
    combobox #delanalyst.delanalystcombobox, DelAna$(), [DeleAnalystcombox],  130, 132, 300, 100
    statictext #delanalyst.statictext2, "Select the Analyst to Delete and Click it.",  140,  72, 400,  20

    '-----End GUI objects code

    open "Delete Analyst" for window as #delanalyst
    print #delanalyst, "font ms_sans_serif 10"
    print #delanalyst.statictext2, "!font ms_sans_serif 10 bold"
    print #delanalyst, "trapclose [closedelanalyst]"



     gettrim #raceobjectcontrol, 1

    redim DelAna$(raceobjectnumber+1)

    for i = 1 to raceobjectnumber
    gettrim #raceobject, i
            DelAna$(i) = Name$
        next i
    print #delanalyst.delanalystcombobox,  "reload"

wait


        [DeleAnalystcombox]

    print   #delanalyst.delanalystcombobox, "selection? selected$"
    lp = 1
    for i = 1 to raceobjectnumber
    if selected$ <> DelAna$(i) then
    gettrim #raceobject, i
    Name$ = Name$
    Class = Class
    Distancespeed = Distancespeed
    EarlyPace = EarlyPace
    LatePace = LatePace
    Form = Form
    PerformanceClass = PerformanceClass
    avgpurse = avgpurse
    Turf = Primepowerpts
    Mud = averagespeedpts
    Dirt = Dirt
    Fast = Fast
    Trainer = Trainer
    Jockey = Jockey
    Speed3 = Speed3
    Speed2 = Speed2
    LastSpeed = LastSpeed
    CarrollSpeed = CarrollSpeed
    Classconsist = Classconsist
    PowerSpeed = PowerSpeed
    MitchellPower = MitchellPower
    MornLine = MornLine
    Scale$ = Scale$
    put #raceobject, lp
    lp = lp + 1
    Else
    looped = 1
End If
    next i

    raceobjectnumber = raceobjectnumber-1
    put #raceobjectcontrol, 1



[closedelanalyst]

close #delanalyst



  goto [#main.Inputloop]




'[setup.delanalyst.Window]

    '-----Begin code for #delanalyst

'    WindowWidth = 600
'    WindowHeight = 410
'    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
'    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

'    ComboboxColor$ = "white"
'    combobox #delanalyst.delanalystcombobox, DelAna$(), [DeleAnalystcombox],  130, 132, 300, 100
'    statictext #delanalyst.statictext2, "Select the Analyst to Delete and Click it.",  140,  72, 400,  20

    '-----End GUI objects code

'    open "Delete Analyst" for window as #delanalyst
'    print #delanalyst, "font ms_sans_serif 10"
'    print #delanalyst.statictext2, "!font ms_sans_serif 10 bold"
'    print #delanalyst, "trapclose [closedelanalyst]"



'     gettrim #raceobjectcontrol, 1

'    redim DelAna$(raceobjectnumber+1)

'    for i = 1 to raceobjectnumber
'    gettrim #raceobject, i
'            DelAna$(i) = Name$
'        next i
'    print #delanalyst.delanalystcombobox,  "reload"

'wait


'        [DeleAnalystcombox]

'    print   #delanalyst.delanalystcombobox, "selection? selected$"

'    lp = 1
'    for i = 1 to raceobjectnumber
'    if selected$ = DelAna$(i) then
'    gettrim #raceobject, i
'    Analfoldername$ = ""
'    Name$ = ""
'    Class = 0
'    Distancespeed = 0
'    EarlyPace = 0
'    LatePace = 0
'    Form = 0
'    PerformanceClass = 0
'    avgpurse = 0
'    Turf = 0
'    Mud = 0
'    Dirt = 0
'    Fast = 0
'    Trainer = 0
'    Jockey = 0
'    Speed3 = 0
'    Speed2 = 0
'    LastSpeed = 0
'    CarrollSpeed = 0
'    Classconsist = 0
'    PowerSpeed = 0
'    MitchellPower = 0
'    MornLine = 0
'    Scale$ = ""
'    put #raceobject, lp
'    lp = lp + 1
'    Else
'    looped = 1
'End if
'    next i



'    raceobjectnumber = raceobjectnumber-1
'    put #raceobjectcontrol, 1



'[closedelanalyst]

'close #delanalyst



'  goto [#main.Inputloop]


'Setting code

[settings]

newdist = setdist
if newdist < 8 then
if setsurf$ = "D" or setsurf$ = "d" then ' settings for dirt sprints


q = 0
            end if
            end if


if setdist >= 8 then
if  setsurf$ = "D" or setsurf$ = "d" then' settings for dirt routes



    q = 2

            end if
            end if


if setdist < 8 then
if setsurf$ = "T" or setsurf$ = "t" then ' settings for turf sprints





       q = 1

            end if
            end if


if setdist >= 8 then
if setsurf$ = "T" or setsurf$ = "t" then' settings for turf routes



            q = 3

            end if
            end if






return

'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

[getcolor2]

    SELECT CASE surface2(srt(t,0))

        CASE 1

        print #top.track1, "color  40 160 37"

        CASE 2

        print #top.track1, "color  147 105 87"

        CASE else
        print #top.track1, "color  Black"
    end select

    return

    [getdist2]

    SELECT CASE lenindicator2(srt(t,0))

        case 1

        print #top.track1, "font arial 9 "

        CASE else

        print #top.track1, "font arial 11 italic bold"

    end select

    return


[getcolor1]

    SELECT CASE surface1(srt(t,0))

        CASE 1

        print #top.track1, "color  40 160 37"

        CASE 2

        print #top.track1, "color  147 105 87"

        CASE else
        print #top.track1, "color  Black"

    end select

    return

    [getdist]

    SELECT CASE lenindicator(srt(t,0))

        case 1

        print #top.track1, "font arial 9 "

        CASE else

        print #top.track1, "font arial 11 italic bold"

    end select

    return

    [getdist1]

    SELECT CASE lenindicator1(srt(t,0))

        case 1

        print #top.track1, "font arial 9 "

        CASE else

        print #top.track1, "font arial 11 italic bold"

    end select

    return

    [getcolor]

    SELECT CASE surface(srt(t,0))

        CASE 1

        print #top.track1, "color  40 160 37"

        CASE 2

        print #top.track1, "color  147 105 87"

        CASE else
        print #top.track1, "color  Black"

    end select

    return
'==================================================================================

[combox2]

print #top, "place 415 130"
print #top, "backcolor  darkblue"
print #top, "color  darkblue"
print #top, "circlefilled 7"


print   #top.combo2, "contents? text$"    'processing after user selects an anlyst to handicap with
print #top.combo2, "selectionindex? index"

Gosub [cleanHolder]

test = raceobjectnumber
for x = 1 to raceobjectnumber
Gettrim #tempraceobject, x

if Name2$ = text$ then

                                                        CL1=Class2
                                                        DS1=Distancespeed2
                                                        EP1=EarlyPace2
                                                        LP1=LatePace2
                                                        FM1=Form2
                                                        PC1=PerformanceClass2
                                                        AVP1=avgpurse2
                                                        TF1=Turf2
                                                        MY1=Mud2
                                                        DT1=Dirt2
                                                        Fast1=Fast2
                                                        TR1=Trainer2
                                                        JK1=Jockey2
                                                        ML1=MornLine2
                                                        S11=LastSpeed2
                                                        S21=Speed22
                                                        S31=Speed32
                                                        CC1=Classconsist2
                                                        PS1=PowerSpeed2
                                                        PWR1=MitchellPower2
                                                        CS1=CarrollSpeed2
                                                        DAW1= Daysaway2
                                                        scaleObj$ = Scale2$
                                                        Qpoints = quirinspeedpoints2

                                                        if Name2$ = text$ then Exit For



    end if
next x



print #top.combo2, "selectindex 0" ' reset combox index so same analyst may be selected more than once in a row.

If changeA = 1 then

Select Case scaleObj$ 

case "woods"

goto [woods]

case "Fibonacci"

goto [Fibonacci]

End Select

end if


goto [runrace]


wait
  '********************************
[yset]
    y = y + 30
    ay = y
    by = y
    cy = y
    dy = y
    ey = y
    fy = y
    gy = y
    hy = y
    iy = y
    jy = y
    ky = y
    ly = y
    my = y
    ny = y
    oy = y

    py = y


    return
    '$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
[yset2]
    y = y + 30
    ay = y
    by = y
    cy = y
    dy = y
    ey = y
    fy = y
    gy = y
    hy = y
    iy = y
    jy = y
    ky = y
    ly = y
    my = y
    ny = y
    oy = y

    py = y

    return
'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS

[leftdoubleclick]
    mx=MouseX:my=MouseY


     #top.track1 "when leftbuttondouble"
    'notice "You clicked the mouse at ";mx;" ";my;" ";lasty
    SELECT CASE
        case (mx>206) and (mx < 238) and (my<=lasty)
        goto [lastrace]
        case (mx>242) and (mx < 274) and (my<=lasty)
        goto [class]
        case (mx>278) and (mx < 310) and (my<=lasty)
        goto [dist]
        case (mx>314) and (mx < 346) and (my<=lasty)
        goto [early]
        case (mx>396) and (mx < 418) and (my<=lasty)
        goto [late]
        case (mx>458) and (mx < 490) and (my<=lasty)
        goto [form]
        case (mx>494) and (mx < 530) and (my<=lasty)
        goto [pcr]
        case (mx>530) and (mx < 562) and (my<=lasty)
        goto [ap]
        case (mx>566) and (mx < 598) and (my<=lasty)
        goto [tf]
        case (mx>602) and (mx < 634) and (my<=lasty)
        goto [mudy]
        case (mx>638) and (mx < 670) and (my<=lasty)
        goto [dt]
        case (mx>674) and (mx < 706) and (my<=lasty)
        goto [fast]
        case (mx>710) and (mx < 742) and (my<=lasty)
        goto [tr]
        case (mx>746) and (mx < 778) and (my<=lasty)
        goto [jk]
        case (mx>782) and (mx < 814) and (my<=lasty)
        goto [s3]
        case (mx>818) and (mx < 850) and (my<=lasty)
        goto [s2]
        case (mx>854) and (mx < 886) and (my<=lasty)
        goto [s1]
        case (mx>890) and (mx < 922) and (my<=lasty)
        goto [DMclass]
        case (mx>926) and (mx < 958) and (my<=lasty)
        goto [sp]
        case (mx>962) and (mx < 994) and (my<=lasty)
        goto [Mpwr]
        case (mx>998) and (mx < 1030) and (my<=lasty)
        goto [cs]
        case (mx>1032) and (mx < 1070) and (my<=lasty)
        goto [ml]
        case (mx>1074) and (mx < 1110) and (my<=lasty)
        goto [fodds]
        case (mx>1114) and (mx < 1150) and (my<=lasty)
        goto [totpts]

    END SELECT





    onn = 1

    wait


'RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR This is where the work is done to sort display

[lastrace]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,2)
    next pt
    sort srt(),0,numb-1,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if

    'goto [reprint]
    wait

[class]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,3)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"


    sorted2 = 1
    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if

    'goto [reprint]
    wait

[dist]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,4)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1
    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


  '  goto [reprint]
    wait

[early]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,5)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


 '   goto [reprint]
    wait

[style]
    wait

[late]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,6)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if

   ' goto [reprint]
    wait

[Quirin]
    wait

[form]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,7)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


   ' goto [reprint]
    wait

[pcr]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,8)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


   ' goto [reprint]
    wait

[ap]

    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,9)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


  '  goto [reprint]
    wait


[tf]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,10)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


  '  goto [reprint]
    wait

[mudy]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,11)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


  '  goto [reprint]
    wait

[dt]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,12)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


   ' goto [reprint]
    wait

[fast]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,13)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


  ' goto [reprint]
    wait

[tr]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,14)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


'    goto [reprint]
    wait

[jk]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,15)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


   ' goto [reprint]
    wait

[ml]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,16)
    next pt
    sort srt(),0,numb-1,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


  '  goto [reprint]
    wait

[s3]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,19)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


  '  goto [reprint]
    wait

[s2]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,20)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if

  '  goto [reprint]
    wait

[s1]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,21)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


 '   goto [reprint]
    wait


[rk]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,22)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


  '  goto [reprint]
    wait

[wk]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,23)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if


    wait

[DMclass]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,24)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"
    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if

  '  goto [reprint]
    wait


[sp]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,25)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"
    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if

  '  goto [reprint]
    wait

[Mpwr]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,26)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"
    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if

 '   goto [reprint]
    wait

[cs]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,32)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"
    sorted2 = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if

   ' goto [reprint]
    wait

[fodds]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,17)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"

    sorted = 1

    If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
end if

  '  goto [reprint]
    wait

[totpts]
    for pt = 0 to numb-1
        srt(pt,0) =  pt
        srt(pt,1) = holder(pt,17)
    next pt
    sort srt(),numb-1,0,1
    y = 210
    print #top.track1, "cls"
    sorted = 1
If ranknumber > 0 then
goto [Rankreprint]
else
    goto [reprint]
End If
    wait



[trackoneraceoneprint]



'PRINTERDIALOG

    '-----Begin code for #main.race

     nomainwin
     WindowWidth = 1240
     WindowHeight = 900
     UpperLeftX=int((DisplayWidth-WindowWidth)/2)
     UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code
    'If DisplayWidth < 1025 then
       ' button #mainrace.button1,"Close",[closedisplay], UL, 535, 646, 150,  25
    'Else
    '    button #mainrace.button1,"Close",[closedisplay], UL, 535, 712, 150,  25
    'End if

    '-----End GUI objects code
if trkone = 0 then goto [top.inputLoop]

on error goto [closet1p]
    open "" for graphics_nf_nsb as #track1p
    print #track1p, "down;fill white"
    print #track1p, "color black; backcolor white"
    print #track1p, "font ms_sans_serif 10"
  '  print #track1p.button1, "!font rockwell_extra_bold 12"
    print #track1p,"Horizscrollbar Off" 'n 0 200"
    print #track1p,"Vertscrollbar Off" 'n 0 800"
    print #track1p, "trapclose [closet1p]"

y = 210







for pt = 0 to numb-1
srt(pt,0) =  pt
srt(pt,1) = holder(pt,17)
next pt
sort srt(),numb-1,0,1 ' sort function


     print #track1p, "down;fill white"
    print #track1p, "color  black;backcolor white "
    print #track1p, "font arial 12 bold"
    'GETTRIM #race1, racenum
    print #track1p, "place 12 22"
    print #track1p, "\";Track1$;"  "; trk1currentmonth;"/"; trk1currentday;"/"; trk1currentyear;"                                                                                                     Form Adjusted Speed Totals";"                                                         FTS = FIRSTER"
    print #track1p, "color black"
    print #track1p, "place 12 42"
    print #track1p, "\Race #";" ";trk1Racenumber;" ";trk1posttime2$;"  ";trk1distance$;"  ";trk1surf$;"  ";trk1statebred$;trk1RaceClassification$;"  ";hurdles1$(A);"  ";"Purse";"  $";trk1Purse;"  ";trk1cond$;" ";trk1cond22$;"  ";trk1cond33$
    print #track1p, "place 12 62"
    print #track1p, "\";trk1wage$;trk1wage2$
  '  print #track1p, "place 440 84 "; y
   ' print #track1p, "\(Double-click in any column with numbers to sort)";


    print #track1p, "size 2"
    print #track1p, "line 01 72 1190 72"
    'print #track1p, "size 2"
    'print #track1p, "line 55 120  55 800"
    print #track1p, "place 8 110"
    print #track1p, "\Pr#";
    print #track1p, "place 44 110"
    print #track1p, "\Horse Name";
    print #track1p, "place 44 90"
    print #track1p, "font arial 12 bold"
    print #track1p, "\Points assigned ==>";
    print #track1p, "font arial 10 bold"

    print #track1p, "place 212 90"
    print #track1p, "\";DAW1 ' days away

    print #track1p, "place 246 90"
    print #track1p, "\";CL1 ' cls

    print #track1p, "place 282 90"
    print #track1p, "\";DS1 ' ds

    print #track1p, "place 318 90"
    print #track1p, "\";EP1 ' ep

    print #track1p, "place 392 90"
    print #track1p, "\";LP1 ' lp

    print #track1p, "place 462 90"
    print #track1p, "\";FM1 ' fm

    print #track1p, "place 498 90"
    print #track1p, "\";PC1 ' pc

    print #track1p, "place 536 90"
    print #track1p, "\";AVP1 ' aw

    print #track1p, "place 572 90"
    print #track1p, "\";TF1 ' tf

    print #track1p, "place 608 90"
    print #track1p, "\";MY1 ' my

    print #track1p, "place 644 90"
    print #track1p, "\";DT1 ' dt

    print #track1p, "place 680 90"
    print #track1p, "\";Fast1 ' fast

    print #track1p, "place 716 90"
    print #track1p, "\";TR1 ' tr

    print #track1p, "place 752 90"
    print #track1p, "\"; JK1 ' jk

    print #track1p, "place 788 90"
    print #track1p, "\"; S31 's3

    print #track1p, "place 822 90"
    print #track1p, "\"; S21 ' s2

    print #track1p, "place 858 90"
    print #track1p, "\"; S11 ' s1

    print #track1p, "place 896 90"
    print #track1p, "\"; CC1 ' cc

    print #track1p, "place 930 90"
    print #track1p, "\"; PS1 ' ps

    print #track1p, "place 968 90"
    print #track1p, "\";PWR1 ' per

    print #track1p, "place 1004 90"
    print #track1p, "\";CS1 ' carroll speed

    print #track1p, "place 1038 90"
    print #track1p, "\"; ML1 ' ml






    print #track1p, "color  black"
    print #track1p, "size 2"
    print #track1p, "line 01 116 1190 116"
    print #track1p, "color  black"
   ' print #track1p, "size 2"
   ' print #track1p, "line 220 120  220 800"

    '----------- These headings added to replace buttons for sort
    print #track1p, "font arial 10 bold"
    'print #track1p, "color  blue"
    print #track1p, "place 212 110"
    print #track1p, "\LR";
    print #track1p, "place 248 110"
    print #track1p, "\CL";
    print #track1p, "place 284 110"
    print #track1p, "\DS";
    print #track1p, "place 320 110"
    print #track1p, "\EP";
    print #track1p, "place 358 90"
    print #track1p, "\RT";
    print #track1p, "place 350 110"
    print #track1p, "\SPTS";
    print #track1p, "place 394 110"
    print #track1p, "\LP";
    print #track1p, "place 428 110"
    print #track1p, "\RS";
    print #track1p, "place 464 110"
    print #track1p, "\FM";
    print #track1p, "place 500 110"
    print #track1p, "\PC";
    print #track1p, "place 532 110"
    print #track1p, "\AVP";
    print #track1p, "place 574 110"
    print #track1p, "\PRI";
    print #track1p, "place 608 110"
    print #track1p, "\ASP";
    print #track1p, "place 646 110"
    print #track1p, "\DT";
    print #track1p, "place 673 110"
    print #track1p, "\FAST";
    print #track1p, "place 716 110"
    print #track1p, "\TR";
    print #track1p, "place 752 110"
    print #track1p, "\JK";
    print #track1p, "place 790 110"
    print #track1p, "\S3";
    print #track1p, "place 824 110"
    print #track1p, "\S2";
    print #track1p, "place 860 110"
    print #track1p, "\S1";
    'print #track1p, "place 1030 170"
    'print #track1p, "\RK";
    'print #track1p, "place 1070 170"
    'print #track1p, "\WK";
    print #track1p, "place 894 110"
    print #track1p, "\C-C";
    print #track1p, "place 930 110"
    print #track1p, "\P-S";
    print #track1p, "place 963 110"
    print #track1p, "\PWR";
    print #track1p, "place 1004 110"
    print #track1p, "\CS";
    print #track1p, "place 1040 110"
    print #track1p, "\ML";
    print #track1p, "place 1072 90"
    print #track1p, "\FAIR";
    print #track1p, "place 1070 110"
    print #track1p, "\ODDS";
    print #track1p, "place 1112 90"
    print #track1p, "\TOT";
    print #track1p, "place 1112 110"
    print #track1p, "\PTS";

    print #track1p, "font arial 9 "
    print #track1p, "color  black"
  for t = 0 to numb-1

     if names(srt(t,0)) = 1 then
            goto [loopedt1p]
        else
print #track1p, "place 12  "; y-76
print #track1p, "\"; TracSaddle$(srt(t,0))
x=42:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 45  "; y-76
print #track1p, "\"; nameofhorse$(srt(t,0))
x=204:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 210 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),2)) ' days away
x=240:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 246 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),3)) ' class
x=276:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 282 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),4)) ' dist speed
x=312:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 318 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),5)) ' early speed
x=348:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 352 "; y-76
'print #track1p, "color  red"
print #track1p, "\"; Tracstyles$(srt(t,0))
x=386:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
'   print #track1p, "color  black"
print #track1p, "place 392 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),6)) ' late pace
x=420:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 432 "; y-76
print #track1p, "\"; lmh$(srt(t,0))
x=456:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 462 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),7)) ' form
x=492:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 498 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),8)) ' pcr
x=528:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 536 "; y-76
'if firstimer(srt(t,0)) = 1 then
'holder(srt(t,0),9) = 0
'end if

if holder(srt(t,0),9) > 99998 then
    purse$ = STR$(holder(srt(t,0),9))
    print #track1p, "\"; left$(purse$, 3)
    else
    if holder(srt(t,0),9) > 999 and holder(srt(t,0),9) < 99999 then
    purse$ = STR$(holder(srt(t,0),9))
    print #track1p,"\"; left$(purse$,2)
    else
     if holder(srt(t,0),9) < 999 then
     purse$ = STR$(holder(srt(t,0),9))
     print #track1p,"\"; left$(purse$,1)
     end if
     end if
     end if








'print #track1p, "\"; using("###", holder(srt(t,0),9)) ' avp
x=564:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 570 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),10)) ' turf
x=600:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 606 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),11)) ' mud
x=636:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 642 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),12)) ' dirt
x=672:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "font arial 9 bold"
print #track1p, "color blue"
print #track1p, "place 678 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),13)) ' fast
print #track1p, "font arial 9 "
print #track1p, "color  black"
x=708:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 714 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),14)) ' trnwpct
x=744:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 750 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),15)) ' jkwpct
x=780:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 786 "; y-76
gosub [getcolor2p]
gosub [getdist2p]
print #track1p, "\"; using("###", holder(srt(t,0),19)) ' 3rsr
print #track1p, "font arial 9"
print #track1p, "color  black"
x=816:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 822 "; y-76
gosub [getcolor1p]
gosub [getdist1p]
print #track1p, "\"; using("###", holder(srt(t,0),20)) ' 2rsr
print #track1p, "font arial 9"
print #track1p, "color  black"
x=852:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 858 "; y-76
gosub [getcolorp]
gosub [getdistp]
print #track1p, "\"; using("###", holder(srt(t,0),21)) ' 1rsr
print #track1p, "font arial 9 "
print #track1p, "color  black"
x=888:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 894 "; y-76
'change display to eliminate WK and RK score;  replace with C-C and P-S
print #track1p, "\"; using("###", holder(srt(t,0),24)) ' c-c
x=924:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 930 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),25)) ' p-s
x=960:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 966 "; y-76
print #track1p, "\"; using("###", holder(srt(t,0),26)) ' pwr
x=996:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 1000 "; y-76
print #track1p, "\"; using("####", holder(srt(t,0),32)) ' carroll speed
x=1032:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 1034 "; y-76
print #track1p, "\"; hml$(srt(t,0)) 'using("###.#", holder(srt(t,0),16)) ' ml
x=1068:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "place 1074 "; y-76
print #track1p, "\"; allfairodds$(srt(t,0))
'print #track1p, "\"; using("###.####", holder(srt(t,0),18)) ' fair odds
print #track1p, "font arial 9"
print #track1p, "color  black"
x=1108:z=72
'#main, "place ";x;" ";y;  line down
print #track1p, "down"
print #track1p, "line ";x;" ";y-70;" ";x;" ";z
print #track1p, "font arial 9 bold"
print #track1p, "color  blue"
print #track1p, "place 1110 "; y-76
print #track1p, "\"; using("####", holder(srt(t,0),17)) ' point total
print #track1p, "font arial 12 bold"
print #track1p, "color  red"
print #track1p, "place 1145 "; y-76
'print #track1p, "\"; using("###", holder(srt(t,0),31))
print #track1p, "\"; fts$(srt(t,0))
print #track1p, "font arial 9 "
print #track1p, "color  black"

end if






x=1:b=1190
'#main, "place ";x;" ";y;
print #track1p, "down"
print #track1p, "line ";x;" ";y-68;" ";b;" ";y-68;

        lasty = y ' the last y position for MouseY double-click test

        y = y + 25
[loopedt1p]
    next t


print #track1p, "flush"
print #track1p, "print 1180"

'if numb > 17 then print #track1p, "print 1140"
'if numb < 18 then print #track1p, "print xga"
print #track1p, "Discard"

    close #track1p


goto [top.inputLoop]

[closet1p]
close #track1p

goto [top.inputLoop]

[getcolorp]

    SELECT CASE surface(srt(t,0))

        CASE 1

        print #track1p, "color  40 160 37"

        CASE 2

        print #track1p, "color  147 105 87"

        CASE else
        print #track1p, "color  Black"

    end select

    return

[getcolor2p]  ' for printing race

    SELECT CASE surface2(srt(t,0))

        CASE 1

        print #track1p, "color  40 160 37"

        CASE 2

        print #track1p, "color  147 105 87"

        CASE else
        print #track1p, "color  Black"
    end select

    return

    [getdist2p]

    SELECT CASE lenindicator2(srt(t,0))

        case 1

        print #track1p, "font arial 9 "

        CASE else

        print #track1p, "font arial 11 italic bold"

    end select

    return

[getcolor1p]

    SELECT CASE surface1(srt(t,0))

        CASE 1

        print #track1p, "color  40 160 37"

        CASE 2

        print #track1p, "color  147 105 87"

        CASE else
        print #track1p, "color  Black"

    end select

    return


[getdist1p]

    SELECT CASE lenindicator1(srt(t,0))

        case 1

        print #track1p, "font arial 9 "

        CASE else

        print #track1p, "font arial 11 italic bold"

    end select

    return

    [getdistp]

    SELECT CASE lenindicator(srt(t,0))

        case 1

        print #track1p, "font arial 9 "

        CASE else

        print #track1p, "font arial 11 italic bold"

    end select

    return


'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
'EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
'TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

[dutchmancalc]





  nomainwin
    WindowWidth = 895
    WindowHeight = 525
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

    button #calc.button1,"Close",[shutprogram], UL, 380, 422, 100,  25
    statictext #calc.statictext2, "The Dutchman Calculator", 270,  65, 300,  40
    statictext #calc.statictext3, "Enter Number of Horses",  30, 112, 225,  20
    TextboxColor$ = "white"
    textbox #calc.textbox4,  60, 132, 100,  25
    statictext #calc.statictext5, "Enter Total Probability for Horses",  20, 172, 245,  20
    statictext #calc.statictext40, "1.",   25, 205, 10,  20
    textbox #calc.textbox6,  40, 197, 60,  25

    statictext #calc.statictext7, "Enter Tote Odds of up to 4 Horses",   5, 268, 340,  20
    statictext #calc.statictext20, "1.",   25, 300, 10,  20
    textbox #calc.textbox8,  40, 292,  60,  25
    statictext #calc.statictext21, "2.",   25, 330, 10,  20
    textbox #calc.textbox9,  40, 322,  60,  25
    statictext #calc.statictext22, "3.",   115, 300, 10,  20
    textbox #calc.textbox10, 130, 292,  60,  25
    statictext #calc.statictext23, "4.",   115, 330, 10,  20
    textbox #calc.textbox11, 130, 322,  60,  25
    statictext #calc.statictext12, "use decimal format ie; (2.50)",  25, 352, 300,  20
    statictext #calc.statictext13, "Enter Bankroll",  60,  52, 130,  20
    textbox #calc.textbox14,  60,  72, 100,  25
    statictext #calc.statictext15, "Enter Risk Limit",  55, 385, 175,  20
    textbox #calc.textbox16,  70, 410,  60,  25
    statictext #calc.statictext17, "ie; (.05)",  70, 440, 125,  20
    button #calc.button18,"Calculate",[Calc], UL, 345, 225, 170,  45
    statictext #calc.statictext19, "Tote Board Win Probability", 605,  57, 248,  20
    textbox #calc.textbox20, 645,  77, 100,  25
    statictext #calc.statictext21, "Breakeven", 660, 117,  75,  20
    textbox #calc.textbox22, 645, 137, 100,  25
    statictext #calc.statictext24, "Optimal Risk", 650, 182, 150,  20
    textbox #calc.textbox25, 645, 207, 100,  25
    statictext #calc.statictext26, "Expected Bankroll Growth", 620, 257, 200,  20
    textbox #calc.textbox27, 650, 277, 100,  25
    statictext #calc.statictext28, "Bet Amounts", 660, 322, 125,  20
    statictext #calc.statictext44, "1.",   600, 360, 10,  20
    textbox #calc.textbox29, 615, 352,  65,  25
    statictext #calc.statictext45, "2.",   710, 360, 10,  20
    textbox #calc.textbox30, 725, 352,  65,  25
     statictext #calc.statictext46, "3.",   600, 400, 10,  20
    textbox #calc.textbox31, 615, 392,  65,  25
    statictext #calc.statictext46, "4.",   710, 400, 10,  20
    textbox #calc.textbox32, 725, 392,  65,  25

    '-----End GUI objects code

    open "Overlay Calculator" for window as #calc
    print #calc, "font ms_sans_serif 10"
    #calc "trapclose [quit.calc] "
    print #calc.button1, "!font ms_sans_serif 10 bold"
    print #calc.statictext2, "!font ms_sans_serif 18 bold"
    print #calc.statictext3, "!font ms_sans_serif 10 bold"
    print #calc.statictext5, "!font ms_sans_serif 10 bold"
    print #calc.statictext7, "!font ms_sans_serif 10 bold"
    print #calc.statictext12, "!font ms_sans_serif 10 bold"
    print #calc.statictext13, "!font ms_sans_serif 10 bold"
    print #calc.statictext15, "!font ms_sans_serif 10 bold"
    print #calc.statictext17, "!font ms_sans_serif 10 bold"
    print #calc.button18, "!font ms_sans_serif 14 bold"
    print #calc.statictext19, "!font ms_sans_serif 10 bold"
    print #calc.statictext21, "!font ms_sans_serif 10 bold"
    print #calc.statictext24, "!font ms_sans_serif 10 bold"
    print #calc.statictext26, "!font ms_sans_serif 10 bold"
    print #calc.statictext28, "!font ms_sans_serif 10 bold"



[calc.inputLoop]   'wait here for input event
    wait



[shutprogram]   'Perform action for the button named 'button1'

goto [quit.calc]

    wait


[Calc]   'Perform action for the statictext named 'statictext3'

print #calc.textbox29,""
print #calc.textbox30,""
print #calc.textbox31,""
print #calc.textbox32,""

print #calc.textbox4, "!contents? horses";
gosub [probabilityCalc]
print #calc.textbox6, "!contents? Horse11";

'Need code here to put in top total combined probabilities for number of horses user selects to dutch.




print #calc.textbox8, "!contents? Horse1";
print #calc.textbox9, "!contents? Horse2";
print #calc.textbox10, "!contents? Horse3";
print #calc.textbox11, "!contents? Horse4";
print #calc.textbox14, "!contents? bankroll";
print #calc.textbox16,  "!contents? risk";
totalprob1 = Horse11  ' get user horse odds

totalprob = 1/(Horse1+1)                     ' get horse1 odds



if  Horse2 > 0.20 then
totalprob = totalprob + (1/(Horse2+1)) ' horse 2 odds
end if

if  Horse3 > 0.20 then
totalprob = totalprob + (1/(Horse3+1)) ' horse 3 odds
end if

if  Horse4 > 0.20 then
totalprob = totalprob + (1/(Horse4+1)) ' horse 4 odds
end if

totalprob1 = int(totalprob1*100)
totalprob = int(totalprob*100) ' groups total probability based on tote odds

if totalprob = totalprob1 or totalprob > totalprob1 then ' notice there is no overlay
notice "Sorry, There's NO OVERLAY"
else
print #calc.textbox20, "           ";totalprob  'print total group probability
print #calc.textbox22, "           "; totalprob1 'print total handicapped group probability

z = (totalprob-totalprob1)/(1-totalprob) ' math getting ready for differing percentages
c = (1-totalprob)/totalprob
e = (1-z)^(1-totalprob1)*(1+c*z)^totalprob1
print #calc.textbox25, "        "; int(z*100)*0.01
if risk < z then
e = (1-risk)^(1-totalprob1)*(1+c*risk)^totalprob1
else
risk = z
e = (1-risk)^(1-totalprob1)*(1+c*risk)^totalprob1
end if
print #calc.textbox27, e

bet1 = bankroll*risk/((totalprob*.01)*(1+Horse1))
if bet1 < 2 then
 bet1 = 2
 end if
 print #calc.textbox29,"    ";int(bet1)

if Horse2 > 0.20 then
bet2 =  bankroll*risk/((totalprob*.01)*(1+Horse2))
if bet2 < 2 then
 bet2 = 2
 end if
print #calc.textbox30,"    ";int(bet2)
 end if

 if Horse3 > 0.20 then
bet3 =  bankroll*risk/((totalprob*.01)*(1+Horse3))
if bet3 < 2 then
 bet3 = 2
 end if
 print #calc.textbox31,"    ";int(bet3)

  end if

 if Horse4 > 0.20 then
bet4 =  bankroll*risk/((totalprob*.01)*(1+Horse4))
if bet4 < 2 then
 bet4 = 2
 end if
print #calc.textbox32,"    ";int(bet4)

  end if

end if

 horses = 0
 Handiprob = 0
 Horse1 = 0
 Horse2 = 0
 Horse3 = 0
 Horse4 = 0
 bankroll = 0
 risk = 0
 bet1 = 0
 bet2 = 0
 bet3 = 0
 bet4 = 0
 totalprob = 0
 totalprob1 = 0
    wait

[quit.calc] 'End the program

    close #calc
    goto [top.inputLoop]




    [probabilityCalc]

   h = horses

     for pt = 0 to numb-1
        srt(pt,0) =  pt
        if holder(pt,18) = 0 then
        srt(pt,1) = 99.0
        else
        srt(pt,1) = holder(pt,18)
        end if
    next pt
    sort srt(),0,numb-1,1

    Select Case  h
    case 2
    totalprob = (1/srt(0,1)) + (1/srt(1,1))
    case 3
    totalprob = (1/srt(0,1)) + (1/srt(1,1)) + (1/srt(2,1))
    case 4
    totalprob = (1/srt(0,1)) + (1/srt(1,1)) + (1/srt(2,1)) + (1/srt(3,1))


    End select

    print #calc.textbox6, totalprob

    return

'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

[cleanfactors]

Class = 0
Distancespeed = 0
EarlyPace = 0
LatePace = 0
Form = 0
PerformanceClass = 0
avgpurse = 0
Turf = 0
Mud = 0
Dirt = 0
Fast = 0
Trainer = 0
Jockey = 0
Speed3 = 0
Speed2 = 0
LastSpeed = 0
CarrollSpeed = 0
 Classconsist = 0
PowerSpeed = 0
MitchellPower = 0
MornLine = 0
Daysaway = 0
Qpoints = 0

Return
'IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
[initialfillobject]

Class =0
 print   #objectbuild.classtextbox27, 0


 Distancespeed = 0

       print  #objectbuild.DStextbox28, 0






         EarlyPace = 0

         print  #objectbuild.EPtextbox29, 0



         LatePace = 0

          print  #objectbuild.LPtextbox30, 0


         Form = 0

          print  #objectbuild.Formtextbox31, 0


        PerformanceClass = 0

         print  #objectbuild.PCtextbox32, 0


         avgpurse = 0

         print  #objectbuild.AWtextbox33, 0



         Turf = 0

          print  #objectbuild.Turftextbox34, 0


             Mud = 0

         print  #objectbuild.Mudtextbox36, 0


         Dirt = 0

         print  #objectbuild.Dirttextbox35, 0


         Fast = 0

         print  #objectbuild.FASTtextbox37, 0


         Trainer = 0

         print  #objectbuild.TRtextbox38, 0



         Jockey = 0

         print  #objectbuild.JKtextbox39, 0



         Speed3 = 0

         print  #objectbuild.3SPtextbox40, 0



         Speed2 = 0

         print  #objectbuild.2SPeedtextbox41, 0


         LastSpeed = 0

         print  #objectbuild.LastSPtextbox42, 0



        CarrollSpeed = 0

         print  #objectbuild.CAROLtextbox43, 0


         Classconsist = 0

          print  #objectbuild.CCtextbox44, 0


         PowerSpeed = 0

         print  #objectbuild.PStextbox45, 0


         MitchellPower = 0

          print  #objectbuild.Mitcheltextbox46, 0



         MornLine = 0

          print  #objectbuild.MLtextbox47, 0

         Daysaway = 0

         print  #objectbuild.daystextbox48, 0



selected$ = ""


Return

'VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

[viewchangeRaceAnalyst]

gosub [changeAnalyst]

viewanalyst = 1

if changeanalyst = 0 then

goto [#main.Inputloop]

end if

 Gosub [ViewRaceobjects]




          wait











'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

'Form created with the help of Freeform 3 v07-31-2015
'Generated on May 02, 2016 at 22:57:51


[changeAnalyst]

    '-----Begin code for #viewanalyst

    WindowWidth = 550
    WindowHeight = 410
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

    ComboboxColor$ = "white"
    combobox #viewanalyst.combobox1, viewarray$(, [combobox1DoubleClick],  110, 117, 300, 100
    statictext #viewanalyst.statictext2, "Select the Analyst to View/Change and Click it.",  100,  72, 400,  20



    '-----End GUI objects code

    'open "View / Change Analyst" for graphics_nsb as #viewanalyst

    open "View / Change Analyst" for window as #viewanalyst
    'print #viewanalyst, "down;fill buttonface; flush"
    'print #viewanalyst, "color black; backcolor buttonface"
    print #viewanalyst, "font ms_sans_serif 10"
    print #viewanalyst.statictext2, "!font ms_sans_serif 10 bold"
    print #viewanalyst, "trapclose [quitviewobject]"


    gettrim #raceobjectcontrol, 1

    redim viewarray$(raceobjectnumber+1)

    for i = 1 to raceobjectnumber
    gettrim #raceobject, i
            viewarray$(i) = Name$
        next i
    print #viewanalyst.combobox1,  "reload"

    changeanalyst = 0

       wait


[combobox1DoubleClick]
       print  #viewanalyst.combobox1, "contents? text$"    'processing after user selects an analyst to handicap with
print #viewanalyst.combobox1, "selectionindex? index"
changeanalyst = index
for x = 1 to raceobjectnumber
Gettrim #raceobject, x

if Name$ = text$ then

                                                        CL1=Class
                                                        DS1=Distancespeed
                                                        EP1=EarlyPace
                                                        LP1=LatePace
                                                        FM1=Form
                                                        PC1=PerformanceClass
                                                        AVP1=avgpurse
                                                        TF1=Primepowerpts
                                                        MY1=averagespeedpts
                                                        DT1=Dirt
                                                        Fast1=Fast
                                                        TR1=Trainer
                                                        JK1=Jockey
                                                        ML1=MornLine
                                                        S11=LastSpeed
                                                        S21=Speed2
                                                        S31=Speed3
                                                        CC1=Classconsist
                                                        PS1=PowerSpeed
                                                        PWR1=MitchellPower
                                                        CS1=CarrollSpeed
                                                        Qpoints = quirinspeedpoints
                                                        if Name$ = text$ then Exit For



    end if
next x

'print #viewanalyst.combobox1, "selectindex 0" ' reset combox index so same analyst may be selected more than once in a row.





   [quitviewobject]
   close  #viewanalyst

    Return


'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

[ViewRaceobjects] ' BEGINNING OF BUILDING analysts OBJECTS

'Form created with the help of Freeform 3 v03-27-03
'Generated on Jul 02, 2015 at 14:14:00


'[setup.objectbuild.Window]

    '-----Begin code for #objectbuild

    WindowWidth = 660
    WindowHeight = 680
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code


    statictext #objectbuild.statictext1, "Available Factors",  20,  47, 160,  20
    ListboxColor$ = "white"
    listbox #objectbuild.listbox2, scales$(), [Scaleslistbox],  335, 102, 200, 250
    statictext #objectbuild.statictext3, "Scaling", 400,  67,  85,  20
    statictext #objectbuild.statictext3, "Enter Name For Object", 355,  400,  200,  20
    textbox #objectbuild.name, 340, 425,  200,  25
    button #objectbuild.button4,"Save Object Setup",[saveobjectsetup2], UL, 350, 500, 190,  25
    button #objectbuild.button5,"Negative Value",[negativefactor], UL,   180,  43, 125,  25
    checkbox #objectbuild.checkbox5, "Class", [classcheckbox5Set], [checkbox5Reset],  20,  77,  64,  25
    checkbox #objectbuild.checkbox7, "Distance Speed", [Distancespeedcheckbox7Set], [checkbox7Reset],  20, 102, 122,  25
    checkbox #objectbuild.checkbox8, "Early Pace", [earlypacecheckbox8Set], [checkbox8Reset],  20, 127,  91,  25
    checkbox #objectbuild.checkbox9, "Late Pace", [latepacecheckbox9Set], [checkbox9Reset],  20, 152,  86,  25
    checkbox #objectbuild.checkbox10, "Form", [formcheckbox10Set], [checkbox10Reset],  20, 177,  56,  25
    checkbox #objectbuild.checkbox11, "Performance Class", [perfclasscheckbox11Set], [checkbox11Reset],  20, 202, 139,  25
    checkbox #objectbuild.checkbox12, "Avg Purse", [allweathercheckbox12Set], [checkbox12Reset],  20, 227,  94,  25
    checkbox #objectbuild.checkbox13, "Prime Power", [turfcheckbox13Set], [checkbox13Reset],  20, 252,  148,  25
    checkbox #objectbuild.checkbox14, "Mud", [mudcheckbox14Set], [checkbox14Reset],  20, 277,  51,  25
    checkbox #objectbuild.checkbox15, "Dirt", [dirtcheckbox15Set], [checkbox15Reset],  20, 302,  45,  25
    checkbox #objectbuild.checkbox16, " F.A.S.T. Number", [fastcheckbox16Set], [checkbox16Reset],  20, 327, 126,  25
    checkbox #objectbuild.checkbox17, "Trainer", [trainercheckbox17Set], [checkbox17Reset],  20, 352,  68,  25
    checkbox #objectbuild.checkbox18, "Jockey", [jockeycheckbox18Set], [checkbox18Reset],  20, 377,  69,  25
    checkbox #objectbuild.checkbox19, "Speed 3 Back", [speed3checkbox19Set], [checkbox19Reset],  20, 402, 110,  25
    checkbox #objectbuild.checkbox20, "Speed 2 Back", [speed2checkbox20Set], [checkbox20Reset],  20, 427, 110,  25
    checkbox #objectbuild.checkbox21, "Last Speed", [lastspeedcheckbox21Set], [checkbox21Reset],  20, 452,  94,  25
    checkbox #objectbuild.checkbox22, "Carroll Speed", [Carrollcheckbox22Set], [checkbox22Reset],  20, 477, 108,  25
    checkbox #objectbuild.checkbox23, "Class/Consistency", [CCcheckbox23Set], [checkbox23Reset],  20, 502, 145,  25
    checkbox #objectbuild.checkbox24, "Power/Speed Combo", [PSpeedcheckbox24Set], [checkbox24Reset],  20, 527, 155,  25
    checkbox #objectbuild.checkbox25, "Mitchell Power", [mitchellcheckbox25Set], [checkbox25Reset],  20, 552, 111,  25
    checkbox #objectbuild.checkbox26, "Morning Line", [mornlinecheckbox26Set], [checkbox26Reset],  20, 577, 101,  25
    checkbox #objectbuild.checkbox27, "Days Away", [Dayscheckbox27Set], [checkbox27Reset],  20, 603, 101,  25
    TextboxColor$ = "BUTTONFACE"
    textbox #objectbuild.classtextbox27, 180,  77,  55,  20
    textbox #objectbuild.DStextbox28, 180,  102,  55,  20
    textbox #objectbuild.EPtextbox29, 180, 127,  55,  20
    textbox #objectbuild.LPtextbox30, 180, 152,  55,  20
    textbox #objectbuild.Formtextbox31, 180, 180,  55,  20
    textbox #objectbuild.PCtextbox32, 180, 204,  55,  20
    textbox #objectbuild.AWtextbox33, 180, 229,  55,  20
    textbox #objectbuild.Turftextbox34, 180, 252,  55,  20

    textbox #objectbuild.Mudtextbox36, 180, 277,  55,  20
    textbox #objectbuild.Dirttextbox35, 180, 302,  55,  20
    textbox #objectbuild.FASTtextbox37, 180, 327,  55,  20
    textbox #objectbuild.TRtextbox38, 180, 352,  55,  20
    textbox #objectbuild.JKtextbox39, 180, 377,  55,  20
    textbox #objectbuild.3SPtextbox40, 180, 402,  55,  20
    textbox #objectbuild.2SPeedtextbox41, 180, 427,  55,  20
    textbox #objectbuild.LastSPtextbox42, 180, 452,  55,  20
    textbox #objectbuild.CAROLtextbox43, 180, 477,  55,  20
    textbox #objectbuild.CCtextbox44, 180, 502,  55,  20
    textbox #objectbuild.PStextbox45, 180, 527,  55,  20
    textbox #objectbuild.Mitcheltextbox46, 180, 552,  55,  20
    textbox #objectbuild.MLtextbox47, 180, 577,  55,  20
    textbox #objectbuild.daystextbox48, 180, 603,  55,  20

    '-----End GUI objects code

    open "Build Race Object" for graphics_nsb as #objectbuild
    print #objectbuild, "down;fill white; flush"
    #objectbuild, "trapclose [quitobjectbuild]"
    print #objectbuild, "color black; backcolor buttonface"
    print #objectbuild, "font ms_sans_serif 10"
    print #objectbuild.statictext1, "!font ms_sans_serif 10 bold"
    print #objectbuild.statictext3, "!font ms_sans_serif 10 bold"
    print #objectbuild.button4, "!font ms_sans_serif 10 bold"
    print #objectbuild.classtextbox27, "!font ms_sans_serif 10 bold"
    print #objectbuild.DStextbox28, "!font ms_sans_serif 10 bold"
    print #objectbuild.EPtextbox29, "!font ms_sans_serif 10 bold"
    print #objectbuild.LPtextbox30, "!font ms_sans_serif 10 bold"
    print #objectbuild.Formtextbox31, "!font ms_sans_serif 10 bold"
    print #objectbuild.PCtextbox32, "!font ms_sans_serif 10 bold"
    print #objectbuild.AWtextbox33, "!font ms_sans_serif 10 bold"
    print #objectbuild.Turftextbox34, "!font ms_sans_serif 10 bold"
    print #objectbuild.Dirttextbox35, "!font ms_sans_serif 10 bold"
    print #objectbuild.Mudtextbox36, "!font ms_sans_serif 10 bold"
    print #objectbuild.FASTtextbox37, "!font ms_sans_serif 10 bold"
    print #objectbuild.TRtextbox38, "!font ms_sans_serif 10 bold"
    print #objectbuild.JKtextbox39, "!font ms_sans_serif 10 bold"
    print #objectbuild.3SPtextbox40, "!font ms_sans_serif 10 bold"
    print #objectbuild.2SPeedtextbox41, "!font ms_sans_serif 10 bold"
    print #objectbuild.LastSPtextbox42, "!font ms_sans_serif 10 bold"
    print #objectbuild.CAROLtextbox43, "!font ms_sans_serif 10 bold"
    print #objectbuild.CCtextbox44, "!font ms_sans_serif 10 bold"
    print #objectbuild.PStextbox45, "!font ms_sans_serif 10 bold"
    print #objectbuild.Mitcheltextbox46, "!font ms_sans_serif 10 bold"
    print #objectbuild.MLtextbox47, "!font ms_sans_serif 10 bold"
    print #objectbuild.daystextbox48, "!font ms_sans_serif 10 bold"

Print #objectbuild, "place 10 30"
    Print #objectbuild, "\Select Factor then Enter Value Up To 250 Points. After All Factors Selected Then Select a Scaling Object "

     i = 0
       open "C:\handifiles\scales.txt" for input as #S ' LOAD UP LISTBOX WITH SCALING OPTIONS.
         While Not (EOf(#S))
         Input #S, scales$(i)
         i = i + 1
         Wend

         print #objectbuild.listbox2, "reload"
       close #S

Name$ = ""   '-------------INITIALIZE NAME RECORD AND READY FOR RACE OBJECT NAME ASSIGNMENT

If  viewanalyst = 1 then

 print #objectbuild.name,  text$

 print   #objectbuild.classtextbox27, Class






       print  #objectbuild.DStextbox28, Distancespeed








         print  #objectbuild.EPtextbox29,  EarlyPace





          print  #objectbuild.LPtextbox30, LatePace




          print  #objectbuild.Formtextbox31, Form




         print  #objectbuild.PCtextbox32, PerformanceClass




         print  #objectbuild.AWtextbox33, avgpurse





          print  #objectbuild.Turftextbox34, Primepowerpts




         print  #objectbuild.Mudtextbox36, averagespeedpts




         print  #objectbuild.Dirttextbox35, Dirt




         print  #objectbuild.FASTtextbox37, Fast

          yest = Fast




         print  #objectbuild.TRtextbox38, Trainer





         print  #objectbuild.JKtextbox39, Jockey





         print  #objectbuild.3SPtextbox40, Speed3





         print  #objectbuild.2SPeedtextbox41, Speed2



         print  #objectbuild.LastSPtextbox42, LastSpeed






         print  #objectbuild.CAROLtextbox43,  CarrollSpeed




          print  #objectbuild.CCtextbox44, Classconsist




         print  #objectbuild.PStextbox45, PowerSpeed




          print  #objectbuild.Mitcheltextbox46, MitchellPower





          print  #objectbuild.MLtextbox47, MornLine




           print #objectbuild.daystextbox48, Daysaway

end if

wait' now we need code to change if need be the values that the user chooses. plus reput same recoerd back in.
    ' and close the object build window.



'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB

[rawselected] ' button for raw number display. No need to do anything as this is default setting other than mark which number form to display

print #top, "place 145  50 ";
print #top, " color White"
print #top,  "circlefilled 8"

print #top, "place 320  50 ";
print #top, "backcolor blue"
print #top, "color blue"
print #top,  "circlefilled 8"

ranknumber = 0 'Flag to use to show what number form to use.

goto [top.inputLoop]


[rankselected]  ' button for Ranked number display

Gosub [setup.lowrank.Window] ' branch to Rank selector popup window.


print #top, "place 320  50 ";
print #top, " color white"
print #top,  "circlefilled 8"

print #top, "place 145  50 ";
print #top, "backcolor blue"
print #top, "color blue"
print #top,  "circlefilled 8"

ranknumber = 1

goto [top.inputLoop]

'RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR

[classrank] ' getting raw numbers ranking

   ' CL
 '       sort holder() 0,numb-1,0
 '       for x =  0 to numb-1
 '       poscount = 0
 '       y = 0
 '    while y <  numb


'if  holder(x,3) < holder(y,3) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,40) = 1
'       case 2
'        holder(x,40) = 2
'       case 3
'        holder(x,40) = 3
'       case 4
'        holder(x,40) = 4
'       case 5
'        holder(x,40) = 5
'        case 6
'        holder(x,40) = 6
'        case 7
'        holder(x,40) = 7
'         case 8
'        holder(x,40) = 8
'       case 9
'        holder(x,40) = 9
'       case 10
'        holder(x,40) = 10
'       case 11
'        holder(x,40) = 11
'       case 12
'        holder(x,40) = 12
'        case 13
'        holder(x,40) = 13
'        case 14
'        holder(x,40) = 14
'        case 15
'        holder(x,40) = 15
'        case 16
'        holder(x,40) = 16
'        case 17
'        holder(x,40) = 17
'        case 18
'        holder(x,40) = 18
'        case 19
'        holder(x,40) = 19
'        case 20
'        holder(x,40) = 20
'        case 21
'        holder(x,40) = 21
'        case 22
'        holder(x,40) = 22
'        case ELSE
'        holder(x,40) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   cl rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,3)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch]
else

    holder(srt(a,0),40) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),40) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0 'HH added
    end if
    holder(srt(a,0),40) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then ' MD added
    holder(srt(a,0),40) = 0
    end if
end if
    [rankscratch]
    a = a + 1
    next pt

    gosub [resort1]


' DS  rank

'        for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,4) < holder(y,4) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,41) = 1
'       case 2
'        holder(x,41) = 2
'       case 3
'        holder(x,41) = 3
'       case 4
'        holder(x,41) = 4
'       case 5
'        holder(x,41) = 5
'        case 6
'        holder(x,41) = 6
'        case 7
'        holder(x,41) = 7
'         case 8
'        holder(x,41) = 8
'       case 9
'        holder(x,41) = 9
'       case 10
'        holder(x,41) = 10
'       case 11
'        holder(x,41) = 11
'       case 12
'        holder(x,41) = 12
'        case 13
'        holder(x,41) = 13
'        case 14
'        holder(x,41) = 14
'        case 15
'        holder(x,41) = 15
'        case 16
'        holder(x,41) = 16
'        case 17
'        holder(x,41) = 17
'        case 18
'        holder(x,41) = 18
'        case 19
'        holder(x,41) = 19
'        case 20
'        holder(x,41) = 20
'        case 21
'        holder(x,41) = 21
'        case 22
'        holder(x,41) = 22
'        case ELSE
'        holder(x,41) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   ds rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,4)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch1]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch1]
else

    holder(srt(a,0),41) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch1]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),41) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0 'HH added
    end if
    holder(srt(a,0),41) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
  '  if firstimer(srt(a,0)) = 1 then  ' MD added
  '  holder(srt(a,0),41) = 0
  '  end if
end if
    [rankscratch1]
    a = a + 1
    next pt

    gosub [resort1]


' ep rank

'        for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,5) < holder(y,5) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,42) = 1
'       case 2
'        holder(x,42) = 2
'       case 3
'        holder(x,42) = 3
'       case 4
'        holder(x,42) = 4
'       case 5
'        holder(x,42) = 5
'        case 6
'        holder(x,42) = 6
'        case 7
'        holder(x,42) = 7
'         case 8
'        holder(x,42) = 8
'       case 9
'        holder(x,42) = 9
'       case 10
'        holder(x,42) = 10
'       case 11
'        holder(x,42) = 11
'       case 12
'        holder(x,42) = 12
'        case 13
'        holder(x,42) = 13
'        case 14
'        holder(x,42) = 14
'        case 15
'        holder(x,42) = 15
'        case 16
'        holder(x,42) = 16
'        case 17
'        holder(x,42) = 17
'        case 18
'        holder(x,42) = 18
'        case 19
'        holder(x,42) = 19
'        case 20
'        holder(x,42) = 20
'        case 21
'        holder(x,42) = 21
'        case 22
'        holder(x,42) = 22
'        case ELSE
'        holder(x,42) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   ep rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,5)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch2]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch2]
else

    holder(srt(a,0),42) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch2]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),42) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),42) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then  ' MD added
    holder(srt(a,0),42) = 0
    end if
end if
    [rankscratch2]
    a = a + 1
    next pt

    gosub [resort1]


' lp rank

'        for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'   if  holder(x,6) < holder(y,6) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,43) = 1
'       case 2
'        holder(x,43) = 2
'       case 3
'        holder(x,43) = 3
'       case 4
'        holder(x,43) = 4
'       case 5
'        holder(x,43) = 5
'        case 6
'        holder(x,43) = 6
'        case 7
'        holder(x,43) = 7
'         case 8
'        holder(x,43) = 8
'       case 9
'        holder(x,43) = 9
'       case 10
'        holder(x,43) = 10
'       case 11
'        holder(x,43) = 11
'       case 12
'        holder(x,43) = 12
'        case 13
'        holder(x,43) = 13
'        case 14
'        holder(x,43) = 14
'        case 15
'        holder(x,43) = 15
'        case 16
'        holder(x,43) = 16
'        case 17
'        holder(x,43) = 17
'        case 18
'        holder(x,43) = 18
'        case 19
'        holder(x,43) = 19
'        case 20
'        holder(x,43) = 20
'        case 21
'        holder(x,43) = 21
'        case 22
'        holder(x,43) = 22
'        case ELSE
'        holder(x,43) = 99
'    end select


'        next x


a = 0
 for pt = 0 to numb-1  '   lp rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,6)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch3]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch3]
else

    holder(srt(a,0),43) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch3]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),43) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),43) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
   ' if firstimer(srt(a,0)) = 1 then  ' MD added
   ' holder(srt(a,0),43) = 0
   ' end if
end if
    [rankscratch3]
    a = a + 1
    next pt

    gosub [resort1]


' fm rank

'        for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,7) < holder(y,7) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,44) = 1
'       case 2
'        holder(x,44) = 2
'       case 3
'        holder(x,44) = 3
'       case 4
'        holder(x,44) = 4
'       case 5
'        holder(x,44) = 5
'        case 6
'        holder(x,44) = 6
'        case 7
'        holder(x,44) = 7
'         case 8
'        holder(x,44) = 8
'       case 9
'        holder(x,44) = 9
'       case 10
'        holder(x,44) = 10
'       case 11
'        holder(x,44) = 11
'       case 12
'        holder(x,44) = 12
'        case 13
'        holder(x,44) = 13
'        case 14
'        holder(x,44) = 14
'        case 15
'        holder(x,44) = 15
'        case 16
'        holder(x,44) = 16
'        case 17
'        holder(x,44) = 17
'        case 18
'        holder(x,44) = 18
'        case 19
'        holder(x,44) = 19
'        case 20
'        holder(x,44) = 20
'        case 21
'        holder(x,44) = 21
'        case 22
'        holder(x,44) = 22
'        case ELSE
'        holder(x,44) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   fm rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,7)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch4]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch4]
else

    holder(srt(a,0),44) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch4]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),44) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),44) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then  ' MD added
    holder(srt(a,0),44) = 0
    end if
end if
    [rankscratch4]
    a = a + 1
    next pt

    gosub [resort1]


' Pc rank

'        for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,8) < holder(y,8) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,45) = 1
'       case 2
'        holder(x,45) = 2
'       case 3
'        holder(x,45) = 3
'       case 4
'        holder(x,45) = 4
'       case 5
'        holder(x,45) = 5
'        case 6
'        holder(x,45) = 6
'        case 7
'        holder(x,45) = 7
'         case 8
'        holder(x,45) = 8
'       case 9
'        holder(x,45) = 9
'       case 10
'        holder(x,45) = 10
'       case 11
'        holder(x,45) = 11
'       case 12
'        holder(x,45) = 12
'        case 13
'        holder(x,45) = 13
'        case 14
'        holder(x,45) = 14
'        case 15
'        holder(x,45) = 15
'        case 16
'        holder(x,45) = 16
'        case 17
'        holder(x,45) = 17
'        case 18
'        holder(x,45) = 18
'        case 19
'        holder(x,45) = 19
'        case 20
'        holder(x,45) = 20
'        case 21
'        holder(x,45) = 21
'        case 22
'        holder(x,45) = 22
'        case ELSE
'        holder(x,45) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   pc rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,8)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch5]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch5]
else

    holder(srt(a,0),45) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch5]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),45) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),45) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then  ' MD added
    holder(srt(a,0),45) = 0
    end if
end if
    [rankscratch5]
    a = a + 1
    next pt

    gosub [resort1]


' Avg Purse rank

'        for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,9) < holder(y,9) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,59) = 1
'       case 2
'        holder(x,59) = 2
'       case 3
'        holder(x,59) = 3
'       case 4
'        holder(x,59) = 4
'       case 5
'        holder(x,59) = 5
'        case 6
'        holder(x,59) = 6
'        case 7
'        holder(x,59) = 7
'         case 8
'        holder(x,59) = 8
'       case 9
'        holder(x,59) = 9
'       case 10
'        holder(x,59) = 10
'       case 11
'        holder(x,59) = 11
'       case 12
'        holder(x,59) = 12
'        case 13
'        holder(x,59) = 13
'        case 14
'        holder(x,59) = 14
'        case 15
'        holder(x,59) = 15
'        case 16
'        holder(x,59) = 16
'        case 17
'        holder(x,59) = 17
'        case 18
'        holder(x,59) = 18
'        case 19
'        holder(x,59) = 19
'        case 20
'        holder(x,59) = 20
'        case 21
'        holder(x,59) = 21
'        case 22
'        holder(x,59) = 22
'        case ELSE
'        holder(x,59) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   avg purse rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,9)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch6]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch6]
else

    holder(srt(a,0),59) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch6]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),59) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),59) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then  ' MD added
    holder(srt(a,0),59) = 0
    end if
end if
    [rankscratch6]
    a = a + 1
    next pt

    gosub [resort1]

' turf rank

'        for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,10) < holder(y,10) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,46) = 1
'       case 2
'        holder(x,46) = 2
'       case 3
'        holder(x,46) = 3
'       case 4
'        holder(x,46) = 4
'       case 5
'        holder(x,46) = 5
'        case 6
'        holder(x,46) = 6
'        case 7
'        holder(x,46) = 7
'        case 8
'        holder(x,46) = 8
'       case 9
'        holder(x,46) = 9
'       case 10
'        holder(x,46) = 10
'       case 11
'        holder(x,46) = 11
'       case 12
'        holder(x,46) = 12
'        case 13
'        holder(x,46) = 13
'        case 14
'        holder(x,46) = 14
'        case 15
'        holder(x,46) = 15
'        case 16
'        holder(x,46) = 16
'        case 17
'        holder(x,46) = 17
'        case 18
'        holder(x,46) = 18
'        case 19
'        holder(x,46) = 19
'        case 20
'        holder(x,46) = 20
'        case 21
'        holder(x,46) = 21
'        case 22
'        holder(x,46) = 22
'        case ELSE
'        holder(x,46) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   tf rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,10)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch7]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch7]
else

    holder(srt(a,0),46) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch7]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),46) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),46) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
   ' if firstimer(srt(a,0)) = 1 then  ' MD added
   ' holder(srt(a,0),46) = 0
   ' end if
end if
    [rankscratch7]
    a = a + 1
    next pt

    gosub [resort1]


' mud rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,11) < holder(y,11) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,47) = 1
'       case 2
'        holder(x,47) = 2
'       case 3
'        holder(x,47) = 3
'       case 4
'        holder(x,47) = 4
'       case 5
'        holder(x,47) = 5
'        case 6
'        holder(x,47) = 6
'        case 7
'        holder(x,47) = 7
'         case 8
'        holder(x,47) = 8
'       case 9
'        holder(x,47) = 9
'       case 10
'        holder(x,47) = 10
'       case 11
'        holder(x,47) = 11
'       case 12
'        holder(x,47) = 12
'        case 13
'        holder(x,47) = 13
'        case 14
'        holder(x,47) = 14
'        case 15
'        holder(x,47) = 15
'        case 16
'        holder(x,47) = 16
'        case 17
'        holder(x,47) = 17
'        case 18
'        holder(x,47) = 18
'        case 19
'        holder(x,47) = 19
'        case 20
'        holder(x,47) = 20
'        case 21
'        holder(x,47) = 21
'        case 22
'        holder(x,47) = 22
'        case ELSE
'        holder(x,47) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   mud rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,11)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch8]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch8]
else

    holder(srt(a,0),47) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch8]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),47) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),47) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
  '  if firstimer(srt(a,0)) = 1 then  ' MD added
  '  holder(srt(a,0),47) = 0
  '  end if
end if
    [rankscratch8]
    a = a + 1
    next pt

    gosub [resort1]


' dirt rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,12) < holder(y,12) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,48) = 1
'       case 2
'        holder(x,48) = 2
'       case 3
'        holder(x,48) = 3
'       case 4
'        holder(x,48) = 4
'       case 5
'        holder(x,48) = 5
'        case 6
'        holder(x,48) = 6
'        case 7
'        holder(x,48) = 7
'         case 8
'        holder(x,48) = 8
'       case 9
'        holder(x,48) = 9
'       case 10
'        holder(x,48) = 10
'       case 11
'        holder(x,48) = 11
'       case 12
'        holder(x,48) = 12
'        case 13
'        holder(x,48) = 13
'        case 14
'        holder(x,48) = 14
'        case 15
'        holder(x,48) = 15
'        case 16
'        holder(x,48) = 16
'        case 17
'        holder(x,48) = 17
'        case 18
'        holder(x,48) = 18
'        case 19
'        holder(x,48) = 19
'        case 20
'        holder(x,48) = 20
'        case 21
'        holder(x,48) = 21
'        case 22
'        holder(x,48) = 22
'        case ELSE
'        holder(x,48) = 99
'    end select

'        next x

a = 0
 for pt = 0 to numb-1  '   dirt rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,12)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch9]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch9]
else

    holder(srt(a,0),48) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch9]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),48) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),48) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
  '  if firstimer(srt(a,0)) = 1 then  ' MD added
  '  holder(srt(a,0),48) = 0
  '  end if
end if
    [rankscratch9]
    a = a + 1
    next pt

    gosub [resort1]


' fast rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,13) < holder(y,13) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,49) = 1
'       case 2
'        holder(x,49) = 2
'       case 3
'        holder(x,49) = 3
'       case 4
'        holder(x,49) = 4
'       case 5
'        holder(x,49) = 5
'        case 6
'        holder(x,49) = 6
'        case 7
'        holder(x,49) = 7
'         case 8
'        holder(x,49) = 8
'       case 9
'        holder(x,49) = 9
'       case 10
'        holder(x,49) = 10
'       case 11
'        holder(x,49) = 11
'       case 12
'        holder(x,49) = 12
'        case 13
'        holder(x,49) = 13
'        case 14
'        holder(x,49) = 14
'        case 15
'        holder(x,49) = 15
'        case 16
'        holder(x,49) = 16
'        case 17
'        holder(x,49) = 17
'        case 18
'        holder(x,49) = 18
'        case 19
'        holder(x,49) = 19
'        case 20
'        holder(x,49) = 20
'        case 21
'        holder(x,49) = 21
'        case 22
'        holder(x,49) = 22
'        case ELSE
'        holder(x,49) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   fast rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,13)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch10]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch10]
else

    holder(srt(a,0),49) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch10]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),49) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),49) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then  ' MD added
    holder(srt(a,0),49) = 0
    end if
end if
    [rankscratch10]
    a = a + 1
    next pt

    gosub [resort1]

' Tr rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,14) < holder(y,14) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,50) = 1
'       case 2
'        holder(x,50) = 2
'       case 3
'        holder(x,50) = 3
'       case 4
'        holder(x,50) = 4
'       case 5
'        holder(x,50) = 5
'        case 6
'        holder(x,50) = 6
'        case 7
'        holder(x,50) = 7
'         case 8
'        holder(x,50) = 8
'       case 9
'        holder(x,50) = 9
'       case 10
'        holder(x,50) = 10
'       case 11
'        holder(x,50) = 11
'       case 12
'        holder(x,50) = 12
'        case 13
'        holder(x,50) = 13
'        case 14
'        holder(x,50) = 14
'        case 15
'        holder(x,50) = 15
'        case 16
'        holder(x,50) = 16
'        case 17
'        holder(x,50) = 17
'        case 18
'        holder(x,50) = 18
'        case 19
'        holder(x,50) = 19
'        case 20
'        holder(x,50) = 20
'        case 21
'        holder(x,50) = 21
'        case 22
'        holder(x,50) = 22
'        case ELSE
'        holder(x,50) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   tr rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,14)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch11]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch11]
else

    holder(srt(a,0),50) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch11]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),50) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),50) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
  '  if firstimer(srt(a,0)) = 1 then  ' MD added
  '  holder(srt(a,0),50) = 0
  '  end if
end if
    [rankscratch11]
    a = a + 1
    next pt

    gosub [resort1]


' Jky rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,15) < holder(y,15) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,51) = 1
'       case 2
'        holder(x,51) = 2
'       case 3
'        holder(x,51) = 3
'       case 4
'        holder(x,51) = 4
'       case 5
'        holder(x,51) = 5
'        case 6
'        holder(x,51) = 6
'        case 7
'        holder(x,51) = 7
'         case 8
'        holder(x,51) = 8
'       case 9
'        holder(x,51) = 9
'       case 10
'        holder(x,51) = 10
'       case 11
'        holder(x,51) = 11
'       case 12
'        holder(x,51) = 12
'        case 13
'        holder(x,51) = 13
'        case 14
'        holder(x,51) = 14
'        case 15
'        holder(x,51) = 15
'        case 16
'        holder(x,51) = 16
'        case 17
'        holder(x,51) = 17
'        case 18
'        holder(x,51) = 18
'        case 19
'        holder(x,51) = 19
'        case 20
'        holder(x,51) = 20
'        case 21
'        holder(x,51) = 21
'        case 22
'        holder(x,51) = 22
'        case ELSE
'        holder(x,51) = 99
'    end select

'        next x



a = 0
 for pt = 0 to numb-1  '   jky rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,15)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch12]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch12]
else

    holder(srt(a,0),51) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch12]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),51) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),51) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
  '  if firstimer(srt(a,0)) = 1 then  ' MD added
  '  holder(srt(a,0),51) = 0
  '  end if
end if
    [rankscratch12]
    a = a + 1
    next pt

    gosub [resort1]


' ml rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,16) > holder(y,16) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,52) = 1
'       case 2
'        holder(x,52) = 2
'       case 3
'        holder(x,52) = 3
'       case 4
'        holder(x,52) = 4
'       case 5
'        holder(x,52) = 5
'        case 6
'        holder(x,52) = 6
'        case 7
'        holder(x,52) = 7
'         case 8
'        holder(x,52) = 8
'       case 9
'        holder(x,52) = 9
'       case 10
'        holder(x,52) = 10
'       case 11
'        holder(x,52) = 11
'       case 12
'        holder(x,52) = 12
'        case 13
'        holder(x,52) = 13
'        case 14
'        holder(x,52) = 14
'        case 15
'        holder(x,52) = 15
'        case 16
'        holder(x,52) = 16
'        case 17
'        holder(x,52) = 17
'        case 18
'        holder(x,52) = 18
'        case 19
'        holder(x,52) = 19
'        case 20
'        holder(x,52) = 20
'        case 21
'        holder(x,52) = 21
'        case 22
'        holder(x,52) = 22
'        case ELSE
'        holder(x,52) = 99
'    end select

'        next x

a = 0
 for pt = 0 to numb-1  '   ml rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,16)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch13]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch13]
else

    holder(srt(a,0),52) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch13]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),52) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),52) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then  ' MD added
    holder(srt(a,0),52) = 0
    end if
end if
    [rankscratch13]
    a = a + 1
    next pt

    gosub [resort1]


' S3 rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,19) < holder(y,19) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,53) = 1
'       case 2
'        holder(x,53) = 2
'       case 3
'        holder(x,53) = 3
'       case 4
'        holder(x,53) = 4
'       case 5
'        holder(x,53) = 5
'        case 6
'        holder(x,53) = 6
'        case 7
'        holder(x,53) = 7
'         case 8
'        holder(x,53) = 8
'       case 9
'        holder(x,53) = 9
'       case 10
'        holder(x,53) = 10
'       case 11
'        holder(x,53) = 11
'       case 12
'        holder(x,53) = 12
'        case 13
'        holder(x,53) = 13
'        case 14
'        holder(x,53) = 14
'        case 15
'        holder(x,53) = 15
'        case 16
'        holder(x,53) = 16
'        case 17
'        holder(x,53) = 17
'        case 18
'        holder(x,53) = 18
'        case 19
'        holder(x,53) = 19
'        case 20
'        holder(x,53) = 20
'        case 21
'        holder(x,53) = 21
'        case 22
'        holder(x,53) = 22
'        case ELSE
'        holder(x,53) = 99
'    end select

'        next x

a = 0
 for pt = 0 to numb-1  '   s3 rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,19)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch14]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch14]
else

    holder(srt(a,0),53) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch14]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),53) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),53) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then  ' MD added
    holder(srt(a,0),53) = 0
    end if
end if
    [rankscratch14]
    a = a + 1
    next pt

    gosub [resort1]

' S2 rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,20) < holder(y,20) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,54) = 1
'       case 2
'        holder(x,54) = 2
'       case 3
'        holder(x,54) = 3
'       case 4
'        holder(x,54) = 4
'       case 5
'        holder(x,54) = 5
'        case 6
'        holder(x,54) = 6
'        case 7
'        holder(x,54) = 7
'         case 8
'        holder(x,54) = 8
'       case 9
'        holder(x,54) = 9
'       case 10
'        holder(x,54) = 10
'       case 11
'        holder(x,54) = 11
'       case 12
'        holder(x,54) = 12
'        case 13
'        holder(x,54) = 13
'        case 14
'        holder(x,54) = 14
'        case 15
'        holder(x,54) = 15
'        case 16
'        holder(x,54) = 16
'        case 17
'        holder(x,54) = 17
'        case 18
'        holder(x,54) = 18
'        case 19
'        holder(x,54) = 19
'        case 20
'        holder(x,54) = 20
'        case 21
'        holder(x,54) = 21
'        case 22
'        holder(x,54) = 22
'        case ELSE
'        holder(x,54) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   s2 rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,20)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch15]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch15]
else

    holder(srt(a,0),54) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch15]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),54) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),54) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then  ' MD added
    holder(srt(a,0),54) = 0
    end if
end if
    [rankscratch15]
    a = a + 1
    next pt

    gosub [resort1]

'   s1 rank

' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,21) < holder(y,21) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,55) = 1
'       case 2
'        holder(x,55) = 2
'       case 3
'        holder(x,55) = 3
'       case 4
'        holder(x,55) = 4
'       case 5
'        holder(x,55) = 5
'        case 6
'        holder(x,55) = 6
'        case 7
'        holder(x,55) = 7
'         case 8
'        holder(x,55) = 8
'       case 9
'        holder(x,55) = 9
'       case 10
'        holder(x,55) = 10
'       case 11
'        holder(x,55) = 11
'       case 12
'        holder(x,55) = 12
'        case 13
'        holder(x,55) = 13
'        case 14
'        holder(x,55) = 14
'        case 15
'        holder(x,55) = 15
'        case 16
'        holder(x,55) = 16
'        case 17
'        holder(x,55) = 17
'        case 18
'        holder(x,55) = 18
'        case 19
'        holder(x,55) = 19
'        case 20
'        holder(x,55) = 20
'        case 21
'        holder(x,55) = 21
'        case 22
'        holder(x,55) = 22
'        case ELSE
'        holder(x,55) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   s1 rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,21)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch16]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch16]
else

    holder(srt(a,0),55) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch16]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),55) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),55) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then  ' MD added
    holder(srt(a,0),55) = 0
    end if
end if
    [rankscratch16]
    a = a + 1
    next pt

    gosub [resort1]


'  cs rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,32) < holder(y,32) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,56) = 1
'       case 2
'        holder(x,56) = 2
'       case 3
'        holder(x,56) = 3
'       case 4
'        holder(x,56) = 4
'       case 5
'        holder(x,56) = 5
'        case 6
'        holder(x,56) = 6
'        case 7
'        holder(x,56) = 7
'         case 8
'        holder(x,56) = 8
'       case 9
'        holder(x,56) = 9
'       case 10
'        holder(x,56) = 10
'       case 11
'        holder(x,56) = 11
'       case 12
'        holder(x,56) = 12
'        case 13
'        holder(x,56) = 13
'        case 14
'        holder(x,56) = 14
'        case 15
'        holder(x,56) = 15
'        case 16
'        holder(x,56) = 16
'        case 17
'        holder(x,56) = 17
'        case 18
'        holder(x,56) = 18
'        case 19
'        holder(x,56) = 19
'        case 20
'        holder(x,56) = 20
'        case 21
'        holder(x,56) = 21
'        case 22
'        holder(x,56) = 22
'        case ELSE
'        holder(x,56) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   cs rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,32)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch17]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch17]
else

    holder(srt(a,0),56) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch17]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),56) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0  ' HH added
    end if
    holder(srt(a,0),56) = rank+1
    rank = rank + 1
    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then  ' MD added
    holder(srt(a,0),56) = 0
    end if
end if
    [rankscratch17]
    a = a + 1
    next pt

    gosub [resort1]


'  CC rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,24) < holder(y,24) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,57) = 1
'       case 2
'        holder(x,57) = 2
'       case 3
'        holder(x,57) = 3
'       case 4
'        holder(x,57) = 4
'       case 5
'        holder(x,57) = 5
'        case 6
'        holder(x,57) = 6
'        case 7
'        holder(x,57) = 7
'         case 8
'        holder(x,57) = 8
'       case 9
'        holder(x,57) = 9
'       case 10
'        holder(x,57) = 10
'       case 11
'        holder(x,57) = 11
'       case 12
'        holder(x,57) = 12
'        case 13
'        holder(x,57) = 13
'        case 14
'        holder(x,57) = 14
'        case 15
'        holder(x,57) = 15
'        case 16
'        holder(x,57) = 16
'        case 17
'        holder(x,57) = 17
'        case 18
'        holder(x,57) = 18
'        case 19
'        holder(x,57) = 19
'        case 20
'        holder(x,57) = 20
'        case 21
'        holder(x,57) = 21
'        case 22
'        holder(x,57) = 22
'        case ELSE
'        holder(x,57) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   CC rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,24)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch18]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch18]
else

    holder(srt(a,0),57) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch18]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),57) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0
    end if
    holder(srt(a,0),57) = rank+1

    rank = rank + 1

    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then
    holder(srt(a,0),57) = 0
    end if
end if
    [rankscratch18]
    a = a + 1
    next pt

    gosub [resort1]

'  P-S rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,25) < holder(y,25) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,58) = 1
'       case 2
'        holder(x,58) = 2
'       case 3
'        holder(x,58) = 3
'       case 4
'        holder(x,58) = 4
'       case 5
'        holder(x,58) = 5
'        case 6
'        holder(x,58) = 6
'        case 7
'        holder(x,58) = 7
'         case 8
'        holder(x,58) = 8
'       case 9
'        holder(x,58) = 9
'       case 10
'        holder(x,58) = 10
'       case 11
'        holder(x,58) = 11
'       case 12
'        holder(x,58) = 12
'        case 13
'        holder(x,58) = 13
'        case 14
'        holder(x,58) = 14
'        case 15
'        holder(x,58) = 15
'        case 16
'        holder(x,58) = 16
'        case 17
'        holder(x,58) = 17
'        case 18
'        holder(x,58) = 18
'        case 19
'        holder(x,58) = 19
'        case 20
'        holder(x,58) = 20
'        case 21
'        holder(x,58) = 21
'        case 22
'        holder(x,58) = 22
'       case ELSE
'        holder(x,58) = 99
'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   p-s rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,25)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch19]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch19]
else

    holder(srt(a,0),58) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch19]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),58) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0
    end if
    holder(srt(a,0),58) = rank+1

    rank = rank + 1

    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then
    holder(srt(a,0),58) = 0
    end if
end if
    [rankscratch19]
    a = a + 1
    next pt

    gosub [resort1]



'  Pwr rank


' for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb

'if  holder(x,26) < holder(y,26) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'        Select Case  poscount
'       case 1
'        holder(x,75) = 1
'       case 2
'        holder(x,75) = 2
'       case 3
'        holder(x,75) = 3
'       case 4
'        holder(x,75) = 4
'       case 5
'        holder(x,75) = 5
'        case 6
'        holder(x,75) = 6
'        case 7
'        holder(x,75) = 7
'         case 8
'        holder(x,75) = 8
'       case 9
'        holder(x,75) = 9
'       case 10
'        holder(x,75) = 10
'       case 11
'        holder(x,75) = 11
'       case 12
'        holder(x,75) = 12
'        case 13
'        holder(x,75) = 13
'        case 14
'        holder(x,75) = 14
'        case 15
'        holder(x,75) = 15
'        case 16
'        holder(x,75) = 16
'        case 17
'        holder(x,75) = 17
'        case 18
'        holder(x,75) = 18
'        case 19
'        holder(x,75) = 19
'        case 20
'        holder(x,75) = 20
'        case 21
'        holder(x,75) = 21
'        case 22
'        holder(x,75) = 22
'        case ELSE
'        holder(x,75) = 99
'    end select

'        next x

a = 0
 for pt = 0 to numb-1  '   pwr rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,26)
    next pt
    sort srt(),numb-1,0,1

   [toprankscratch20]
match = 0 'HH added
if names(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch20]
else

    holder(srt(a,0),75) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 then
   goto [rankscratch20]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),75) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0
    end if
    holder(srt(a,0),75) = rank+1

    rank = rank + 1

    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then
    holder(srt(a,0),75) = 0
    end if
end if
    [rankscratch20]
    a = a + 1
    next pt

    gosub [resort1]


'        for x =  0 to numb-1
'        poscount = 0
'        y = 0
'     while y <  numb
'if  holder(x,2) < holder(y,2) and names(srt(x,0)) <> 1 then
'poscount = poscount + 1
'end if
' y = y + 1
' Wend
'poscount = poscount + 1

'       Select Case  poscount
'       case 1
'        holder(x,76) = 1
'       case 2
'        holder(x,76) = 2
'       case 3
'        holder(x,76) = 3
'       case 4
'        holder(x,76) = 4


'    end select

'        next x


a = 0
 for pt = 0 to numb-1  '   last race rank
            srt(pt,0) =  pt
        srt(pt,1) = holder(pt,2)
    next pt
    sort srt(),0,numb-1,1

   [toprankscratch21]
match = 0 'HH added
if names(srt(a,0)) = 1 or firstimer(srt(a,0)) = 1 then
a = a+1
goto [toprankscratch21]
else

    holder(srt(a,0),76) = 1
    rawnumb =  srt(a,1)
    rank = 1
    a = a + 1
end if
   for pt = 1 to numb-1
   if names(srt(a,0)) = 1 or firstimer(srt(a,0)) = 1 then
   goto [rankscratch21]
   else
    if srt(a,1) = rawnumb then
    holder(srt(a,0),76) = rank
     match = match + 1 'HH added
    else
    'added by HH
    if match >0 then
       rank = rank + match:match = 0
    end if
    holder(srt(a,0),76) = rank+1

    rank = rank + 1

    rawnumb =  srt(a,1)
    end if
    if firstimer(srt(a,0)) = 1 then
    holder(srt(a,0),76) = 0
    end if
end if
    [rankscratch21]
    a = a + 1
    next pt

    gosub [resort1]








    y = 210
    print #top.track1, "cls"


    sorted2 = 1

     print #top.track1,"color black; backcolor buttonface"
    GETTRIM #horse1, marker
    racenumber(A) = racenbr
    todaysdistance(A) = trk1todaysdistance
    surf$(A) = surf$
    cond$(A) = cond$
    cond2$(A) = cond22$
    RaceClassification$(A) = RaceClassification$
    Track$(A) = Track$
    racemonth(A) = racemonth
    racedate(A) = racedate
    raceyr(A) = raceyr
    todayssurface$(A) = trk1surf2$ 'todayssurface$
    hurdles1$(A) = trk1hurdles$
    'firster1$(A) = firster$

setdist = todaysdistance(A)
setsurf$ = todayssurface$(A)

    goto [Rankreprint]
    wait

wait

[Rankreprint]
changeA = 0 'reset change analyst switch
     print #top.track1, "down;fill buttonface; flush"
    print #top.track1, "color  black;backcolor buttonface"
    print #top.track1, "font arial 12 bold"
    'GETTRIM #race1, racenum
    print #top.track1, "place 12 22"
    print #top.track1, "\";Track1$;"  "; trk1currentmonth;"/"; trk1currentday;"/"; trk1currentyear;"                                                                                                     Form Adjusted Speed Totals"
    print #top.track1, "color DarkBlue"
    print #top.track1, "place 12 42"
    print #top.track1, "\Race #";" ";trk1Racenumber;" ";trk1posttime2$;"  ";trk1distance$;"  ";trk1surf$;"  ";trk1statebred$;trk1RaceClassification$;"  ";hurdles1$(A);"  ";"Purse";"  $";trk1Purse;"  ";trk1cond$;" ";trk1cond22$;"  ";trk1cond33$
    print #top.track1, "place 12 62"
    print #top.track1, "\";trk1wage$;trk1wage2$
    print #top.track1, "place 440 84 "; y
    print #top.track1, "\(Double-click in any column with numbers to sort)";"                                                             FTS = FIRSTER"



     print #top.track1, "size 2"
    print #top.track1, "line 01 94 1190 94"
    'print #top.track1, "size 2"
    'print #top.track1, "line 55 120  55 800"
    print #top.track1, "place 8 132"
    print #top.track1, "\Pr#";
    print #top.track1, "place 44 132"
    print #top.track1, "\Horse Name";
    print #top.track1, "place 44 112"
    print #top.track1, "font arial 12 bold"
    print #top.track1, "\Points assigned ==>";
    print #top.track1, "font arial 10 bold"

    print #top.track1, "place 212 112"
    print #top.track1, "\";DAW1 ' days away

    print #top.track1, "place 246 112"
    print #top.track1, "\";CL1 ' cls

    print #top.track1, "place 282 112"
    print #top.track1, "\";DS1 ' ds

    print #top.track1, "place 318 112"
    print #top.track1, "\";EP1 ' ep

    print #top.track1, "place 392 112"
    print #top.track1, "\";LP1 ' lp

    print #top.track1, "place 462 112"
    print #top.track1, "\";FM1 ' fm

    print #top.track1, "place 498 112"
    print #top.track1, "\";PC1 ' pc

    print #top.track1, "place 532 112"
    print #top.track1, "\";AVP1 ' aw

    print #top.track1, "place 572 112"
    print #top.track1, "\";TF1 ' tf

    print #top.track1, "place 608 112"
    print #top.track1, "\";MY1 ' my

    print #top.track1, "place 644 112"
    print #top.track1, "\";DT1 ' dt

    print #top.track1, "place 680 112"
    print #top.track1, "\";Fast1 ' fast

    print #top.track1, "place 716 112"
    print #top.track1, "\";TR1 ' tr

    print #top.track1, "place 752 112"
    print #top.track1, "\"; JK1 ' jk

    print #top.track1, "place 788 112"
    print #top.track1, "\"; S31 's3

    print #top.track1, "place 822 112"
    print #top.track1, "\"; S21 ' s2

    print #top.track1, "place 858 112"
    print #top.track1, "\"; S11 ' s1

    print #top.track1, "place 896 112"
    print #top.track1, "\"; CC1 ' cc

    print #top.track1, "place 930 112"
    print #top.track1, "\"; PS1 ' ps

    print #top.track1, "place 968 112"
    print #top.track1, "\";PWR1 ' per

    print #top.track1, "place 1004 112"
    print #top.track1, "\";CS1 ' carroll speed

    print #top.track1, "place 1038 112"
    print #top.track1, "\"; ML1 ' ml


    print #top.track1, "color  black"
    print #top.track1, "size 2"
    print #top.track1, "line 01 138 1190 138"
    print #top.track1, "color  black"
   ' print #top.track1, "size 2"
   ' print #top.track1, "line 220 120  220 800"

    '----------- These headings added to replace buttons for sort
    print #top.track1, "font arial 10 bold"
    'print #top.track1, "color  blue"
    print #top.track1, "place 212 132"
    print #top.track1, "\LR";
    print #top.track1, "place 248 132"
    print #top.track1, "\CL";
    print #top.track1, "place 284 132"
    print #top.track1, "\DS";
    print #top.track1, "place 320 132"
    print #top.track1, "\EP";
    print #top.track1, "place 358 112"
    print #top.track1, "\RT";
    print #top.track1, "place 350 132"
    print #top.track1, "\SPTS";
    print #top.track1, "place 394 132"
    print #top.track1, "\LP";
    print #top.track1, "place 428 132"
    print #top.track1, "\RS";
    print #top.track1, "place 464 132"
    print #top.track1, "\FM";
    print #top.track1, "place 500 132"
    print #top.track1, "\PC";
    print #top.track1, "place 532 132"
    print #top.track1, "\AVP";
    print #top.track1, "place 574 132"
    print #top.track1, "\TF";
    print #top.track1, "place 608 132"
    print #top.track1, "\MY";
    print #top.track1, "place 646 132"
    print #top.track1, "\DT";
    print #top.track1, "place 673 132"
    print #top.track1, "\FAST";
    print #top.track1, "place 716 132"
    print #top.track1, "\TR";
    print #top.track1, "place 752 132"
    print #top.track1, "\JK";
    print #top.track1, "place 790 132"
    print #top.track1, "\S3";
    print #top.track1, "place 824 132"
    print #top.track1, "\S2";
    print #top.track1, "place 860 132"
    print #top.track1, "\S1";
    'print #top.track1, "place 1030 170"
    'print #top.track1, "\RK";
    'print #top.track1, "place 1070 170"
    'print #top.track1, "\WK";
    print #top.track1, "place 894 132"
    print #top.track1, "\C-C";
    print #top.track1, "place 930 132"
    print #top.track1, "\P-S";
    print #top.track1, "place 963 132"
    print #top.track1, "\PWR";
    print #top.track1, "place 1004 132"
    print #top.track1, "\CS";
    print #top.track1, "place 1040 132"
    print #top.track1, "\ML";
    print #top.track1, "place 1072 112"
    print #top.track1, "\FAIR";
    print #top.track1, "place 1070 132"
    print #top.track1, "\ODDS";
    print #top.track1, "place 1112 112"
    print #top.track1, "\TOT";
    print #top.track1, "place 1112 132"
    print #top.track1, "\PTS";

    print #top.track1, "font arial 9 "
    print #top.track1, "color  black"

  for t = 0 to numb-1

     if names(srt(t,0)) = 1 then
            goto [ranklooped]
        else
print #top.track1, "place 12  "; y-54
print #top.track1, "\"; TracSaddle$(srt(t,0))
test = (holder(t,0))
x=42:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 45  "; y-54
print #top.track1, "\"; nameofhorse$(srt(t,0))
x=204:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 210 "; y-54
print #top.track1, "\"; using("###", holder(srt(t,0),76)) ' days away
x=240:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 246 "; y-54

if Rank >= (holder(srt(t,0),40)) then
print #top.track1, "\"; using("###", holder(srt(t,0),40)) ' class
end if
x=276:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 282 "; y-54
if Rank >= (holder(srt(t,0),41)) then
print #top.track1, "\"; using("###", holder(srt(t,0),41)) ' dist speed
end if
x=312:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 318 "; y-54
if Rank >= (holder(srt(t,0),42)) then
print #top.track1, "\"; using("###", holder(srt(t,0),42)) ' early speed
end if
x=348:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 352 "; y-54
'print #top.track1, "color  red"
print #top.track1, "\"; Tracstyles$(srt(t,0))
x=386:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
'   print #top.track1, "color  black"
print #top.track1, "place 392 "; y-54
if Rank >= (holder(srt(t,0),43)) then
print #top.track1, "\"; using("###", holder(srt(t,0),43)) ' late pace
end if
x=420:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 432 "; y-54
print #top.track1, "\"; lmh$(srt(t,0))
x=456:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 462 "; y-54
if Rank >= (holder(srt(t,0),44)) then
print #top.track1, "\"; using("###", holder(srt(t,0),44)) ' form
end if
x=492:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 498 "; y-54
if Rank >= (holder(srt(t,0),45)) then
print #top.track1, "\"; using("###", holder(srt(t,0),45)) ' pcr
end if
x=528:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 534 "; y-54
if Rank >= (holder(srt(t,0),59)) then
print #top.track1, "\"; using("###", holder(srt(t,0),59)) ' avg purse
end if
x=564:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 570 "; y-54
if Rank >= (holder(srt(t,0),46)) then
print #top.track1, "\"; using("###", holder(srt(t,0),46)) ' turf
end if
x=600:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 606 "; y-54
if Rank >= (holder(srt(t,0),47)) then
print #top.track1, "\"; using("###", holder(srt(t,0),47)) ' mud
end if
x=636:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 642 "; y-54
if Rank >= (holder(srt(t,0),48)) then
print #top.track1, "\"; using("###", holder(srt(t,0),48)) ' dirt
end if
x=672:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "font arial 9 bold"
print #top.track1, "color blue"
print #top.track1, "place 678 "; y-54
if Rank >= (holder(srt(t,0),49)) then
print #top.track1, "\"; using("###", holder(srt(t,0),49)) ' fast
end if
print #top.track1, "font arial 9 "
print #top.track1, "color  black"
x=708:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 714 "; y-54
if Rank >= (holder(srt(t,0),50)) then
print #top.track1, "\"; using("###", holder(srt(t,0),50)) ' trnwpct
end if
x=744:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 750 "; y-54
if Rank >= (holder(srt(t,0),51)) then
print #top.track1, "\"; using("###", holder(srt(t,0),51)) ' jkwpct
end if
x=780:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 786 "; y-54
gosub [getcolor2]
gosub [getdist2]
if Rank >= (holder(srt(t,0),53)) then
print #top.track1, "\"; using("###", holder(srt(t,0),53)) ' 3rsr
end if
print #top.track1, "font arial 9"
print #top.track1, "color  black"
x=816:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 822 "; y-54
gosub [getcolor1]
gosub [getdist1]
if Rank >= (holder(srt(t,0),54)) then
print #top.track1, "\"; using("###", holder(srt(t,0),54)) ' 2rsr
end if
print #top.track1, "font arial 9"
print #top.track1, "color  black"
x=852:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 858 "; y-54
gosub [getcolor]
gosub [getdist]
if Rank >= (holder(srt(t,0),55)) then
print #top.track1, "\"; using("###", holder(srt(t,0),55)) ' 1rsr
end if
print #top.track1, "font arial 9 "
print #top.track1, "color  black"
x=888:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 894 "; y-54
'change display to eliminate WK and RK score;  replace with C-C and P-S
if names(srt(t,0)) = 1 then holder(srt(t,0),57) = 0
print #top.track1, "\"; using("###",  holder(srt(t,0),57)) ' c-c
'end if
x=924:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 930 "; y-54
if Rank >= (holder(srt(t,0),58)) then
print #top.track1, "\"; using("###", holder(srt(t,0),58)) ' p-s
end if
x=960:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 966 "; y-54
if Rank >= (holder(srt(t,0),59)) then
print #top.track1, "\"; using("###", holder(srt(t,0),75)) ' pwr
end if
x=996:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 1000 "; y-54
if Rank >= (holder(srt(t,0),56)) then
print #top.track1, "\"; using("####", holder(srt(t,0),56)) 'carroll speed
end if
print #top.track1, "down"
x=1032:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 1034 "; y-54
print #top.track1, "\"; hml$(srt(t,0)) 'using("###.#", holder(srt(t,0),16)) ' ml

x=1068:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "place 1074 "; y-54
print #top.track1, "\"; allfairodds$(srt(t,0))
'print #top.track1, "\"; using("###.####", holder(srt(t,0),18)) ' fair odds
print #top.track1, "font arial 9"
print #top.track1, "color  black"
x=1108:z=94
'#main, "place ";x;" ";y;  line down
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-48;" ";x;" ";z
print #top.track1, "font arial 9 bold"
print #top.track1, "color  blue"
print #top.track1, "place 1110 "; y-54
print #top.track1, "\"; using("####", holder(srt(t,0),17)) ' point total
print #top.track1, "font arial 12 bold"
print #top.track1, "color  red"
print #top.track1, "place 1145 "; y-54
'print #top.track1, "\"; using("###", holder(srt(t,0),31))
print #top.track1, "\"; fts$(srt(t,0))
print #top.track1, "font arial 9 "
print #top.track1, "color  black"

end if






x=1:b=1190
'#main, "place ";x;" ";y;
print #top.track1, "down"
print #top.track1, "line ";x;" ";y-46;" ";b;" ";y-46;

        lasty = y ' the last y position for MouseY double-click test

        y = y + 25
[ranklooped]
    next t



print #top.track1, "flush"

changeA = 0 'reset analyst flag to 0



    wait

'PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP


[getpedigree]

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


'RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR

[resort]   're-sort holder array for next rank sort.
for pt = 0 to numb-1 '
        srt(pt,1) = holder(pt,0)
    next pt
    sort srt(),numb-1,0,1


    Return

'RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS

'Form created with the help of Freeform 3 v07-31-2015
'Generated on May 29, 2016 at 16:57:54


[setup.lowrank.Window]

    '-----Begin code for #lowrank

    nomainwin
    WindowWidth = 230
    WindowHeight = 250
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

    button #lowrank.button1,"1",[button1Click], UL,   5,   5,  40,  40
    button #lowrank.button2,"2",[button2Click], UL,  45,   5,  40,  40
    button #lowrank.button3,"3",[button3Click], UL,  85,   5,  40,  40
    button #lowrank.button4,"4",[button4Click], UL, 125,   5,  40,  40
    button #lowrank.button5,"5",[button5Click], UL, 165,   5,  40,  40
    button #lowrank.button6,"6",[button6Click], UL,   5,  45,  40,  40
    button #lowrank.button7,"7",[button7Click], UL,  45,  45,  40,  40
    button #lowrank.button8,"8",[button8Click], UL,  85,  45,  40,  40
    button #lowrank.button9,"9",[button9Click], UL, 125,  45,  40,  40
    button #lowrank.button10,"10",[button10Click], UL, 165,  45,  40,  40
    button #lowrank.button11,"11",[button11Click], UL,   5,  85,  40,  40
    button #lowrank.button12,"12",[button12Click], UL,  45,  85,  40,  40
    button #lowrank.button13,"13",[button13Click], UL,  85,  85,  40,  40
    button #lowrank.button14,"14",[button14Click], UL, 125,  85,  40,  40
    button #lowrank.button15,"15",[button15Click], UL, 165,  85,  40,  40
    button #lowrank.button16,"16",[button16Click], UL,   5, 125,  40,  40
    button #lowrank.button17,"17",[button17Click], UL,  45, 125,  40,  40
    button #lowrank.button18,"18",[button18Click], UL,  85, 125,  40,  40
    button #lowrank.button19,"19",[button19Click], UL, 125, 125,  40,  40
    button #lowrank.button20,"20",[button20Click], UL, 165, 125,  40,  40
    button #lowrank.button21,"21",[button21Click], UL, 5, 165,  40,  40
    button #lowrank.button22,"22",[button22Click], UL, 45, 165,  40,  40


    '-----End GUI objects code

    open "Rank Selector" for window as #lowrank
    print #lowrank, "font ms_sans_serif 10"
    print #lowrank, "trapclose [quit.lowrank]"


[lowrank.inputLoop]   'wait here for input event
    wait



[button1Click]   'Perform action for the button named 'button1'

   Rank = 1
   Goto [quit.lowrank]
    wait


[button2Click]   'Perform action for the button named 'button2'

    Rank = 2
    Goto [quit.lowrank]
    wait


[button3Click]   'Perform action for the button named 'button3'

   Rank = 3
Goto [quit.lowrank]
    wait


[button4Click]   'Perform action for the button named 'button4'

    Rank = 4
    Goto [quit.lowrank]
    wait


[button5Click]   'Perform action for the button named 'button5'

    Rank = 5
Goto [quit.lowrank]
    wait


[button6Click]   'Perform action for the button named 'button6'

    Rank = 6
Goto [quit.lowrank]
    wait


[button7Click]   'Perform action for the button named 'button7'

    Rank = 7
Goto [quit.lowrank]
    wait


[button8Click]   'Perform action for the button named 'button8'

    Rank = 8
Goto [quit.lowrank]
    wait


[button9Click]   'Perform action for the button named 'button9'

    Rank = 9
Goto [quit.lowrank]
    wait


[button10Click]   'Perform action for the button named 'button10'

   Rank = 10
Goto [quit.lowrank]
    wait


[button11Click]   'Perform action for the button named 'button11'

    Rank = 11
Goto [quit.lowrank]
    wait


[button12Click]   'Perform action for the button named 'button12'

    Rank =12
Goto [quit.lowrank]
    wait


[button13Click]   'Perform action for the button named 'button13'

    Rank =13
    Goto [quit.lowrank]
    wait


[button14Click]   'Perform action for the button named 'button14'

   Rank =14
Goto [quit.lowrank]
    wait


[button15Click]   'Perform action for the button named 'button15'

    Rank =15
Goto [quit.lowrank]
    wait


[button16Click]   'Perform action for the button named 'button16'

   Rank =16
Goto [quit.lowrank]
    wait


[button17Click]   'Perform action for the button named 'button17'

    Rank =17
Goto [quit.lowrank]
    wait


[button18Click]   'Perform action for the button named 'button18'

    Rank =18
Goto [quit.lowrank]
    wait


[button19Click]   'Perform action for the button named 'button19'

    Rank =19
Goto [quit.lowrank]
    wait


[button20Click]   'Perform action for the button named 'button20'

    Rank =20
Goto [quit.lowrank]
    wait


[button21Click]   'Perform action for the button named 'button21'

    Rank =21
Goto [quit.lowrank]
    wait


[button22Click]   'Perform action for the button named 'button22'

    Rank =22
Goto [quit.lowrank]
    wait

[quit.lowrank] 'End the program
    close #lowrank
Return


'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA

[AnalystChange]

changeA = 1 ' change analyst flag to allow branch off.


for z = 0 to numb-1
holder(z,17) = 0
holder(z,18) = 0
next z


print #top, "place 625"
print #top, "backcolor  green"
print #top, "color  green"
print #top, "circlefilled 7"


goto [top.inputLoop]



wait

'____________________________________

[consensuswindow]

'Form created with the help of Freeform 3 v07-31-2015
'Generated on Jul 07, 2017 at 08:52:44




    '-----Begin code for #consense

    nomainwin
    WindowWidth = 900
    WindowHeight = 600
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

    button #consense.consensus,"Close Window",[closewindow], UL, 370, 532, 125,  25
    button #consense.consensus,"Calculate",[calcconsensus], UL, 370, 25, 125,  25
    '-----End GUI objects code

    open "Consensus" for graphics_nsb_nf as #consense
    print #consense, "down;fill buttonface; flush"
    print #consense, "color black; backcolor buttonface"
    print #consense, "font ms_sans_serif 10"
    print #consense.consensus, "!font ms_sans_serif 12 bold"
    print #consense, "trapclose [quit.consense]"


print #top.consensus, "!hide"

    fourthconsensus = 0
    consensusButton = 2
    y = 50
    for p = 0 to 2
    print #consense, "place 25  "; y
     print #consense, "\"; consensus$(p,1)+"."
   print #consense, "place 40  "; y
   print #consense, "\"; consensus$(p,0)

    print #consense, "place 200  "; y
   print #consense, "\"; consensus$(p,2)
   y = y+25
     next

ConsensusFlag = 1


[consense.inputLoop]   'wait here for input event
    wait



[closewindow]   'Perform action for the button named 'consensus'
consensusButton = 0 ' reset consensus button
ConsensusFlag = 0   ' reset consensus flag
gosub [cleanconsensustotal]
    goto [quit.consense]

    wait

[quit.consense] 'End the program
    close #consense
print #top.consensus, "!show"
    goto [top.inputLoop]




'[changeanalystcurrentrace][changeanalystcurrentrace][changeanalystcurrentrace][changeanalystcurrentrace][changeanalystcurrentrace]
    [sortconsensus]

     for pts = 0 to numb-1
        srt1(pts,0) =  pts
        srt1(pts,1) = holder(pts,17)
        srt1(pts,2) = holder(pts,18)
        srt1(pts,3) = holder(pts,16)
        srt1(pts,4) = 0

            next pts
    sort srt1(),numb-1,0,1
connumrank = 3 'initialize rank number for assigning points based on rank
    For k = 0 to 2

    consensus$(k,0) = nameofhorse$(srt1(k,0))
    consensus$(k,1) = TracSaddle$(srt1(k,0))
    consensus$(k,2) = str$(srt1(k,3))
    consensustotal((srt1(k,0))) = consensustotal((srt1(k,0))) + connumrank
    connumrank = connumrank-1
    next k

    Return


'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
'second consensus print

[secondconsensus]

 y = 50

    for p = 0 to 2
    print #consense, "place 650  "; y
     print #consense, "\"; consensus$(p,1)+"."
   print #consense, "place 675  "; y
   print #consense, "\"; consensus$(p,0)
    print #consense, "place 850  "; y
   print #consense, "\"; consensus$(p,2)

   y = y+25
   next
    consensusButton = 3
   goto [consense.inputLoop]



    Return

[thirdconsensus]

 y = 300
    for p = 0 to 2
    print #consense, "place 25  "; y
    print #consense, "\"; consensus$(p,1)+"."
   print #consense, "place 40  "; y
   print #consense, "\"; consensus$(p,0)
   print #consense, "place 200  "; y
   print #consense, "\"; consensus$(p,2)
   y = y+25
     next

consensusButton = 4

goto [consense.inputLoop]


[fourthconsensus]


 y = 300
    for p = 0 to 2
    print #consense, "place 650  "; y
     print #consense, "\"; consensus$(p,1)+"."
   print #consense, "place 675  "; y
   print #consense, "\"; consensus$(p,0)
   print #consense, "place 850  "; y
   print #consense, "\"; consensus$(p,2)
   y = y+25
     next
     fourthconsensus = 4
consensusButton = 0
goto [consense.inputLoop]


'calculatecalculatecalculatecalculatecalculatecalculatecalculatecalculate


[calcconsensus]

For B = 0 to numb-1
srt2(B, 0) =B
srt2(B,1) = consensustotal(srt(B,0))
next B

sort srt2(), numb-1,0,1

#consense "font ms_sans_serif 12 Bold"

y = 100
    for p = 0 to numb-1
    if srt2(p, 1) < 1 then
    goto [skipconsensus]
    end if
    print #consense, "place 300  "; y
     print #consense, "\"; TracSaddle$(srt2(p,0))+"."
   print #consense, "place 325  "; y
   print #consense, "\"; nameofhorse$(srt2(p,0))
   print #consense, "place 550  "; y
   print #consense, "\"; srt2(p,1)
   y = y+25
   [skipconsensus]
     next p


goto [consense.inputLoop]




' [analystsfolders][analystsfolders][analystsfolders][analystsfolders]

[analystsfolders]

'Form created with the help of Freeform 3 v07-31-2015
'Generated on Jul 21, 2017 at 20:33:25




    '-----Begin code for #Analystsfolders

    nomainwin
    WindowWidth = 550
    WindowHeight = 410
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code
    button #Analystsfolders.foldername,"Create Folder",[foldername], UL, 210, 220,  100,  25
    button #Analystsfolders.button1,"Close",[closeanalystwindow], UL, 225, 332,  75,  25
    TextboxColor$ = "white"
    textbox #Analystsfolders.textbox3, 175, 162, 185,  25

    '-----End GUI objects code

    open "Create Analyst's Folders" for graphics_nsb_nf as #Analystsfolders
    print #Analystsfolders, "down;fill buttonface; flush"
    print #Analystsfolders, "color black; backcolor buttonface"
    print #Analystsfolders, "font ms_sans_serif 12 Bold"
    print #Analystsfolders.button1, "!font ms_sans_serif 10 Bold"
    print #Analystsfolders.textbox3, "!font ms_sans_serif 10 Bold"
    print #Analystsfolders, "trapclose [quit.Analystsfolders]"

print #Analystsfolders, "Place 125 130"
print #Analystsfolders, ("\ Type a Name for Analyst Folder")

[Analystsfolders.inputLoop]   'wait here for input event
    wait


[foldername]
print #Analystsfolders.textbox3, "!contents? foldername$"; 'Get folder name typed in by user


print #Analystsfolders, "Place 150 40"
print #Analystsfolders, ("\                                         ")
print #Analystsfolders, "Place 150 50"
print #Analystsfolders, ("\                                         ")
print #Analystsfolders, "Place 150 60"
print #Analystsfolders, ("\                                         ")





Gettrim #analtotalfolder, 1



Analfoldername$ = foldername$ ' hold the folder name just typed by user

if totalfolders < 1 then
Analfoldernumber = 1  'Initialize folder Random acess files
totalfolders = 1
Put #analystfolder, 1
Put #analtotalfolder, 1
ELSE
Analfoldernumber = totalfolders + 1   ' add new folders after original initialized RAF
totalfolders = totalfolders + 1
Put #analystfolder, totalfolders
Put #analtotalfolder, 1
end if

 print #Analystsfolders, "Place 190 60"

 print #Analystsfolders, ("\"); foldername$
 print #Analystsfolders.textbox3, ""


 testhold = 0

wait

[closeanalystwindow]   'Perform action for the button named 'button1'

   goto  [quit.Analystsfolders]'Insert your own code here



[quit.Analystsfolders] 'End the program
    close #Analystsfolders
Goto [#main.Inputloop]



'[initializefolders][initializefolders][initializefolders][initializefolders]

[initializefolders]


Analfoldernumber = 0  'Initialize folder Random acess files
totalfolders = 0
Put #analystfolder, 1
Put #analtotalfolder, 1

Goto [Analystsfolders.inputLoop]




'[selectfolder][selectfolder][selectfolder][selectfolder][selectfolder]

[selectfolder]


    '-----Begin code for #folders

    nomainwin
    WindowWidth = 300
    WindowHeight = 410
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

    ComboboxColor$ = "white"
    combobox #folders.combobox1, folders$(, [folderselect],   40,  37, 200, 100
    button #folders.button1,"Close",[closefolderwindow], UL, 100, 300,  75,  25

    '-----End GUI objects code

    open "Folder Selector" for graphics_nsb_nf as #folders
    print #folders, "down;fill buttonface; flush"
    print #folders, "color black; backcolor buttonface"
    print #folders, "font ms_sans_serif 10"
    print #folders, "trapclose [quit.folders]"

    Gettrim #analtotalfolder, 1

for f = 1 to totalfolders
Gettrim #analystfolder, f

'l$= mid$(Analfoldername$,14,50)

    folders$(f) = Analfoldername$ ' load the combobox with folder's names
    next f

    print #folders.combobox1, "reload"


[folders.inputLoop]   'wait here for input event
    wait



[folderselect]   'Perform action for the combobox named 'combobox1'

  print   #folders.combobox1, "contents? text$"    'processing after user selects an analyst folder to place analyst in.
print #folders.combobox1, "selectionindex? index"
Foldername$ = text$ ' variable to use with top display to match with Folder$ to load new RAF to use in handicapping race
Folder$ = text$
    wait

[quit.folders] 'End the program
    close #folders
    Return ' return to build analyst


[closefolderwindow]
goto [quit.folders]


'[loadRAF][loadRAF][loadRAF][loadRAF][loadRAF][loadRAF][loadRAF]

[loadRAF]

 Folder2$  = Folder$
      Name2$ =  Name$' 1st 100 bytes contains Name$, string
     Class2 = Class
     Distancespeed2 = Distancespeed
     EarlyPace2 = EarlyPace
     LatePace2 = LatePace
     Form2 = Form
     PerformanceClass2 = PerformanceClass
     avgpurse2 = avgpurse
     Turf2 = Primepowerpts
     Mud2 = averagespeedpts
     Dirt2 = Dirt
     Fast2 = Fast
     Trainer2 = Trainer
     Jockey2 = Jockey
     Speed32 = Speed3
     Speed22 = Speed2
     LastSpeed2 = LastSpeed
     CarrollSpeed2 = CarrollSpeed
     Classconsist2 =  Classconsist
     PowerSpeed2 = PowerSpeed
     MitchellPower2 =  MitchellPower
     MornLine2 =  MornLine
     Daysaway2 = Daysaway
     Scale2$ = Scale$


Put #tempraceobject, analystsRAF

analystsRAF = analystsRAF+1



Return 'to top display to check for more analysts


'[Pacewindow][Pacewindow][Pacewindow][Pacewindow][Pacewindow][Pacewindow]

[Pacewindow]


'Form created with the help of Freeform 3 v07-31-2015
'Generated on Aug 31, 2017 at 23:15:19




    '-----Begin code for #Pace

    nomainwin
    WindowWidth = 1100
    WindowHeight = 600
    UpperLeftX=int((DisplayWidth-WindowWidth)/2)
    UpperLeftY=int((DisplayHeight-WindowHeight)/2)


    '-----Begin GUI objects code

    button #Pace.button1,"Close",[closepace], UL, 445, 522,  75,  25

    '-----End GUI objects code

    open "Pace Pressure" for graphics_nsb as #Pace
    print #Pace, "down;fill buttonface; flush"
    print #Pace, "color black; backcolor buttonface"
    print #Pace, "font ms_sans_serif 10 Bold"
    print #Pace.button1, "!font ms_sans_serif 10 Bold"
    print #Pace, "trapclose [quit.Pace]"
print #Pace, "down"
    Y1 = 175
    Y2 = 175
    Y3 = 175
    Y4 = 175
    X1 = 20
    X2 = 260
    X3 = 510
    X4 = 775
    print #Pace, "color Blue"
   print #Pace, "font ms_sans_serif 14 Bold"
  print #Pace, "place  375  50 "
  print #Pace, "\Pace Pressure Map";
  print #Pace, "place  50  100 "
   print #Pace, "color Red"
  print #Pace, "\Speed";
  print #Pace, "color darkred"
  print #Pace, "place  270  100 "
  print #Pace, "\Early-Presser";
  print #Pace, "place  500  100 "
  print #Pace, "color Black"
  print #Pace, "\Late-Sustained";
   print #Pace, "place 800  100 "
  print #Pace, "\Big Closer";
  print #Pace, "font ms_sans_serif 10 Bold"
  print #Pace, "color Black"
   for v = 0 to numb-1
if nameofhorse$(srt(v,0)) = "" then
goto [noname]
ELSE
pacenumber = holder(srt(v,0),69)
gosub [getpacenumber]

print #Pace, "place     "; lenth; "  ";  depth

print #Pace, "\";  holder(srt(v,0),69);"  ";TracSaddle$(srt(v,0)); ".  "; nameofhorse$(srt(v,0))



END if
 [noname]
next v

print #Pace, "flush"

[Pace.inputLoop]   'wait here for input event
    wait



[closepace]   'Perform action for the button named 'button1'

    Goto [quit.Pace] 'Insert your own code here

    wait

[quit.Pace] 'End the program
print #Pace, "discard"
    close #Pace

goto [top.inputLoop]



y = 160



[getpacenumber]

SELECT CASE
  CASE (pacenumber > 0) and (pacenumber < 28)
    lenth = X1
    depth = Y1
    Y1 = Y1+30
  CASE (pacenumber  > 27) and (pacenumber  < 45)
   lenth = X2
    depth = Y2
    Y2 = Y2+30
  CASE (pacenumber > 44) and (pacenumber < 65)
     lenth = X3
    depth = Y3
    Y3 = Y3+30
  CASE (pacenumber  > 64) and (pacenumber < 200)
    lenth = X4
    depth = Y4
    Y4 = Y4+30

  END SELECT

  Return


 'print #top.track1,   "boxfilled  "; totalQuirin; " "; 60
 gosub [cleantemp]
  goto [top.inputLoop]


'[speedpointspercents][speedpointspercents][speedpointspercents][speedpointspercents]
[speedpointspercents]



'[cleantemo][cleantemo][cleantemo][cleantemo][cleantemo][cleantemo]

[cleantemp]
for n = 0 to numb-1
  temp(n)=0
next n

Return

'consensustotal((srt1(k,0)))consensustotal((srt1(k,0)))consensustotal((srt1(k,0)))consensustotal((srt1(k,0)))

[cleanconsensustotal]

for u = 0 to numb-1
consensustotal(u) = 0
   next u

   Return


'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

[selconsensus]   '[addconsensus][addconsensus][addconsensus][addconsensus]
if fourthconsensus = 4 then
notice "Hold On, You Have 4 Already!"
goto [top.inputLoop]
 ELSE

    print  #top.consensusadd, "!hide"
    print #top, "backcolor  blue"
    print #top, "color yellow"
    print #top, "size 3"
    print #top, "line 620 115 635 95"
    print #top, "line 620 115 650 120"
    print #top, "line 620 115 665 102"
     print #top, "place 715 90"

     End if


Goto [trk1races2] ' branch off after user clicks add consensus button

wait


[cleanHolder] ' make sure there are no leftover numbers in holder array.

for f = 0 to 40
       for f2 = 0 to 76

 holder(f,f2) = 0
        next f2
next f



Return



'RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR

[resort1]   're-sort holder array for next rank sort.
for pt = 0 to numb-1 '
        srt(pt,1) = holder(pt,0)
    next pt
    sort srt(),numb-1,0,1


    Return

'RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
