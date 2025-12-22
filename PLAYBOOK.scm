;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; PLAYBOOK.scm — iota-ssg

(define-module (iota-ssg playbook)
  #:export (workflows operations runbooks recipes automations))

;;;; Workflows
(define workflows
  '((adapter-development
     (name . "Adapter Development Workflow")
     (description . "Creating or modifying SSG adapters")
     (steps
      (1 "Review existing adapter structure in adapters/")
      (2 "Copy template from existing adapter (e.g., zola.js)")
      (3 "Implement connect/disconnect/isConnected functions")
      (4 "Define tools array with MCP-compatible schemas")
      (5 "Test adapter locally: just test-adapter <name>")
      (6 "Add to adapters/README.md table")
      (7 "Run full test suite: just test")
      (8 "Commit with conventional commit message")))

    (hub-sync
     (name . "Hub Synchronization Workflow")
     (description . "Syncing adapters from poly-ssg-mcp hub")
     (steps
      (1 "Ensure hub is up to date")
      (2 "Run sync script: just sync-from-hub")
      (3 "Review changes: git diff adapters/")
      (4 "Test all adapters: just test")
      (5 "Commit sync: git commit -m 'chore: sync adapters from hub'")))

    (release
     (name . "Release Workflow")
     (description . "Creating a new release")
     (steps
      (1 "Ensure all tests pass: just test")
      (2 "Update CHANGELOG.md")
      (3 "Bump version in STATE.scm")
      (4 "Commit: git commit -m 'chore: prepare release vX.Y.Z'")
      (5 "Tag: git tag -s vX.Y.Z")
      (6 "Push: git push && git push --tags")
      (7 "Create GitHub release")))))

;;;; Operations
(define operations
  '((daily
     (("Review dependabot PRs" . "security")
      ("Check CI status" . "maintenance")))

    (weekly
     (("Sync from hub if needed" . "synchronization")
      ("Review open issues" . "triage")
      ("Update dependencies" . "maintenance")))

    (monthly
     (("Security audit" . "security")
      ("Documentation review" . "quality")
      ("Performance check" . "optimization")))

    (on-demand
     (("Incident response" . "security")
      ("Bug triage" . "support")
      ("Feature planning" . "development")))))

;;;; Runbooks
(define runbooks
  '((adapter-not-connecting
     (name . "Adapter Connection Failure")
     (symptoms . ("connect() returns false" "isConnected() is false"))
     (diagnosis
      (1 "Check if SSG CLI is installed: which <ssg-name>")
      (2 "Verify PATH includes SSG binary")
      (3 "Test CLI directly: <ssg-name> --version")
      (4 "Check Deno permissions"))
     (resolution
      (1 "Install missing SSG tool")
      (2 "Update PATH in environment")
      (3 "Grant Deno subprocess permission")))

    (ci-failure
     (name . "CI Pipeline Failure")
     (symptoms . ("GitHub Actions workflow fails" "Red status badge"))
     (diagnosis
      (1 "Check workflow logs in GitHub Actions")
      (2 "Identify failing step")
      (3 "Review recent changes"))
     (resolution
      (1 "Fix identified issue")
      (2 "Re-run workflow")
      (3 "Verify fix with local test")))

    (sync-conflict
     (name . "Hub Sync Conflict")
     (symptoms . ("Merge conflicts after sync" "Local changes overwritten"))
     (diagnosis
      (1 "Review conflicting files")
      (2 "Check if local modifications exist")
      (3 "Compare with hub version"))
     (resolution
      (1 "Backup local changes")
      (2 "Accept hub version for adapters/")
      (3 "Reapply local customizations if needed")))))

;;;; Recipes (Quick Commands)
(define recipes
  '((build
     (("just build" . "Run full build")
      ("just check" . "Syntax and lint check")
      ("just fmt" . "Format all files")))

    (test
     (("just test" . "Run all tests")
      ("just test-adapter zola" . "Test specific adapter")
      ("just test-e2e" . "Run E2E tests")))

    (development
     (("just dev" . "Start development mode")
      ("just watch" . "Watch for changes")
      ("just lint" . "Run linters")))

    (maintenance
     (("just sync-from-hub" . "Sync adapters from hub")
      ("just update-deps" . "Update dependencies")
      ("just clean" . "Clean build artifacts")))

    (documentation
     (("just docs" . "Generate documentation")
      ("just serve-docs" . "Serve docs locally")))))

;;;; Automations
(define automations
  '((github-actions
     (("ci.yml" . "Main CI pipeline - tests on push/PR")
      ("codeql.yml" . "Security scanning - weekly + push")
      ("release.yml" . "Release automation - on tag")))

    (dependabot
     (("npm" . "Weekly dependency updates")
      ("github-actions" . "Weekly action updates")))

    (hooks
     (("pre-commit" . "Lint and format before commit")
      ("commit-msg" . "Validate conventional commit format")))

    (scheduled
     (("Weekly security scan" . "Sundays 20:42 UTC")
      ("Dependency updates" . "Mondays 09:00 UTC")))))
