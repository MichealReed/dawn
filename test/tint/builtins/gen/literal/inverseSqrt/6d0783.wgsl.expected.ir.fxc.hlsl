//
// fragment_main
//

void inverseSqrt_6d0783() {
  float3 res = (1.0f).xxx;
}

void fragment_main() {
  inverseSqrt_6d0783();
}

//
// compute_main
//

void inverseSqrt_6d0783() {
  float3 res = (1.0f).xxx;
}

[numthreads(1, 1, 1)]
void compute_main() {
  inverseSqrt_6d0783();
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


void inverseSqrt_6d0783() {
  float3 res = (1.0f).xxx;
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  inverseSqrt_6d0783();
  VertexOutput v = tint_symbol;
  return v;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_1 = vertex_main_inner();
  vertex_main_outputs v_2 = {v_1.pos};
  return v_2;
}

