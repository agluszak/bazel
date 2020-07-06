load("//tools/build_defs/cc:cc_import.bzl", "cc_import")
load("//tools/build_defs/cc/main:defs.bzl", "custom")

cc_binary(
    name = "main",
    srcs = ["main.cc"],
    deps = [
        "dep1",
        #        "dep2",
    ],
)

custom(
    name = "dep1",
    deps = [":dep2"],
)

cc_library(
    name = "dep2",
    srcs = ["test.cc"],
    hdrs = ["test.h"],
)
