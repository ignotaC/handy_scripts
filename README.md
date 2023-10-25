# Handy Scripts pack
Made for God Glory.  
Hail Supreame God one in Great Trinity.  
Prise Saint Maria, mother of God.  

irc: ##ignota irc.libera.chat

A pack of miscellaneous scripts  
I wrote for my personal use  

None in dependecies means you have the basic set.  
Basci set you need:  
**cmake**, **make**, **cc**, **posix**, **ksh**.  

## INTSALLATION:

### 1) downloading
Before we install, we need to suck this up:  
>`git clone 'https://github.com/ignotaC/handyscripts'`  

### 2) compilation
Run:  
>`sh install.sh`  

This gets you ignota and smallsoft,  
Compiles stuff, moves all scripts to bin dir  

### 3) installation ( binary managment )
You do it by your self, You might not want to  
use some of the software this pack provides.  
Simply copy what ever you want to one of the  
preffered PATH directory which you can see  
after running env command. Since I add  
~/bin to my PATH with .xsession.  
I simply take all by doing:  
>`cp bin/* ~/bin`  

### 4) clean up
This simply removes stuff installation created  
inside the directory of your makefile.  
>'sh clear.sh'

## Program list:

1.  **utilchk** `[ command ]`
  >  

    Script checks if you can run specified command  
    Program expects at least one argument.  
    Dependencies: none  
    Example of using it:  
  >`utilchk optchk` 

2.  **optchk** `[ option arguments ] ... [ option string ]`
  >  

    Script checks if option arguments are   
    part of option string that user passes  
    To define which options are valid.  
    Each option argument must start with '-'  
    Program expects at least one argument.  
    Dependencies: **utilchk**, **sh_getopt**  
    Example of using it:  
  >`optchk -o -bs ojkbsa` 

    This will check if 'o' and 'bs' are part of 'ojkbsa'  
    If not error will be returned.  

3.  **find_list** `[ path ] [ find options ] ...`
  >  

    Script will run find on specified path.  
    The arguments after path are passed to find.  
    On stdin there must appear even ammount of arguments,  
    where first argument is -name or -iname  
    and second argument is file pattern we look for.  
    For example: `*.mp3`  
    Program expects at least one argument - path.  
    Dependencies: none
    Example of using it:  
  >`printf '-name\n*.mp3\n-iname\n*.flac' | find_list . -type f`  

    This will print out found files as if we would run:  
  >`find . -name *.mp3 -type f; find . -iname *.flac -type f`  

4.  **find_namelist** `[ path ] [ find options ] ...`
  >  

    Script will run find on specified path.  
    The arguments after path are passed to find.  
    Program takes arguments for -name option from stdin,  
    Which are file patterns we look for.  
    For example: `*.mp3`  
    Program expects at least one argument - path.  
    Dependencies: none
    Example of using it:  
  >`printf '*.mp3\n*.flac' | find_namelist . -type f`  

    This will print out found files as if we would run:  
  >`find . -name *.mp3 -type f; find . -name *.flac -type f`  

5.  **find_inamelist** `[ path ] [ find options ] ...`
  >  

    Script will run find on specified path.  
    The arguments after path are passed to find.  
    Program takes arguments for -iname option from stdin,  
    Which are file patterns we look for.  
    For example: `*.mp3`  
    Program expects at least one argument - path.  
    Dependencies: none
    Example of using it:  
  >`printf '*.mp3\n*.flac' | find_inamelist . -type f`  

    This will print out found files as if we would run:  
  >`find . -iname *.mp3 -type f; find . -iname *.flac -type f`  


6.  **excel_tocsv** `[ options ] ... [ path ]`
  >  

    Script tries to generate from excel files  
    csv. files. It does not remove excel files,  
    that sucessfully generated to csv.  
    If you pass only path it will allways try to  
    generate csv file from it as if it was excel file.  
    If you pass -R or -d option that causes to work on firectories.  
    Script will only look for files ending with .xlw .xls .xlsx  
    The look up is not case sensetive  
    options:  

    `-d`  
    Perform generation on all excel files in directory  

    `-R`  
    Perform generation on all excel files  
    recursing all directories in directory  

    `-h`  
    Print basic help  

    Program expects at least one argument.  
    Dependencies: **ssconvert**, **optchk**  
    Example of using it:  
  >`excel_tocsv file.xls` 
  >`excel_tocsv -R .` 

7.  **ffmpeg_fullsupformat**
  >  

    Script will output supported format by ffmpeg.  
    Format that can only be encoded or decoded will not be shown.  
    Program does not take arguments.  
    Dependencies: **ffmpeg**  
    Example of using it:  
  >`ffmpeg_fullsupformat`  

