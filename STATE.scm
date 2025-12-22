;;; STATE.scm — iota-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; STATE.scm — iota-ssg

(define-module (iota-ssg state)
  #:export (metadata current-position blockers-and-issues
            critical-next-actions roadmap session-history state-summary))

;;;; Metadata
(define metadata
  '((version . "0.1.0") (updated . "2025-12-17") (project . "iota-ssg")))

;;;; Current Position
(define current-position
  '((phase . "v0.2 - Documentation & Security Complete")
    (overall-completion . 50)
    (components
     ((rsr-compliance ((status . "complete") (completion . 100)))
      (documentation ((status . "complete") (completion . 100)))
      (security-policy ((status . "complete") (completion . 100)))
      (adapters ((status . "synchronized") (completion . 100) (count . 28)))
      (testing ((status . "pending") (completion . 0)))
      (ci-cd ((status . "configured") (completion . 75)))))))

(define blockers-and-issues
  '((critical ())
    (high-priority ())
    (notes ("CodeQL workflow needs build commands for full analysis"))))

;;;; Critical Next Actions
(define critical-next-actions
  '((immediate
     (("Add adapter tests" . high)
      ("Complete CI/CD build configuration" . high)))
    (this-week
     (("Add CHANGELOG.md" . medium)
      ("Review adapter functionality" . medium)))
    (future
     (("Add more SSG adapters" . low)
      ("Performance optimizations" . low)))))

(define roadmap
  '((v0.1 ((title . "Initial Setup")
           (status . "complete")
           (items ("RSR compliance" "Repository structure" "SCM files"))))
    (v0.2 ((title . "Documentation & Security")
           (status . "complete")
           (items ("README.adoc" "SECURITY.md finalized" "CODE_OF_CONDUCT.md finalized"
                   "CONTRIBUTING.md finalized" "SCM files updated"))))
    (v0.3 ((title . "Testing & CI/CD")
           (status . "planned")
           (items ("Add adapter unit tests" "CodeQL build configuration"
                   "Integration tests" "Coverage reporting"))))
    (v0.4 ((title . "Enhanced Adapters")
           (status . "planned")
           (items ("Add more SSG adapters" "Improve error handling"
                   "Add adapter validation" "Documentation generation"))))
    (v1.0 ((title . "Stable Release")
           (status . "planned")
           (items ("Full test coverage" "Performance benchmarks"
                   "Complete documentation" "Release automation"))))))

;;;; Roadmap
(define roadmap
  '((v0.1
     (title . "Initial Setup")
     (status . "complete")
     (date . "2025-12-15")
     (items . ("RSR compliance" "Repository structure" "Initial SCM files"
               "Adapter synchronization from hub")))

    (v0.2
     (title . "Documentation & Security")
     (status . "complete")
     (date . "2025-12-17")
     (items . ("README.adoc complete" "SECURITY.md finalized"
               "CODE_OF_CONDUCT.md finalized" "CONTRIBUTING.md finalized"
               "All template placeholders replaced")))

    (v0.3
     (title . "Build System & CI/CD")
     (status . "complete")
     (date . "2025-12-17")
     (items . ("Justfile with comprehensive recipes" "Mustfile requirements"
               "Full CI/CD pipeline" "Git hooks configuration"
               "Container support" "cookbook.adoc"
               "All SCM files (META, ECOSYSTEM, STATE, PLAYBOOK, AGENTIC, NEUROSYM)")))

    (v0.4
     (title . "Testing & Validation")
     (status . "planned")
     (items . ("Adapter unit tests" "Integration tests"
               "E2E build verification" "Coverage reporting"
               "Adapter validation framework")))

    (v0.5
     (title . "Enhanced Tooling")
     (status . "planned")
     (items . ("LSP support exploration" "Editor integrations"
               "Performance optimization" "Caching strategies")))

    (v1.0
     (title . "Stable Release")
     (status . "planned")
     (items . ("Full test coverage" "Performance benchmarks"
               "Complete documentation" "Release automation"
               "Semantic versioning enforcement")))))

;;;; Session History
(define session-history
  '((snapshots
     ((date . "2025-12-15") (session . "initial") (notes . "SCM files added"))
     ((date . "2025-12-17") (session . "security-review")
      (notes . "Fixed all template placeholders, updated SCM files, created README, completed security policy")))))

;;;; State Summary
(define state-summary
  '((project . "iota-ssg")
    (completion . 50)
    (blockers . 0)
    (updated . "2025-12-17")
    (next-milestone . "v0.3 - Testing & CI/CD")))
