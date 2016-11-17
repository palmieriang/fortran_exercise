C      Dato un vettore di 100 elementi individua il minimo nei primi 50
C      e il massimo negli altri 50
       Program vettore
       Implicit none
       Integer DV, nmax, i
       Real A(1:100)
       Real MIN, MAX
       Do 10 i=1,100
          Write(*,*)'Inserisci l''elemento',i,' del vettore'
          Read(*,*)A(i)
10     Continue
       MIN=A(1)
       MAX=A(51)
       Do 20 i=1,100
          if((i.le.50).and.(A(i).lt.MIN))MIN=A(i)
          if((i.gt.50).and.(A(i).gt.MAX))MAX=A(i)
20     Continue
C      stampo il minimo e il massimo
       Write(*,*)
       Write(*,*)'Il minimo dei primi 50 elementi Š:',MIN
       Write(*,*)
       Write(*,*)'Il massimo degli altri 50 elementi Š:',MAX
       End
