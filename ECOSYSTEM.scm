;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Hyperpolymath
;; ECOSYSTEM.scm - Ecosystem positioning for iota-ssg

(ecosystem
  (version "1.0.0")
  (name "iota-ssg")
  (type "ssg-engine")
  (purpose "High-performance array-oriented static site generator using APL for vectorized page synthesis")

  (position-in-ecosystem
    (role "satellite")
    (hub "poly-ssg-mcp")
    (domain "high-performance-ssg")
    (uniqueness "Fastest SSG in poly-ssg family for high-volume documentation via APL vectorization"))

  (related-projects
    ((poly-ssg-mcp
       (relationship "hub")
       (description "Central MCP adapter hub for all poly-ssg engines"))
     (obli-ssg
       (relationship "sibling")
       (description "Privacy-focused Oberon SSG"))
     (terrapin-ssg
       (relationship "sibling")
       (description "Educational Logo-based SSG"))
     (befunge-ssg
       (relationship "sibling")
       (description "2D esoteric Befunge-based SSG"))
     (pharos-ssg
       (relationship "sibling")
       (description "Live image Pharo Smalltalk SSG"))
     (qed-ssg
       (relationship "sibling")
       (description "Multi-SSG adapter hub in Lean 4"))
     (parallax-ssg
       (relationship "sibling")
       (description "Parallel-first Chapel SSG"))))

  (what-this-is
    ("Static site generator written in APL"
     "Array-oriented template processing"
     "Vectorized high-throughput page generation"
     "Rank-based URL hierarchy"
     "Integration with ReScript/Deno ecosystem"
     "Part of poly-ssg-mcp family"))

  (what-this-is-not
    ("A general-purpose APL library"
     "A beginner-friendly tool"
     "A replacement for simple static sites"
     "A CMS or dynamic site generator")))
