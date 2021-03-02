.PHONY: all
all: testlib.so

%.o: %.cpp
	$(CXX) -fPIC -c testlib.cpp 

testlib.so: testlib.o
	$(CXX) $^ -shared -o libtestlib.so

.PHONY: clean
clean:
	rm -fr *.o *.so
