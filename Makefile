CXXFLAGS =	-O2 -g -Wall -fmessage-length=0

OBJS =		main.o

LIBS =		-lphidget21

TARGET =	hello-phidgets

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBS)

all:	$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
