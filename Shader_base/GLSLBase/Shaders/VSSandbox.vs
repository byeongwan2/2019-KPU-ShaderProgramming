#version 450

layout(location = 0) in vec3 a_Position;

const float PI = 3.141592;
uniform float u_Time;

void main()
{
	vec3 newPos = a_Position;	
	// x :: -0.5 ~ 0.5  --> +0.5 -> 0 ~ 1 --> * 2 * PT -> 0 ~ 2PI
	float value = (newPos.x + 0.5) * 2 * PI + u_Time;
	float sinValue = sin(value) * 0.5f;

	// y :: -0.5 ~ 0.5
	newPos.y = newPos.y + sinValue;

	gl_Position = vec4(newPos, 1);
}
