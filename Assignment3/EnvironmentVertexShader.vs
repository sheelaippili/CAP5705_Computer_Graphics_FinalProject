#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 2) in vec3 aNormal;
int a = 1;
out vec3 Normal;
out vec3 Position;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
void main()
{
    Normal = mat3(transpose(inverse(model))) * aNormal;
    Position = vec3(model * vec4(aPos, 1.0));
    gl_Position = projection * view * model * vec4 (aPos.x, aPos.y, aPos.z, 1.0);
}