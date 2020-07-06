load("@bazel_tools//tools/cpp:toolchain_utils.bzl", "find_cpp_toolchain")

def _my_transition_impl(settings, attr):
    _ignore = settings, attr
    print("transition")

    return {"//command_line_option:copt": ["FLAG"]}

my_transition = transition(
    implementation = _my_transition_impl,
    inputs = [],
    outputs = ["//command_line_option:copt"],
)

def _impl(ctx):
    print("hello")
    cc_toolchain = find_cpp_toolchain(ctx)

    linking_context = cc_common.create_linking_context(
        libraries_to_link = [],
    )
    compilation_context = cc_common.create_compilation_context(
    )

    return [CcInfo(
        compilation_context = compilation_context,
        linking_context = linking_context,
    )]

custom = rule(
    implementation = _impl,
    attrs = {
        "_whitelist_function_transition": attr.label(
            default = "@bazel_tools//tools/whitelists/function_transition_whitelist",
        ),
        "deps": attr.label_list(cfg = my_transition),
        "_cc_toolchain": attr.label(default = "@bazel_tools//tools/cpp:current_cc_toolchain"),
    },
)
