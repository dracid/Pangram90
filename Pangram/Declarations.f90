MODULE Main_decl

IMPLICIT NONE
CHARACTER*256     :: abcFILE, inFILE, outFILE
CHARACTER*256     :: alphabet
INTEGER*4         :: NPangrams

CHARACTER*256, DIMENSION(:), ALLOCATABLE     :: pangram_test, pangrams
LOGICAL*4    , DIMENSION(:), ALLOCATABLE     :: pangram_flag


END MODULE Main_decl