//
// fragment_main
//
struct frexp_result_vec2_f16 {
  vector<float16_t, 2> fract;
  int2 exp;
};


void frexp_5f47bf() {
  frexp_result_vec2_f16 res = {(float16_t(0.5h)).xx, (int(1)).xx};
}

void fragment_main() {
  frexp_5f47bf();
}

//
// compute_main
//
struct frexp_result_vec2_f16 {
  vector<float16_t, 2> fract;
  int2 exp;
};


void frexp_5f47bf() {
  frexp_result_vec2_f16 res = {(float16_t(0.5h)).xx, (int(1)).xx};
}

[numthreads(1, 1, 1)]
void compute_main() {
  frexp_5f47bf();
}

//
// vertex_main
//
struct frexp_result_vec2_f16 {
  vector<float16_t, 2> fract;
  int2 exp;
};

struct VertexOutput {
  float4 pos;
};

struct vertex_main_outputs {
  float4 VertexOutput_pos : SV_Position;
};


void frexp_5f47bf() {
  frexp_result_vec2_f16 res = {(float16_t(0.5h)).xx, (int(1)).xx};
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  frexp_5f47bf();
  VertexOutput v = tint_symbol;
  return v;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_1 = vertex_main_inner();
  vertex_main_outputs v_2 = {v_1.pos};
  return v_2;
}

