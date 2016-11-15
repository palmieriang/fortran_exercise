C====================================================================
C Program for calculating the matrix-vector product
C====================================================================
C
C A matrix n rows and m columns
C x	vector m rows
C y	resulting vector n rows. y=A*x
C
      PROGRAM Matvec
      IMPLICIT NONE
C====================
C variables
C====================
      INTEGER n, m, maxdim
      INTEGER i, j
      PARAMETER (maxdim=100)
      REAL*8 A(1:maxdim,1:maxdim), x(1:maxdim), y(1:maxdim)
C====================
C calculation
C====================
C
C input
C
      print *, ' Enter the number of rows'
      read *, n
      print *, ' Enter the number of columns'
      read *, m
      print *, ' Reading A matrix, element by element'
      do i = 1, n
        do j = 1, m
          print *, ' A(', i, ',', j, ') ='
          read *, A(i,j)
        end do
      end do
      print *, ' Reading of the vector, element by element'
      do i = 1, m
        print *, ' x(', i, ') ='
        read *, x(i)
      end do
C
C product calculation
C
      do i = 1, n
        y(i) = 0.0d0
	do j = 1, m
          y(i) = y(i) + A(i,j) * x(j)
	end do
      end do
C
C output
C
      print *
      print *, ' Vector y = A * x '
      do i = 1, n
        print *, ' y(', i, ') =', y(i)
      end do
      stop
      end
