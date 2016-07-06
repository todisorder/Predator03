CC=g++
Version=-03
OBJ=Predator$(Version).o
#CFLAGS=-Wall -g -std=c++11
CFLAGS= -g -std=c++11

predator$(Version):$(OBJ)
	$(CC) -o predator$(Version) $(OBJ) -lm

$(OBJ):Predator$(Version).cpp
	$(CC) $(CFLAGS) -c Predator$(Version).cpp 

clean:
	rm -f *.o;
	rm -f predator$(Version);

