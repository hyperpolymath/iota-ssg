;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; STATE.scm — iota-ssg

(define-module (iota-ssg state)
  #:export (metadata current-position blockers-and-issues
            critical-next-actions roadmap session-history state-summary))

;;;; Metadata
(define metadata
  '((version . "0.2.0")
    (updated . "2025-12-17")
    (project . "iota-ssg")
    (maintainer . "hyperpolymath")
    (license . "MIT OR AGPL-3.0-or-later")))

;;;; Current Position
(define current-position
  '((phase . "v0.3 - Build System & CI/CD")
    (overall-completion . 75)
    (milestone . "Full project infrastructure")

    (components
     ((adapters
       (status . "complete")
       (completion . 100)
       (count . 28)
       (synchronized . #t))

      (documentation
       (status . "complete")
       (completion . 100)
       (files . ("README.adoc" "SECURITY.md" "CODE_OF_CONDUCT.md"
                 "CONTRIBUTING.md" "cookbook.adoc")))

      (scm-files
       (status . "complete")
       (completion . 100)
       (files . ("META.scm" "ECOSYSTEM.scm" "STATE.scm"
                 "PLAYBOOK.scm" "AGENTIC.scm" "NEUROSYM.scm")))

      (build-system
       (status . "complete")
       (completion . 100)
       (files . ("justfile" "Mustfile" ".tool-versions" "Containerfile")))

      (ci-cd
       (status . "complete")
       (completion . 100)
       (workflows . ("ci.yml" "codeql.yml" "release.yml")))

      (testing
       (status . "planned")
       (completion . 0)
       (target . "v0.4"))

      (hooks
       (status . "complete")
       (completion . 100)
       (types . ("pre-commit" "commit-msg")))))))

;;;; Blockers and Issues
(define blockers-and-issues
  '((critical ())
    (high-priority ())
    (medium-priority
     (("Add comprehensive test suite" . "v0.4 milestone")))
    (notes
     ("All template files finalized"
      "SCM files comprehensive"
      "CI/CD pipeline functional"
      "Hooks configured"))))

;;;; Critical Next Actions
(define critical-next-actions
  '((immediate
     (("Verify CI/CD workflows" . high)
      ("Test adapter functionality" . high)))
    (this-week
     (("Add unit tests" . medium)
      ("Create CHANGELOG.md" . medium)))
    (future
     (("Performance benchmarks" . low)
      ("Additional adapter coverage" . low)))))

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
     ((date . "2025-12-15")
      (session . "initial")
      (notes . "SCM files added, adapters synchronized"))

     ((date . "2025-12-17")
      (session . "security-review")
      (notes . "Fixed all template placeholders, created README"))

     ((date . "2025-12-17")
      (session . "infrastructure-complete")
      (notes . "Added all SCM files, Justfile, Mustfile, CI/CD, hooks, cookbook")))))

;;;; State Summary
(define state-summary
  '((project . "iota-ssg")
    (completion . 75)
    (phase . "v0.3 - Build System & CI/CD")
    (blockers . 0)
    (adapters . 28)
    (scm-files . 6)
    (updated . "2025-12-17")
    (next-milestone . "v0.4 - Testing & Validation")
    (health . "green")))
