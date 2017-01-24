CFLAGS=-std=c++11 

all: except except2

except: except.cpp
	g++ $(CFLAGS) except.cpp -o except
	
except2: except2.cpp
	g++ $(CFLAGS) except2.cpp -o except2



