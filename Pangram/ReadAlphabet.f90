SUBROUTINE ReadAlphabet()
USE Main_decl
IMPLICIT NONE
INTEGER*4         :: FID, stat, i

OPEN(NEWUNIT=FID, FILE=TRIM(ADJUSTL(abcFile)), ACTION="READ", STATUS="OLD", ENCODING='UTF-8', IOSTAT=stat )
READ(FID, *) full_alphabet
CLOSE(FID)

ABCsize = LEN_TRIM(ADJUSTL(full_alphabet))/3
ALLOCATE(alphabet(1:ABCsize))
DO i = 1, ABCsize
   alphabet(i) = full_alphabet(1+3*(i-1) : 3*i)
END DO

END SUBROUTINE ReadAlphabet