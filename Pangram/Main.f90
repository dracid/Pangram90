! ==========================================
! Program name: Pangram90
! Author: Giorgi [DrAcid] Maghlakelidze
! Purpose: check if provided string or set of 
!          strings is a pangram. Created as an exercise
! Usage: 
!         a. prepare alphabet in a file abc.dat file
!         b. prepare a list of string to be checked in pangrams.dat
!         c. program will output a file with pangrams if such exist
!
! YEAR: 2013
! ==========================================

! ==========================================
PROGRAM Pangram_checker
USE Main_decl

IMPLICIT NONE
INTEGER*4        :: argNum

! TODO: Get input and output files from argument of executable
argNum = NARGS()
! CALL GetArg(1, abcFILE)
! CALL GetArg(2, inFILE)
! CALL GetArg(3, outFILE)

abcFILE = "abc.dat"
inFILE  = "pangrams.in"
outFILE = "pangrams.out"

CALL ReadAlphabet()
CALL ReadInputFile()

CALL PangramCheck()

CALL WriteOutputFile()

WRITE(*,*) "Press ENTER to exit..."
READ (*,*)
END PROGRAM Pangram_checker
! ==========================================