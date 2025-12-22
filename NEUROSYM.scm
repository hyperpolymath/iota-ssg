;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; NEUROSYM.scm — iota-ssg

(define-module (iota-ssg neurosym)
  #:export (symbolic-representations neural-mappings
            reasoning-patterns knowledge-graph))

;;;; Symbolic Representations
(define symbolic-representations
  '((domain-ontology
     (root . "static-site-generation")

     (concepts
      ((ssg
        (definition . "Static Site Generator")
        (properties . ("language" "paradigm" "features"))
        (relations . ("generates" "transforms" "templates")))

       (adapter
        (definition . "MCP adapter wrapping SSG CLI")
        (properties . ("name" "tools" "connection-state"))
        (relations . ("wraps" "exposes" "connects")))

       (site
        (definition . "Collection of static files")
        (properties . ("content" "templates" "output"))
        (relations . ("built-by" "served-from" "deployed-to")))

       (content
        (definition . "Source content for site generation")
        (properties . ("format" "frontmatter" "body"))
        (relations . ("transformed-to" "templated-with")))

       (template
        (definition . "Layout and structure definitions")
        (properties . ("engine" "syntax" "partials"))
        (relations . ("applied-to" "includes" "extends"))))))

    (language-categories
     ((functional . ("haskell" "ocaml" "elixir" "erlang" "clojure"))
      (systems . ("rust" "d" "nim" "crystal"))
      (jvm . ("kotlin" "scala" "clojure"))
      (beam . ("elixir" "erlang"))
      (scientific . ("julia"))
      (lisp . ("clojure" "common-lisp" "racket" "scheme"))
      (web . ("swift" "tcl")))))

;;;; Neural Mappings
(define neural-mappings
  '((embedding-spaces
     ((adapter-similarity
       (description . "Adapters clustered by SSG language family")
       (dimensions . 128)
       (clusters . ("functional" "systems" "jvm" "lisp" "scientific")))

      (tool-similarity
       (description . "Tools clustered by operation type")
       (dimensions . 64)
       (clusters . ("init" "build" "serve" "check" "version")))

      (language-similarity
       (description . "Languages by paradigm and features")
       (dimensions . 256)
       (clusters . ("functional" "imperative" "hybrid")))))

    (attention-patterns
     ((adapter-selection
       (description . "Selecting appropriate adapter for task")
       (factors . ("language-preference" "feature-requirements" "performance")))

      (tool-routing
       (description . "Routing to correct tool for operation")
       (factors . ("operation-type" "input-schema" "adapter-state")))

      (error-recovery
       (description . "Recovering from adapter failures")
       (factors . ("error-type" "retry-count" "fallback-options"))))))

;;;; Reasoning Patterns
(define reasoning-patterns
  '((deductive
     ((adapter-capability-inference
       (premise-1 . "Adapter X wraps SSG Y")
       (premise-2 . "SSG Y supports feature Z")
       (conclusion . "Adapter X can perform feature Z"))

      (language-tool-inference
       (premise-1 . "SSG is written in language L")
       (premise-2 . "Language L requires runtime R")
       (conclusion . "Adapter needs runtime R installed"))))

    (inductive
     ((pattern-recognition
       (observations . ("Rust SSGs are fast" "Haskell SSGs are composable"))
       (generalization . "Language paradigm influences SSG characteristics"))

      (adapter-behavior
       (observations . ("connect() succeeds when CLI installed"))
       (generalization . "Adapter health depends on CLI availability"))))

    (abductive
     ((failure-diagnosis
       (observation . "Adapter fails to connect")
       (best-explanation . "SSG CLI not installed or not in PATH"))

      (performance-explanation
       (observation . "Build is slow")
       (best-explanation . "Large number of files or complex templates"))))

    (analogical
     ((adapter-transfer
       (source . "zola adapter pattern")
       (target . "new rust SSG adapter")
       (mapping . "Same CLI interaction pattern applies"))

      (language-family-transfer
       (source . "elixir adapter patterns")
       (target . "erlang adapter")
       (mapping . "BEAM runtime similarities enable pattern reuse"))))))

;;;; Knowledge Graph
(define knowledge-graph
  '((nodes
     ((adapters . 28)
      (languages . 17)
      (tools . 140)  ; ~5 tools per adapter average
      (operations . 5)  ; init, build, serve, check, version
      (concepts . 50)))

    (edges
     ((adapter-language . 28)      ; Each adapter has one language
      (adapter-tools . 140)        ; Adapters have multiple tools
      (language-paradigm . 17)     ; Each language has paradigms
      (tool-operation . 140)       ; Each tool maps to operation type
      (concept-relations . 200)))  ; Concept interconnections

    (traversal-patterns
     ((find-adapters-by-language
       (start . "language-node")
       (path . "language->adapter")
       (result . "adapter-set"))

      (find-tools-by-operation
       (start . "operation-node")
       (path . "operation->tool->adapter")
       (result . "tool-list"))

      (find-similar-adapters
       (start . "adapter-node")
       (path . "adapter->language->paradigm->language->adapter")
       (result . "similar-adapter-list"))))))
