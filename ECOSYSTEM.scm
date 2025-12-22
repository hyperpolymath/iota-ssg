;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; ECOSYSTEM.scm — iota-ssg

(define-module (iota-ssg ecosystem)
  #:export (ecosystem-definition related-projects integration-points))

;;;; Ecosystem Definition
(define ecosystem-definition
  '((version . "1.0.0")
    (name . "iota-ssg")
    (type . "satellite")
    (tier . "infrastructure")
    (purpose . "Static Site Generator adapters for the hyperpolymath MCP ecosystem")

    (position-in-ecosystem
     "iota-ssg is a satellite project providing 28 SSG adapters synchronized from
      the poly-ssg-mcp hub. It serves as the adapter implementation layer for
      AI-assisted static site generation workflows, enabling polyglot development
      across 16+ programming language ecosystems.")

    (capabilities
     ("MCP adapter interface for 28 SSGs"
      "Language-agnostic CLI wrapper layer"
      "Standardized tool schema definitions"
      "Async command execution"
      "Connection state management"))

    (what-this-is
     ("Satellite SSG adapter collection"
      "MCP-compatible tool definitions"
      "Synchronized from poly-ssg-mcp hub"
      "Deno-based runtime adapters"))

    (what-this-is-not
     ("NOT the MCP server itself (that's poly-ssg-mcp)"
      "NOT a replacement for individual SSG tools"
      "NOT exempt from RSR compliance"
      "NOT a standalone application"))))

;;;; Related Projects
(define related-projects
  '((poly-ssg-mcp
     (name . "poly-ssg-mcp")
     (url . "https://github.com/hyperpolymath/poly-ssg-mcp")
     (relationship . "hub")
     (description . "Unified MCP server for 28 SSGs - provides adapter interface")
     (integration . "source-of-truth")
     (sync-direction . "hub-to-satellite")
     (differentiation
      "poly-ssg-mcp = Hub with MCP server and all adapters
       iota-ssg = Satellite with adapter implementations only"))

    (rhodium-standard-repositories
     (name . "rhodium-standard-repositories")
     (url . "https://github.com/hyperpolymath/rhodium-standard-repositories")
     (relationship . "standard")
     (description . "Repository standards and compliance guidelines")
     (integration . "compliance-framework"))

    (hyperpolymath-core
     (name . "hyperpolymath")
     (url . "https://github.com/hyperpolymath")
     (relationship . "organization")
     (description . "Parent ecosystem for polyglot development tools")
     (integration . "organizational-parent"))))

;;;; Integration Points
(define integration-points
  '((mcp-protocol
     (type . "interface")
     (description . "Model Context Protocol for AI tool interaction")
     (spec . "https://modelcontextprotocol.io/")
     (version . "1.0"))

    (deno-runtime
     (type . "runtime")
     (description . "Secure JavaScript/TypeScript runtime")
     (version . ">=1.40")
     (features . ("async/await" "subprocess" "permissions")))

    (ssg-cli-tools
     (type . "dependency")
     (description . "Individual SSG command-line tools")
     (installation . "per-adapter")
     (examples . ("zola" "hakyll" "mdbook" "hugo")))

    (github-actions
     (type . "ci-cd")
     (description . "Continuous integration and deployment")
     (workflows . ("codeql" "test" "release"))
     (actions-pinning . "sha-pinned"))))
