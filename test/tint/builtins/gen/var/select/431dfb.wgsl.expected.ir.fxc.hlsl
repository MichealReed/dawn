//
// fragment_main
//

void select_431dfb() {
  bool2 arg_2 = (true).xx;
  int2 res = ((arg_2) ? ((int(1)).xx) : ((int(1)).xx));
}

void fragment_main() {
  select_431dfb();
}

//
// compute_main
//

void select_431dfb() {
  bool2 arg_2 = (true).xx;
  int2 res = ((arg_2) ? ((int(1)).xx) : ((int(1)).xx));
}

[numthreads(1, 1, 1)]
void compute_main() {
  select_431dfb();
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


void select_431dfb() {
  bool2 arg_2 = (true).xx;
  int2 res = ((arg_2) ? ((int(1)).xx) : ((int(1)).xx));
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  select_431dfb();
  VertexOutput v = tint_symbol;
  return v;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_1 = vertex_main_inner();
  vertex_main_outputs v_2 = {v_1.pos};
  return v_2;
}

