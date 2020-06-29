load("//tools/build_defs/cc:cc_import.bzl", "cc_import")

cc_binary(
    name = "main",
    srcs = ["main.cc"],
    features = ["-supports_start_end_lib"],
    deps = ["foo"],
)

cc_import(
    name = "foo",
    hdrs = ["foo.h"],
    object_file = "foo.o",
)
