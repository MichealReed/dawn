//
// fragment_main
//
#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  float inner;
} v;
float smoothstep_6c4975() {
  float arg_0 = 2.0f;
  float arg_1 = 4.0f;
  float arg_2 = 3.0f;
  float v_1 = arg_0;
  float v_2 = clamp(((arg_2 - v_1) / (arg_1 - v_1)), 0.0f, 1.0f);
  float res = (v_2 * (v_2 * (3.0f - (2.0f * v_2))));
  return res;
}
void main() {
  v.inner = smoothstep_6c4975();
}
//
// compute_main
//
#version 310 es

layout(binding = 0, std430)
buffer prevent_dce_block_1_ssbo {
  float inner;
} v;
float smoothstep_6c4975() {
  float arg_0 = 2.0f;
  float arg_1 = 4.0f;
  float arg_2 = 3.0f;
  float v_1 = arg_0;
  float v_2 = clamp(((arg_2 - v_1) / (arg_1 - v_1)), 0.0f, 1.0f);
  float res = (v_2 * (v_2 * (3.0f - (2.0f * v_2))));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.inner = smoothstep_6c4975();
}
//
// vertex_main
//
#version 310 es


struct VertexOutput {
  vec4 pos;
  float prevent_dce;
};

layout(location = 0) flat out float vertex_main_loc0_Output;
float smoothstep_6c4975() {
  float arg_0 = 2.0f;
  float arg_1 = 4.0f;
  float arg_2 = 3.0f;
  float v = arg_0;
  float v_1 = clamp(((arg_2 - v) / (arg_1 - v)), 0.0f, 1.0f);
  float res = (v_1 * (v_1 * (3.0f - (2.0f * v_1))));
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), 0.0f);
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = smoothstep_6c4975();
  return tint_symbol;
}
void main() {
  VertexOutput v_2 = vertex_main_inner();
  gl_Position = v_2.pos;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  vertex_main_loc0_Output = v_2.prevent_dce;
  gl_PointSize = 1.0f;
}
