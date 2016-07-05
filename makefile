OBJ=Predator-03.o
TESTES_OBJS=Testes.o Dados.o Tridiagonal.o Vectores.o Solver_SCL.o 
CFLAGS=-Wall -g

predator03:$(OBJ)
	clang++ $(CFLAGS) -o predator03 $(OBJ) -lm

testes:$(TESTES_OBJS)
	clang++ $(CFLAGS) -o testes $(TESTES_OBJS) -lm
clean:
	rm -f *.o;
	rm -f predator03;

