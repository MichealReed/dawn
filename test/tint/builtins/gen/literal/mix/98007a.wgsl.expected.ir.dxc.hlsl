//
// fragment_main
//

void mix_98007a() {
  float4 res = (1.0f).xxxx;
}

void fragment_main() {
  mix_98007a();
}

//
// compute_main
//

void mix_98007a() {
  float4 res = (1.0f).xxxx;
}

[numthreads(1, 1, 1)]
void compute_main() {
  mix_98007a();
}

//
// vertex_main
//
struct VertexOutput {
  float4 pos;
};

struct vertex_main_outputs {
  float4 VertexOutput_pos : SV_Position;
};


void mix_98007a() {
  float4 res = (1.0f).xxxx;
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  mix_98007a();
  VertexOutput v = tint_symbol;
  return v;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_1 = vertex_main_inner();
  vertex_main_outputs v_2 = {v_1.pos};
  return v_2;
}

