load("//tools/build_defs/cc:cc_import.bzl", "cc_import")

cc_binary(
    name = "main",
    srcs = ["main.cc"],
    features = ["supports_start_end_lib"],
    deps = ["foo"],
)

cc_library(
    name = "foo",
    srcs = [
        "bar.o",
        "foo.o",
    ],
    hdrs = [
        "bar.h",
        "foo.h",
    ],
)
