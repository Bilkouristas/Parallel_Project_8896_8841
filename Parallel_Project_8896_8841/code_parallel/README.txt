Cilk implementation: cilksort.c
Pthreads implementation: parqsort.c
OpenMP implementation: omp_qsort.c
Sequential implementation (given): qsort-sequential.c

qsort-main calls all of the above, plus the standard library qsort and records
the time they take.

The header file qsort-sequential.h is common among all of the above and they all
use the same partition + swap functions.



TO RUN AN EXPERIMENT

1) enter the code_parallel directory with the code
2) enter "make" into the terminal to compile everything
3) enter "qsort Q P" into the terminal, where 2^Q=problem size and 2^P=threads


EXPLANATION OF THE OUTPUT

As it stands, the output is formatted as such:
\begin
C P O S
\end
Where C,P,O,S are the execution times of the Cilk, Pthreads, OpenMP and Standard
implementations respectively. However, within Main() you can find 'commented out'
code that can format the output as such (example for 'qsort 24 8'):

Q=24 , P=8

CILK TEST PASSED
  ->Cilk wall clock time: 0.910536 sec
OPENMP TEST PASSED
  ->OpenMP wall clock time: 1.375291 sec
 PTHREADS TEST PASSED
  ->PTHREADS wall clock time: 0.825787 sec
SEQUENTIAL TEST PASSED
  ->Sequential wall clock time: 1.963013 sec
STANDARD TEST PASSED
  ->STANDARD wall clock time: 2.909594 sec
