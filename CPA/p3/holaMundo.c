#include <stdio.h>
#include <mpi.h>

int main (int argc, char *argv[])
{
  int myId, numProc;
	MPI_Init(&argc, &argv);
	MPI_Comm_rank(MPI_COMM_WORLD, &myId);
	MPI_Comm_size(MPI_COMM_WORLD, &numProc);
	printf("Hello world del proceso %d de %d\n", myId, numProc);
	MPI_Finalize();
	return 0;
	
}
