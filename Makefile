CXX = c++
CXX_FLAGS = -std=c++17

LINK_WINAPI = -lopengl32 -lglu32 -lgdi32 -luser32 -lcomctl32 -lkernel32 -lshell32 -lxinput
LINK_XLIB   = -lX11 -lGL -lGLX

run: app
	./app

app: main.cpp
ifeq ($(OS),Windows_NT)
	$(CXX) main.cpp $(LINK_WINAPI) $(CXX_FLAGS) -o app
else
	$(CXX) main.cpp $(LINK_XLIB)   $(CXX_FLAGS) -o app
endif