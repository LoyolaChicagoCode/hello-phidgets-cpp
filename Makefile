CXXFLAGS +=	-O2 -g -Wall -fmessage-length=0
LIBS =		-lphidget21

OBJS =		main.o
TARGET =	hello-phidgets

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LDFLAGS) $(LIBS)

all:	$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
