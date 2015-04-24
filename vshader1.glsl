#if __VERSION__<130
#define IN attribute
#define OUT varying
#else
#define IN in
#define OUT out
#endif

IN vec4 vPosition;
IN vec4 vColor;
IN vec2 vCoordTexture;
//IN uniform mat4 model_view;

OUT vec4 color;
OUT vec2 v_texcoord;

void main()
{
  gl_Position = /*model_view **/ vPosition;
  color = vColor;
  v_texcoord = vCoordTexture;
}
