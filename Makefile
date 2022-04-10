CXX = clang++
CXX_FLAGS = -std=c++17

ifeq ($(OS),Windows_NT)
LINK_OWL = -lopengl32 -lglu32 -lgdi32 -luser32 -lcomctl32 -lkernel32 -lshell32 -lxinput
EXE = app.exe
else
LINK_OWL = -lX11 -lGL -lGLX
EXE = app
endif

run: $(EXE)
	./$(EXE)

$(EXE): main.cpp
	$(CXX) main.cpp $(LINK_OWL) $(CXX_FLAGS) -o $(EXE)

clean:
	-rm $(EXE)
	-del $(EXE)