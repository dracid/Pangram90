SUBROUTINE ReadInputFile()
USE Main_decl
IMPLICIT NONE
INTEGER*4         :: FID, stat, i

OPEN(NEWUNIT=FID, FILE=TRIM(ADJUSTL(inFILE)), ACTION="READ", STATUS="OLD", ENCODING='UTF-8', IOSTAT=stat )
READ(FID, *, iostat=stat) NPangrams

ALLOCATE(pangram_test(1:NPangrams))
ALLOCATE(pangram_flag(1:NPangrams))

DO i = 1, NPangrams
   READ(FID, '(A)', iostat=stat) pangram_test(i)
END DO

CLOSE(FID)

END SUBROUTINE ReadInputFile