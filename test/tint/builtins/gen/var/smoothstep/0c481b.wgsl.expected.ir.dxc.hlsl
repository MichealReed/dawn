//
// fragment_main
//

void smoothstep_0c481b() {
  float2 res = (0.5f).xx;
}

void fragment_main() {
  smoothstep_0c481b();
}

//
// compute_main
//

void smoothstep_0c481b() {
  float2 res = (0.5f).xx;
}

[numthreads(1, 1, 1)]
void compute_main() {
  smoothstep_0c481b();
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


void smoothstep_0c481b() {
  float2 res = (0.5f).xx;
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  smoothstep_0c481b();
  VertexOutput v = tint_symbol;
  return v;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_1 = vertex_main_inner();
  vertex_main_outputs v_2 = {v_1.pos};
  return v_2;
}

