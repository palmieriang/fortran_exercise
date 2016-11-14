C====================================================================
C Calculation of the maximum of n real numbers
C====================================================================
      PROGRAM Massimo
      IMPLICIT NONE
C====================
C Parte dichiarativa
C====================
      REAL*8 max
      REAL*8 val(1:10)
      INTEGER n
      INTEGER i, ind
C====================
C Parte esecutiva
C====================
C
C Ingresso dati
C
      print *, ' Enter number n'
      read *, n
      do while (n .gt. 10)
        print *, ' The value is greater than 10. Try with a lower number'
        read *, n
      end do
      print *, ' Enter n numbers, one per row'
      do i=1,n
        read *, val(i)
      end do
C
C calculate
C
      ind = 1
      max = val(1)
      do i=2,n
        if (max .lt. val(i)) then
          max = val (i)
          ind = i
        end if
      end do
C
C output
C
      print *
      print *, ' n is', n
      print *, ' The entered values are: '
      do i=1,n
        print *, val(i)
      end do
      print *
      print *, ' The maximum is', max,
     *         ' it si located in ',ind
      stop
      end
