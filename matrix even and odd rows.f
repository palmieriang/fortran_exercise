C      Given a 2D array, charge numbers >= 20 in the even lines and the numbers <20 in the odd rows.
C      Create 2 vectors, the first with the even rows and the other with the odd. Order carriers.
       Program
       Integer i, j, k, h, Ni, Nj, maximum
       Parameter (nmax=100)
       Real A(1:nmax,1:nmax), P(1:nmax), D(1:nmax)
    1  Write(*,*)'Enter the number of rows'
       Read(*,*) Ni
       If((Ni.le.0).or.(Ni.gt.100))goto 1
    2  Write(*,*)'Enter the number of columns'
       Read(*,*) Nj
       If((Nj.le.0).or.(Nj.gt.100))goto 2
       Do 10 i=1,Ni
          Do 20 j=1,Nj
             If(mod(i,2).eq.0)then
    3           Write(*,*)'Enter elements >= 20'
                Read(*,*) A(i,j)
                If(A(i,j).lt.20)goto 3
             Else
    4           Write(*,*)'Enter elements < 20'
                Read(*,*) A(i,j)
                If(A(i,j).ge.20)goto 4
             Endif
20        Continue
10     Continue
C      I create an array with the even lines and another with the odd lines
       k=0
       h=0
       Do 30 i=1,Ni
          Do 40 j=1,Nj
             If(mod(i,2).eq.0)then
                k=k+1
                P(k)=A(i,j)
             Else
                h=h+1
                D(h)=A(i,j)
             Endif
40        Continue
30     Continue
C      Sort the array that contains the even lines
       Do 50 j=1,k
          Do 60 i=1,k-1
             If(P(k).gt.P(k+1))then
                maximum=P(k)
                P(k)=P(k+1)
                P(k+1)=maximum
             Endif
60        Continue
50     Continue
C      Sort the array that contains the odd lines
       Do 70 j=1,h
          Do 80 i=1,h-1
             If(D(h).gt.D(h+1))then
                maximum=D(h)
                D(h)=D(h+1)
                D(h+1)=maximum
             Endif
80        Continue
70     Continue
C      Print output
       Write(*,*)'The vector of even rows is:'
       Write(*,*) (P(k),K=1,k)
       Write(*,*)'The vector of odd rows is:'
       Write(*,*) (D(h),h=1,h)
       End
