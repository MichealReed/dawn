//
// fragment_main
//

void refract_cf1629() {
  float2 res = (-3.0f).xx;
}

void fragment_main() {
  refract_cf1629();
}

//
// compute_main
//

void refract_cf1629() {
  float2 res = (-3.0f).xx;
}

[numthreads(1, 1, 1)]
void compute_main() {
  refract_cf1629();
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


void refract_cf1629() {
  float2 res = (-3.0f).xx;
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  refract_cf1629();
  VertexOutput v = tint_symbol;
  return v;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_1 = vertex_main_inner();
  vertex_main_outputs v_2 = {v_1.pos};
  return v_2;
}

