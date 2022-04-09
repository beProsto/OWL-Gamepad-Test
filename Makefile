app:
ifeq ($(OS),Windows_NT)
	g++ main.cpp -lopengl32 -lglu32 -lgdi32 -luser32 -lcomctl32 -lkernel32 -lshell32 -lxinput -std=c++17 -o app
else
	g++ main.cpp -lX11 -lGL -lGLX -std=c++17 -o app
endif