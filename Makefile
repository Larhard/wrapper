TARGET = wrapper

CFLAGS = -DCOMMAND='$(COMMAND)'

all: $(TARGET)

clean:
	$(RM) $(TARGET) *.o

sticky: $(TARGET)
	chown root:wheel $<
	chmod 6110 $<

.PHONY: clean sticky
