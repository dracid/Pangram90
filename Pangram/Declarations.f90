MODULE Main_decl

IMPLICIT NONE
CHARACTER*256     :: abcFILE, inFILE, outFILE
CHARACTER*256     :: full_alphabet
INTEGER*4         :: NPangrams, ABCsize

CHARACTER*256, DIMENSION(:), ALLOCATABLE     :: pangram_test
CHARACTER*3  , DIMENSION(:), ALLOCATABLE     :: alphabet
LOGICAL      , DIMENSION(:), ALLOCATABLE     :: pangram_flag

END MODULE Main_decl