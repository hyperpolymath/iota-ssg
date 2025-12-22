;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; META.scm — iota-ssg

(define-module (iota-ssg meta)
  #:export (architecture-decisions development-practices design-rationale))

;;;; Architecture Decision Records
(define architecture-decisions
  '((adr-001
     (title . "RSR Compliance")
     (status . "accepted")
     (date . "2025-12-15")
     (context . "Satellite project in hyperpolymath ecosystem requiring standardization")
     (decision . "Follow Rhodium Standard Repository guidelines at Gold level")
     (consequences . ("SHA-pinned actions" "SPDX headers" "Multi-platform CI"
                      "Comprehensive security policy" "SCM-based state tracking")))

    (adr-002
     (title . "MCP Adapter Architecture")
     (status . "accepted")
     (date . "2025-12-17")
     (context . "Need consistent interface across 28 different SSG adapters")
     (decision . "Standardized adapter interface with connect/disconnect/tools pattern")
     (consequences . ("Unified API" "Deno runtime" "Tool schema validation"
                      "Async command execution")))

    (adr-003
     (title . "Multi-Language SSG Support")
     (status . "accepted")
     (date . "2025-12-17")
     (context . "Supporting SSGs written in 16+ programming languages")
     (decision . "Language-agnostic adapter layer wrapping CLI tools")
     (consequences . ("Runtime independence" "CLI-based interaction"
                      "No language-specific dependencies in core")))

    (adr-004
     (title . "Hub-Satellite Synchronization")
     (status . "accepted")
     (date . "2025-12-17")
     (context . "Adapters maintained in poly-ssg-mcp hub")
     (decision . "One-way sync from hub to satellite via transfer scripts")
     (consequences . ("Single source of truth" "Automated synchronization"
                      "Local customization limited")))))

;;;; Development Practices
(define development-practices
  '((code-style (languages . ("javascript" "scheme")) (formatter . "prettier") (linter . "eslint"))
    (security (sast . "CodeQL") (credentials . "env vars only"))
    (testing (coverage-minimum . 70))
    (versioning (scheme . "SemVer 2.0.0"))))

    (documentation
     (format . "asciidoc")
     (api-docs . "jsdoc")
     (diagrams . "mermaid"))))

;;;; Design Rationale
(define design-rationale
  '((why-rsr
     "RSR ensures consistency, security, and maintainability across the hyperpolymath ecosystem.")
    (why-mcp
     "Model Context Protocol enables AI-assisted static site generation workflows.")
    (why-multi-ssg
     "Supporting diverse SSGs enables polyglot development and framework flexibility.")
    (why-satellite
     "Satellite architecture enables focused maintenance while hub coordinates.")
    (why-deno
     "Deno provides secure-by-default runtime with TypeScript support.")))

;;;; Component Registry (44 components adapted for iota-ssg)
(define component-registry
  '((adapters
     (status . "complete")
     (count . 28)
     (components
      ("babashka" "cobalt" "coleslaw" "cryogen" "documenter" "ema" "fornax"
       "franklin" "frog" "hakyll" "laika" "marmot" "mdbook" "nimble-publisher"
       "nimrod" "orchid" "perun" "pollen" "publish" "reggae" "scalatex"
       "serum" "staticwebpages" "tableau" "wub" "yocaml" "zola" "zotonic")))

    (build-system
     (status . "complete")
     (components
      (("justfile" . "Task runner recipes")
       ("mustfile" . "Required task definitions")
       ("containerfile" . "Container build spec")
       ("tool-versions" . "asdf version management"))))

    (testing
     (status . "planned")
     (components
      (("unit-tests" . "Adapter unit tests")
       ("integration-tests" . "SSG integration tests")
       ("e2e-tests" . "Full build verification")
       ("ci-pipeline" . "GitHub Actions workflow"))))

    (documentation
     (status . "complete")
     (components
      (("readme" . "README.adoc")
       ("cookbook" . "cookbook.adoc")
       ("security" . "SECURITY.md")
       ("contributing" . "CONTRIBUTING.md")
       ("code-of-conduct" . "CODE_OF_CONDUCT.md")
       ("adapter-docs" . "adapters/README.md"))))

    (scm-files
     (status . "complete")
     (components
      (("meta" . "META.scm")
       ("ecosystem" . "ECOSYSTEM.scm")
       ("state" . "STATE.scm")
       ("playbook" . "PLAYBOOK.scm")
       ("agentic" . "AGENTIC.scm")
       ("neurosym" . "NEUROSYM.scm"))))

    (configuration
     (status . "complete")
     (components
      (("gitignore" . ".gitignore")
       ("gitattributes" . ".gitattributes")
       ("dependabot" . ".github/dependabot.yml")
       ("codeql" . ".github/workflows/codeql.yml"))))))

;;;; Language Matrix
(define language-matrix
  '((clojure . ("babashka" "cryogen" "perun"))
    (rust . ("cobalt" "mdbook" "zola"))
    (common-lisp . ("coleslaw"))
    (julia . ("documenter" "franklin" "staticwebpages"))
    (haskell . ("ema" "hakyll"))
    (fsharp . ("fornax"))
    (racket . ("frog" "pollen"))
    (scala . ("laika" "scalatex"))
    (crystal . ("marmot"))
    (elixir . ("nimble-publisher" "serum" "tableau"))
    (nim . ("nimrod"))
    (kotlin . ("orchid"))
    (swift . ("publish"))
    (d . ("reggae"))
    (tcl . ("wub"))
    (ocaml . ("yocaml"))
    (erlang . ("zotonic"))))
