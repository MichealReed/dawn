//
// fragment_main
//

void fma_1f5084() {
  float2 res = (2.0f).xx;
}

void fragment_main() {
  fma_1f5084();
}

//
// compute_main
//

void fma_1f5084() {
  float2 res = (2.0f).xx;
}

[numthreads(1, 1, 1)]
void compute_main() {
  fma_1f5084();
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


void fma_1f5084() {
  float2 res = (2.0f).xx;
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  fma_1f5084();
  VertexOutput v = tint_symbol;
  return v;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_1 = vertex_main_inner();
  vertex_main_outputs v_2 = {v_1.pos};
  return v_2;
}

