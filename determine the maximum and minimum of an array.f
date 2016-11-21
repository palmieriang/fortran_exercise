      Program
C     Given an array of N rows and M columns determine the maximum and
C     minimum
C     ==================================================================
C     Variables
C     ==================================================================
      Implicit none
      Integer NR, NC, nmax, i, j
C     NR is the number of rows, NC is the number of columns,
C     nmax is the maximum value that can take the matrix
      Parameter (nmax=100)
      Real A(1:nmax,1:nmax)
      Integer POSC, POSR, MIN
    1 Write(*,*)'Enter the number of rows'
      Read(*,*) NR
      If (NR<=0) goto 1
    2 Write(*,*)'Enter the number of columns'
      Read(*,*) NC
      If (NC<=0) goto 2
      Write(*,*)'Enter the matrix elements'
      Do 10 i=1,NR
      Do 20 j=1,NC
      Write(*,*)'Element of A',i,j
      Read(*,*)A(i,j)
   20 Continue
   10 Continue
      MIN=A(1,1)
      POSC=0
      POSR=0
      Do 30 i=1,NR
         Do 40 j=1,NC
            If (A(i,j)<MIN) then
               MIN=A(i,j)
               POSC=j
               POSR=i
            End if
   40    Continue
   30 Continue
      End
