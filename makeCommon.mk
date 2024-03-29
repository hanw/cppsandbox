OBJECTS=$(SOURCES:.cpp=.o)

run: all
	./$(EXECUTABLE) $(EXECUTABLE_ARGS)

all: $(SOURCES) $(EXECUTABLE)

edit:
	vim $(SOURCES)

.cpp.o:
	$(CC) $(CFLAGS) $< -c -o $@

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

clean:
	- rm $(OBJECTS) $(EXECUTABLE)

.PHONY: clean

