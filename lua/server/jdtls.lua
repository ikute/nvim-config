-- =====================================
-- @path: <server/jdtls.lua>
-- @brief: Java language server
-- @see: https://github.com/eclipse-jdtls/eclipse.jdt.ls
-- ====================================

return {
    config = function(capabilities)
        vim.lsp.config("jdtls", {
            capabilities = capabilities,
            cmd = {
                "jdtls",
                "--jvm-arg=-javaagent:"
                .. vim.fn.expand("$MASON/packages/jdtls")
                .. "/lombok.jar",
                "-data",
                vim.fn.expand("~/.cache/jdtls-workspaces/") .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t"),
            },

            root_dir = vim.fs.root(0, {"gradlew", ".git", "mvnw"}),

            settings = {
                java = {
                    home = vim.fn.expand("$JAVA_HOME"),
                    eclipse = {downloadSources = true},
                    maven = {downloadSources = true},
                    compile = {
                        nullAnalysis = {
                            nonnull = {
                                "lombok.NonNull",
                                "javax.annotation.Nonnull",
                                "org.eclipse.jdt.annotation.NonNull",
                                "org.springframework.lang.NonNull",
                            },
                        },
                    },
                    referencesCodeLens = {enabled = true},
                    implementationsCodeLens = {enabled = true},
                    format = {
                        comments = {enabled = false},
                        settings = {
                            url = "file://" .. vim.fn.expand("~/.config/jdtls/idea-fmt.xml"),
                            profile = "idea"
                        },
                    },
                    sources = {
                        starThreshold = 9999,
                        staticStarThreshold = 9999,
                    },
                    completion = {
                        chain = {enabled = false},
                        guessMethodArguments = "off",
                        favouriteStaticMembers = {
                            "org.junit.jupiter.api.Assertions.*",
                            "org.junit.jupiter.api.Assumptions.*",
                            "org.mockito.Mockito.*",
                            "java.util.Objects.*",
                        },
                    },
                    configuration = {
                        updateBuildConfiguration = "interactive",
                        runtimes = {
                            {
                                name = "JavaSE-25",
                                path = vim.fn.expand("~/.sdkman/candidates/java/25.0.1-tem"),
                            },
                            {
                                name = "JavaSE-21",
                                path = vim.fn.expand("~/.sdkman/candidates/java/21.0.9-tem"),
                            },
                            {
                                name = "JavaSE-17",
                                path = vim.fn.expand("~/.sdkman/candidates/java/17.0.17-tem"),
                            },
                        },
                        projects = {
                            referencedLibraries = {
                                "build/classes/**/*.class",
                                "**/kotlin-stdlib-*.jar",
                                 "**/*.jar",
                            },
                        },
                    },
                },
            },

            init_options = {
                bundles = {},
                extendedClientCapabilities = {
                    progressReportProvider = true,
                    classFileContentsSupport = true,
                    generateToStringPromptSupport = true,
                    hashCodeEqualsPromptSupport = true,
                },
            },
        })
    end
}
