C      Calculate the transpose of a matrix
       Program transpose
       Integer i, j, NR, NC
       Parameter (nmax=100)
       Real A(1:nmax,1:nmax)
C      Input
       Write(*,*)'Enter the number of rows'
       Read(*,*) NR
       Write(*,*)'Enter the number of columns'
       Read(*,*) NC
       Do 10 i=1,NR
          Do 20 j=1,NC
             Write(*,*)'Enter element (',i,',',j,')'
             Read(*,*) A(i,j)
20        Continue
10     Continue
       Do 30 i=1,NR
          Do 40 j=1,NC
             A(i,j)=A(j,i)
40        Continue
30     Continue
C      Print matrix
       Write(*,*)'The transpose is:'
       Do 50 i=1,NC
          Do 60 j=1,NR
             Write(*,*)'(',i,',',j,')',A(i,j)
60        Continue
50     Continue
       End
