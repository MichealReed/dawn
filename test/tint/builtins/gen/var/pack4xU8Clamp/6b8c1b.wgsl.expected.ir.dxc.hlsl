//
// fragment_main
//

RWByteAddressBuffer prevent_dce : register(u0);
uint pack4xU8Clamp_6b8c1b() {
  uint4 arg_0 = (1u).xxxx;
  uint4 v = arg_0;
  uint4 v_1 = uint4(0u, 8u, 16u, 24u);
  uint4 v_2 = uint4((0u).xxxx);
  uint4 v_3 = (clamp(v, v_2, uint4((255u).xxxx)) << v_1);
  uint res = dot(v_3, uint4((1u).xxxx));
  return res;
}

void fragment_main() {
  prevent_dce.Store(0u, pack4xU8Clamp_6b8c1b());
}

//
// compute_main
//

RWByteAddressBuffer prevent_dce : register(u0);
uint pack4xU8Clamp_6b8c1b() {
  uint4 arg_0 = (1u).xxxx;
  uint4 v = arg_0;
  uint4 v_1 = uint4(0u, 8u, 16u, 24u);
  uint4 v_2 = uint4((0u).xxxx);
  uint4 v_3 = (clamp(v, v_2, uint4((255u).xxxx)) << v_1);
  uint res = dot(v_3, uint4((1u).xxxx));
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store(0u, pack4xU8Clamp_6b8c1b());
}

//
// vertex_main
//
struct VertexOutput {
  float4 pos;
  uint prevent_dce;
};

struct vertex_main_outputs {
  nointerpolation uint VertexOutput_prevent_dce : TEXCOORD0;
  float4 VertexOutput_pos : SV_Position;
};


uint pack4xU8Clamp_6b8c1b() {
  uint4 arg_0 = (1u).xxxx;
  uint4 v = arg_0;
  uint4 v_1 = uint4(0u, 8u, 16u, 24u);
  uint4 v_2 = uint4((0u).xxxx);
  uint4 v_3 = (clamp(v, v_2, uint4((255u).xxxx)) << v_1);
  uint res = dot(v_3, uint4((1u).xxxx));
  return res;
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  tint_symbol.prevent_dce = pack4xU8Clamp_6b8c1b();
  VertexOutput v_4 = tint_symbol;
  return v_4;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_5 = vertex_main_inner();
  vertex_main_outputs v_6 = {v_5.prevent_dce, v_5.pos};
  return v_6;
}

