//
// fragment_main
//

void sign_943b2e() {
  int2 res = (int(1)).xx;
}

void fragment_main() {
  sign_943b2e();
}

//
// compute_main
//

void sign_943b2e() {
  int2 res = (int(1)).xx;
}

[numthreads(1, 1, 1)]
void compute_main() {
  sign_943b2e();
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


void sign_943b2e() {
  int2 res = (int(1)).xx;
}

VertexOutput vertex_main_inner() {
  VertexOutput v = (VertexOutput)0;
  v.pos = (0.0f).xxxx;
  sign_943b2e();
  VertexOutput v_1 = v;
  return v_1;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_2 = vertex_main_inner();
  vertex_main_outputs v_3 = {v_2.pos};
  return v_3;
}

