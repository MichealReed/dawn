//
// fragment_main
//
RWByteAddressBuffer prevent_dce : register(u0);

int select_ed8a15() {
  int arg_0 = 1;
  int arg_1 = 1;
  bool arg_2 = true;
  int res = (arg_2 ? arg_1 : arg_0);
  return res;
}

void fragment_main() {
  prevent_dce.Store(0u, asuint(select_ed8a15()));
  return;
}
//
// compute_main
//
RWByteAddressBuffer prevent_dce : register(u0);

int select_ed8a15() {
  int arg_0 = 1;
  int arg_1 = 1;
  bool arg_2 = true;
  int res = (arg_2 ? arg_1 : arg_0);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store(0u, asuint(select_ed8a15()));
  return;
}
//
// vertex_main
//
int select_ed8a15() {
  int arg_0 = 1;
  int arg_1 = 1;
  bool arg_2 = true;
  int res = (arg_2 ? arg_1 : arg_0);
  return res;
}

struct VertexOutput {
  float4 pos;
  int prevent_dce;
};
struct tint_symbol_1 {
  nointerpolation int prevent_dce : TEXCOORD0;
  float4 pos : SV_Position;
};

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  tint_symbol.prevent_dce = select_ed8a15();
  return tint_symbol;
}

tint_symbol_1 vertex_main() {
  VertexOutput inner_result = vertex_main_inner();
  tint_symbol_1 wrapper_result = (tint_symbol_1)0;
  wrapper_result.pos = inner_result.pos;
  wrapper_result.prevent_dce = inner_result.prevent_dce;
  return wrapper_result;
}
