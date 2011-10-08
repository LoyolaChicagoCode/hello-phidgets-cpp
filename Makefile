CXXFLAGS +=	-O2 -g -Wall -fmessage-length=0
LDLIBS +=	-lphidget21

OBJS =		main.o
TARGET =	hello-phidgets

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LDFLAGS) $(LDLIBS)

all:	$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
