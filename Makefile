CFLAGS=-std=c++11 

all: except except2

except: except.cpp
	g++ $(CFLAGS) except.cpp -o except
	
except2: except2.cpp
	g++ $(CFLAGS) except2.cpp -o except2

pinewood: pinewood.cpp Race.cpp Race.h CarInterface.h Car.h Panda.h Rocket.h 
	g++ $(CFLAGS) pinewood.cpp Race.cpp Panda.cpp Rocket.cpp Car.cpp -o pinewood

