C      Given two 2D matrix create a program that:
C      1) Load the matrix by sequence
C      2) After loading, organize in the first matrix odd numbers,
C      in the second all the even numbers
       Program esame
       Implicit none
       Integer i, j, k, h, NR, NC, Nodd, Neven, LD, LP
       Parameter (nmax=100)
       Integer A(1:nmax,1:nmax), B(1:nmax,1:nmax), P(1:nmax), D(1:nmax)
    1  Write(*,*)'Insert rows number of the two matrix'
       Read(*,*) NR
       if((NR.le.0).or.(NR.gt.100))goto 1
    2  Write(*,*)'Insert columns number of the two matrix'
       Read(*,*) NC
       if((NC.le.0).or.(NC.gt.100))goto 2
       Do 10 i=1,NR
          Do 20 j=1,NC
             Write(*,*)'Type element (',i,',',j,')of the A matrix'
             Read(*,*) A(i,j)
             Write(*,*)'Type element (',i,',',j,')of the B matrix'
             Read(*,*) B(i,j)
20        Continue
10     Continue
       k=0
       h=0
       Do 30 i=1,NR
          Do 40 j=1,NC
             If(mod(A(i,j),2).eq.0) then
                k=k+1
                P(k)=A(i,j)
                A(i,j)=0
             Endif
             If(mod(B(i,j),2).ne.0) then
                h=h+1
                D(h)=B(i,j)
                B(i,j)=0
             Endif
40        Continue
30     Continue
       Nodd=h
       Neven=k
       LD=1
       LP=1
       Do 50 i=1,NR
          Do 60 j=1,NC
             If((mod(A(i,j),2).eq.0).and.(LD.le.Nodd))then
                A(i,j)=D(LD)
                LD=LD+1
             Endif
             If((mod(A(i,j),2).ne.0).and.(LP.le.Neven))then
                B(i,j)=P(LP)
                LP=LP+1
             Endif
60        Continue
50     Continue
C      Print matrix
       Write(*,*)'The matrix of odd numbers is:'
       Do 70 i=1,NR
          Write(*,'(3F12.0)') (A(i,j),j=1,Nj)
70     Continue
       Write(*,*)'The matrix of even numbers is:'
       Do 80 i=1,NR
          Write(*,'(3F12.0)') (B(i,j),j=1,Nj)
80     Continue
       End
