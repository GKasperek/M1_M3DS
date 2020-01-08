#version 130

in vec3 position;
in vec3 normal;

out vec3 fColor;

uniform mat4 projection;
uniform mat4 transform;
uniform vec3 lightPosition;
uniform vec3 diffuseColor;

void main() {
    vec4 eyePosition=vec4(position,1); // passage en coordonnées homogènes

    vec3 N = normal;
    vec3 L = lightPosition;
    N = normalize(N);
    L = normalize(L);

    float intensity = max(dot(N,L),0.0);


    //vec4 clipPosition=projection*eyePosition; // transformation par la matrice de projection
    vec4 clipPosition = projection*transform*eyePosition;
    fColor=vec3(intensity,intensity,intensity)*diffuseColor;

    gl_Position=clipPosition; // gl_Position doit être donné en clip coordinates
}
