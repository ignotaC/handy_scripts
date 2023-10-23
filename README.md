# Handy Scripts pack
Made for God Glory.  
Hail Supreame God one in Great Trinity.  
Prise Saint Maria, mother of God.  

irc: ##ignota irc.libera.chat

A pack of miscellaneous scripts  
I wrote for my personal use  

None in dependecies means you have the basic set.  
Basci set you need:  
**cmake**, **make**, **cc - c compiler**, **posix**, **ksh**.  

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
    Program expects at least one arguments.  
    Dependencies: none  
    Example of using it:  
  >`utilchk optchk` 

2.  **excel_tocsv** `[ option ] [ path ]`
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

    Program expects at least one arguments.  
    Dependencies: **ssconvert**, **optchk**  
    Example of using it:  
  >`excel_tocsv file.xls` 
  >`excel_tocsv -R .` 

