# Kompilator i flagi
CXX := g++
CXXFLAGS := -g -std=c++17
INCLUDES := -I./include
LIBS := -L./lib -lglfw3dll
SRC := ./src/main.cpp ./src/glad.c ./src/Shader.cpp ./src/Texture.cpp ./lib/stb.cpp
OUT := program.exe

# Domyślne polecenie make (kompilacja)
all: $(OUT)

# Reguła kompilacji
$(OUT): $(SRC)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(SRC) $(LIBS) -o $(OUT)
	./$(OUT)
# Reguła czyszczenia plików wygenerowanych
clean:
	rm -f $(OUT)
