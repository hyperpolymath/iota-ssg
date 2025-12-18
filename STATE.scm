;;; STATE.scm — iota-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define metadata
  '((version . "0.1.0") (updated . "2025-12-17") (project . "iota-ssg")))

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

(define session-history
  '((snapshots
     ((date . "2025-12-15") (session . "initial") (notes . "SCM files added"))
     ((date . "2025-12-17") (session . "security-review")
      (notes . "Fixed all template placeholders, updated SCM files, created README, completed security policy")))))

(define state-summary
  '((project . "iota-ssg")
    (completion . 50)
    (blockers . 0)
    (updated . "2025-12-17")
    (next-milestone . "v0.3 - Testing & CI/CD")))
