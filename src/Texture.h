#pragma once
#include <stb/stb_image.h>
#include <glad/glad.h>
#include <iostream>

class Texture {
private:
	unsigned int ID;
	int width;
	int height;
	int nrChannels;
	unsigned char* data;
public:
	Texture(const char* texturePath);
	void useTexture();
};