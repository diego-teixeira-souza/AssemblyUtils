
VAR_OBJECT      = printStack.o
VAR_LINK_TARGET = printStack.exe
VAR_BUILD_FILES = $(VAR_OBJET) $(VAR_LIKN_TARGET)

clean:
	rm -f $(VAR_BUILD_FILES)
	echo "Clean Done"

all: clean $(VAR_LINK_TARGET)
	echo "All Done. Executing link target ..."
	rm -f $(VAR_OBJECT)
	./$(VAR_LINK_TARGET)

$(VAR_LINK_TARGET): $(VAR_OBJECT)
	gcc -m32 -o $@ $^
	
%.o: %.asm
	nasm -felf32 -o $@ $<
	
	
