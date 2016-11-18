C     sum even numbers - multiplies odd numbers
C
      Program
      Integer i, contr, DIMA
      Integer A(1:100)
      Real resto, sum, product
      i=0
      Write(*,*)"Enter the sequence of numbers"
100    i=i+1
      Read(*,*)A(i)
      Write(*,*)'Do you want to continue to give information?
     + If yes type 1, otherwise type 0'
      read(*,*) contr
      if(contr.eq.1) goto 100
      sum=0
      DIMA=i
      write(*,*) DIMA
      product=1
      Do 10 i=1,DIMA
         if(A(i).NE.0)then
            resto=mod(A(i),2)
            if(resto.eq.0)then
               sum=sum+A(i)
            else
               product=product*A(i)
            end if
         end if
10    Continue
      Write(*,*)'The sum of the even numbers is:',sum
      Write(*,*)'The product of the odd numbers is:',product
      End
