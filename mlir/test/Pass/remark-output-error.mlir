// RUN: rm -rf %t
// RUN: not mlir-opt %s --remarks-filter="category.*" --remark-format=yaml --remarks-output-file=%t/missing/out.yaml 2>&1 | FileCheck %s

// CHECK: error: cannot initialize remark output '{{.*}}out.yaml': {{.+}}
module {}
