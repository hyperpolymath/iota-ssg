;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Hyperpolymath
;; STATE.scm - Project state for iota-ssg

(state
  (metadata
    (version "1.0.0")
    (schema-version "1.0")
    (created "2024-12-29")
    (updated "2025-01-18")
    (project "iota-ssg")
    (repo "hyperpolymath/iota-ssg"))

  (project-context
    (name "iota-ssg")
    (tagline "Array-oriented static site generator in APL with vectorized page synthesis")
    (tech-stack ("apl" "dyalog-apl" "gnu-apl" "rescript" "deno")))

  (current-position
    (phase "implemented")
    (overall-completion 100)
    (components
      ((core-engine 100 "APL SSG core in iota.apl")
       (array-templates 100 "Array-mapped template functions")
       (rank-routing 100 "Hierarchy through array rank")
       (rescript-bridge 100 "ReScript/Deno integration")))
    (working-features
      ("Array-oriented template processing"
       "Vectorized page synthesis"
       "Massive parallelism via APL operations"
       "Rank-based URL routing"
       "Zero-overhead metadata parsing"
       "Nickel schema validation"
       "MCP protocol support")))

  (route-to-mvp
    (milestones
      ((m1 "Core Implementation" completed
           (items
             ("APL array logic engine"
              "Index-based content access"
              "Template transformation")))
       (m2 "Parallelism" completed
           (items
             ("Vectorized page generation"
              "Rank-based hierarchy"
              "Typed frontmatter arrays")))
       (m3 "Integration" completed
           (items
             ("ReScript adapter bridge"
              "Deno runtime support"
              "poly-ssg-mcp adapter"))))))

  (blockers-and-issues
    (critical ())
    (high ())
    (medium ())
    (low ()))

  (critical-next-actions
    (immediate
      ("High-volume documentation example"
       "Performance benchmark suite"))
    (this-week
      ("Dyalog vs GNU APL comparison"
       "Edge deployment guide"))
    (this-month
      ("WASM compilation for browser"
       "Tutorial for APL newcomers"))))
