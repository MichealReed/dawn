//
// fragment_main
//

void atanh_c5dc32() {
  float res = 0.54930615425109863281f;
}

void fragment_main() {
  atanh_c5dc32();
}

//
// compute_main
//

void atanh_c5dc32() {
  float res = 0.54930615425109863281f;
}

[numthreads(1, 1, 1)]
void compute_main() {
  atanh_c5dc32();
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


void atanh_c5dc32() {
  float res = 0.54930615425109863281f;
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  atanh_c5dc32();
  VertexOutput v = tint_symbol;
  return v;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_1 = vertex_main_inner();
  vertex_main_outputs v_2 = {v_1.pos};
  return v_2;
}

