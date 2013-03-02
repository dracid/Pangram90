SUBROUTINE WriteOutputFile()
USE Main_decl
IMPLICIT NONE
INTEGER*4         :: FID, stat, i

OPEN(NEWUNIT=FID, FILE=TRIM(ADJUSTL(outFILE)), ACTION="WRITE", STATUS="REPLACE", ENCODING='UTF-8', IOSTAT=stat )
WRITE(FID, '(A)') "Pangrams: "

DO i = 1, NPangrams
   IF(pangram_flag(i))   WRITE(FID, '(A)') pangram_test(i)
END DO

DEALLOCATE(pangram_test, alphabet, pangram_flag)



END SUBROUTINE WriteOutputFile