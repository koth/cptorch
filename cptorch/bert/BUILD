package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "bert_tokenizer",
    srcs = [
        "bert_tokenizer.cc",
        "bert_tokenizer.h",
    ],
    copts = [],
    linkstatic = True,
    deps = [
        "//cptorch/utils:logging",
        "//cptorch/utils:text_tokenizer",
        "//cptorch/utils:basic_string_util",
        "@utfcpp",
        "@utf8proc",
    ],
    alwayslink = True,
)

cc_test(
    name = "bert_tokenizer_test",
    srcs = [
        "bert_tokenizer_test.cc",
    ],
    deps = [
        ":bert_tokenizer",
        "@googletest//:gtest_main",
    ],
)
