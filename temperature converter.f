C     temperature converter fahrenheit to Kelvin.
      program convert
      implicit none
C     variables
C     temp_f temperature fahrenheit
C     temp_k temperature Kelvin
      real temp_f
      real temp_k
C
      write(*,*)'Enter temperature in fahrenheit:'
      read(*,*)temp_f
      write(*,*) ' ==================================================='
C     convert to Kelvin
      temp_k = (5. / 9.) * (temp_f - 32.) +273.15
C     result
      write(*,*) temp_f, '° fahrenheit = ', temp_k, '° Kelvin'
C     end of the program
      write(*,*) ' ==================================================='
      end program
