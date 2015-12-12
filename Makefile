TARGET = wrapper

CFLAGS = -DCOMMAND='$(COMMAND)'

all: $(TARGET)

clean:
	$(RM) $(TARGET) *.o

.PHONY: clean
