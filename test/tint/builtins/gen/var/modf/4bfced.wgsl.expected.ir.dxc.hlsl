//
// fragment_main
//
struct modf_result_vec4_f32 {
  float4 fract;
  float4 whole;
};


void modf_4bfced() {
  float4 arg_0 = (-1.5f).xxxx;
  float4 v = (0.0f).xxxx;
  modf_result_vec4_f32 res = {modf(arg_0, v), v};
}

void fragment_main() {
  modf_4bfced();
}

//
// compute_main
//
struct modf_result_vec4_f32 {
  float4 fract;
  float4 whole;
};


void modf_4bfced() {
  float4 arg_0 = (-1.5f).xxxx;
  float4 v = (0.0f).xxxx;
  modf_result_vec4_f32 res = {modf(arg_0, v), v};
}

[numthreads(1, 1, 1)]
void compute_main() {
  modf_4bfced();
}

//
// vertex_main
//
struct modf_result_vec4_f32 {
  float4 fract;
  float4 whole;
};

struct VertexOutput {
  float4 pos;
};

struct vertex_main_outputs {
  float4 VertexOutput_pos : SV_Position;
};


void modf_4bfced() {
  float4 arg_0 = (-1.5f).xxxx;
  float4 v = (0.0f).xxxx;
  modf_result_vec4_f32 res = {modf(arg_0, v), v};
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  modf_4bfced();
  VertexOutput v_1 = tint_symbol;
  return v_1;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_2 = vertex_main_inner();
  vertex_main_outputs v_3 = {v_2.pos};
  return v_3;
}

