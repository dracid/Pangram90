SUBROUTINE PangramCheck()
USE Main_decl
IMPLICIT NONE
INTEGER*4         :: iPangram, iChar, ind

pangram_flag(:) = .TRUE.

DO iPangram = 1, NPangrams
   DO iChar = ABCsize, 1, -1
      ind = INDEX(pangram_test(iPangram), alphabet(iChar))
      IF(ind == 0) THEN
         pangram_flag(iPangram) = .FALSE.
         EXIT
      END IF
   END DO
END DO

END SUBROUTINE PangramCheck