;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Hyperpolymath
;; META.scm - Meta-level information for iota-ssg

(define project-meta
  `((version . "1.0.0")

    (architecture-decisions
      ((adr-001
         (title . "APL as Implementation Language")
         (status . "accepted")
         (date . "2024-12-29")
         (context . "Need a language optimized for array operations and massive parallelism")
         (decision . "Use Dyalog APL (with GNU APL fallback) for core engine")
         (consequences . ("Inherent vectorization without explicit parallelism"
                          "Concise code for complex transformations"
                          "Steep learning curve for maintainers"
                          "Excellent performance for high-volume sites")))
       (adr-002
         (title . "Rank-Based Routing")
         (status . "accepted")
         (date . "2024-12-29")
         (context . "Traditional file-system crawling is slow for large sites")
         (decision . "Map site hierarchy to array rank dimensions")
         (consequences . ("O(1) index-based access"
                          "Natural representation of nested structures"
                          "No recursive directory traversal"
                          "Schema must match data shape")))
       (adr-003
         (title . "ReScript Bridge for MCP")
         (status . "accepted")
         (date . "2024-12-29")
         (context . "MCP protocol requires JavaScript runtime integration")
         (decision . "Use ReScript for type-safe Deno adapter layer")
         (consequences . ("Clean separation of APL core and JS integration"
                          "Type safety at boundary"
                          "Deno for modern runtime features")))))

    (development-practices
      ((code-style . "apl-idioms")
       (security . "openssf-scorecard")
       (testing . "array-assertions")
       (versioning . "semver")
       (documentation . "asciidoc")
       (branching . "trunk-based")))

    (design-rationale
      ((why-apl . "Array operations are the natural model for batch page generation")
       (why-iota . "The iota function generates indices - the foundation of site structure")
       (why-not-numpy . "APL is a language, not a library - deeper integration with array thinking")))))
