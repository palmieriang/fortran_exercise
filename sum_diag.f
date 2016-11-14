C	calculates the sum of the elements of the diagonal of a matrix
	program diag_mat

C	declares variables
        integer  maxdim, rig,i,j
	parameter (maxdim=100)
	integer v(maxdim,maxdim)
        integer s1,s2


C	enter input values

	write(*,*)"Enter the row's number of the matrix"
	read(*,*)rig


	do 10 i=1,rig
         do 20 j=1,rig
	   write(*,*)"Enter m value (",i,",",j,")"
	   read(*,*)v(i,j)
20        continue
10	continue


        s1=0;
        s2=0;

C	executive part

       do 100 i=1, rig
        s1=s1+v(i,i)
        s2=s2+v(i,rig-i+1)
100    continue
               
c	print matrix


	do 120 i=1,rig
           do  130 j=1,rig
		   write(*,*)"m(",i,",",j,")=",v(i,j)
130         continue
120	continue



        write(*,*)"The sum of the main diagonal is: ",s1
        write(*,*)"The sum of the secondary diagonal is: ",s2


	pause
	end
