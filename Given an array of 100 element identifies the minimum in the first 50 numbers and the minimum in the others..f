C      Given an array of 100 element identifies the minimum in the
C      first 50 numbers and the maximum in the others.
       Program array
       Implicit none
       Integer DV, nmax, i
       Real A(1:100)
       Real MIN, MAX
       Do 10 i=1,100
          Write(*,*)'Type the ',i,' element of the array'
          Read(*,*)A(i)
10     Continue
       MIN=A(1)
       MAX=A(51)
       Do 20 i=1,100
          if((i.le.50).and.(A(i).lt.MIN))MIN=A(i)
          if((i.gt.50).and.(A(i).gt.MAX))MAX=A(i)
20     Continue
C      output
       Write(*,*)
       Write(*,*)'The minimum of the first 50 elements is:',MIN
       Write(*,*)
       Write(*,*)'The maximum of the others 50 elements is:',MAX
       End
