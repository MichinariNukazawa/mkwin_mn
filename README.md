#mkwin_mn - Makefile compatibility toolkit for Windows environment -


## About
mkwin_mnは、小規模なMakefileを、Windows環境で動作させるための互換用ファイル群です。  
[mkwin_mnについて(ja)](http://michinari.nukazawa.com/mkwin_mn_released.html)  

The mkwin_mn is compatibility toolkit for the minimal Makefile in Windows environment.  

## License
MIT License  

## usage
1. Checkout this repository in your project.  
	`$ git clone https://github.com/MichinariNukazawa/mkwin_mn`  
2. Include mkwin_mn to your Makefile.  
	`include mkwin_mn/mkwin_mn.Makefile`  
	Hint: Use your Makefile `ifeq ($(OS),Windows_NT)`  
3. Rewrite your Makefile.  
	It is necessary to write it as `$(MKDIR_P)` and `$(RM)` in your Makefile.  

Hint: Use `$(wildcard *)` in Makefile feature.  
Nothing to `find` and `ls` in Windows and MinGW.  

For more information is read the example_project/ and wakeup `!cons.bat`!  

## detail
mkwin_mn provides compatible commands `mkdir -p`, `rm -f` in Makefile.  

Windows is not Unix. This is cause of problem.  
GNU Make ecosystem is necessary Unix CLI tools.  
That has not compatibility in Windows environment.  

To Solve this problem, ware made at all of most some build systems.  
Some build systems are exaggerated to use it by a small project.  
(GNU Make alteranates and {{{{the gread Makefile} builder} builder} builder} builders.)  
They are has problems.
 * Additional integration is necessary and is very complication.
 * build configure file is necassary new syntax. (throw out Makefile knowledges.)

I don't want them problems.  
I want is available `$ make clean` command.  
I want is available `$(RM)` in Windows.  
General remove file and directory feature on Makefile.  
Purpose minimum build support for Windows, like a second-class citizen.  

The mkwin_nm is compatibility toolkit for the minimal Makefile in Windows environment.  
Replace command `$(MKRID_P)` is `mkdir -p` and `$(RM)` is `rm -f` (rm -rf).  

mkwin_mn is minimul toolkit for compatibility in Windows.  
Not expand Makefile syntax.  
(But limited Makefile feature, GNU Make ecosystem is near equal unix CLI tools and other.)  
You do not have to throw out existing Makefile.  
mkwin_mn to minimum change the small Makefile for basic build in Unix environment.  

## Target
This project target is the minimal Makefile with small project.  

## Depend
need: GNU make, Windows batch.  

## Environment (develop and check)
Window7x64 Home, MinGW mingw32-make  

## TODO
Test  

## FAQ
Q. This project has compatibility bug.  
A. Thank you for your bug report.  
   (Please bug reporting!)  

Q. Oops! Return my C:\ !  
A. Oops. Thank your for your bug report.  
   (mkwin_mn is free. without warranty.)  

Q. Please return my "-r" file.  
A. You are stupid.  
   (Use case `$(RM) -r directory` argument is not checking.)  

Q. I want to *$(please let your favorite feature enter)* support.  
A. Thank you for your pull request.  
   I do not want to implement such a troublesome feature.  
   (Until I need it by oneself.)  

Q. What nothing compatibility feature `$(shell find *)` or `ls` ?  
A. `find` and `ls` Compatibility implement is fierce distance.  
   They commands has very long history, has a great feature, has a some arguments.  
   You have some choices.  
 * Introduce unix CLI enviroment for Windows. (ex. Cygwin)
 * Implement you.
 * Implement me, and I get pay from your. (please contact my mail!)
 * Throw out a Windows support. (Recommended!)

## Contact
Thank you for your bug report, pull request and requirement feature.  

mail: [michinari.nukazawa@gmail.com](mailto:michinari.nukazawa@gmail.com)  
twitter: [@MNukazawa](https://twitter.com/MNukazawa)  

