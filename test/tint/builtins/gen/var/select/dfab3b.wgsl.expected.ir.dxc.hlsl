//
// fragment_main
//

void select_dfab3b() {
  bool arg_2 = true;
  int3 res = ((arg_2) ? ((int(1)).xxx) : ((int(1)).xxx));
}

void fragment_main() {
  select_dfab3b();
}

//
// compute_main
//

void select_dfab3b() {
  bool arg_2 = true;
  int3 res = ((arg_2) ? ((int(1)).xxx) : ((int(1)).xxx));
}

[numthreads(1, 1, 1)]
void compute_main() {
  select_dfab3b();
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


void select_dfab3b() {
  bool arg_2 = true;
  int3 res = ((arg_2) ? ((int(1)).xxx) : ((int(1)).xxx));
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  select_dfab3b();
  VertexOutput v = tint_symbol;
  return v;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_1 = vertex_main_inner();
  vertex_main_outputs v_2 = {v_1.pos};
  return v_2;
}

