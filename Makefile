demo : main.cpp libResourcesParser.so
	g++ main.cpp -L. -lResourcesParser -std=c++11 -o demo 

libResourcesParser.so : ResourcesParser.h ResourcesParser.cpp ResourceTypes.h ResourceTypes.cpp configuration.h ByteOrder.h
	g++ ResourcesParser.cpp ResourceTypes.cpp -fPIC -shared -std=c++11 -o libResourcesParser.so

.PHONY : clean
clean :
	rm libResourcesParser.so demo
