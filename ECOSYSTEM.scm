;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — iota-ssg

(ecosystem
  (version "1.0.0")
  (name "iota-ssg")
  (type "satellite")
  (purpose "Static Site Generator adapters for the hyperpolymath MCP ecosystem")

  (position-in-ecosystem
    "Satellite project providing 28 SSG adapters for poly-ssg-mcp hub. Follows RSR guidelines.")

  (related-projects
    (project
      (name "poly-ssg-mcp")
      (url "https://github.com/hyperpolymath/poly-ssg-mcp")
      (relationship "hub")
      (description "Unified MCP server for 28 SSGs - provides adapter interface")
      (differentiation
        "poly-ssg-mcp = Hub with all SSG adapters via MCP
         This project = Satellite SSG implementation using the hub"))
    (project (name "rhodium-standard-repositories")
             (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
             (relationship "standard")))

  (what-this-is "Satellite SSG adapter collection synchronized with poly-ssg-mcp hub")
  (what-this-is-not "- NOT the MCP server itself (that's poly-ssg-mcp)\n- NOT exempt from RSR compliance"))
