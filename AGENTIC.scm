;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; AGENTIC.scm — iota-ssg

(define-module (iota-ssg agentic)
  #:export (agent-capabilities tool-definitions
            interaction-patterns autonomy-levels))

;;;; Agent Capabilities
(define agent-capabilities
  '((primary-function . "SSG Adapter Management")
    (domain . "Static Site Generation")

    (capabilities
     ((adapter-interaction
       (description . "Connect to and control SSG adapters")
       (actions . ("connect" "disconnect" "execute-tool" "check-status")))

      (site-generation
       (description . "Generate static sites via adapters")
       (actions . ("init-site" "build-site" "serve-site" "check-site")))

      (adapter-discovery
       (description . "Discover and enumerate available adapters")
       (actions . ("list-adapters" "get-adapter-info" "get-tools")))

      (validation
       (description . "Validate adapter configurations and outputs")
       (actions . ("validate-config" "check-output" "verify-build")))))

    (constraints
     ("Must have SSG CLI installed for adapter to work"
      "Operates within Deno permission sandbox"
      "Cannot modify upstream hub adapters"
      "Read-only access to system paths"))))

;;;; Tool Definitions (MCP-compatible)
(define tool-definitions
  '((adapter-management
     ((list-adapters
       (description . "List all available SSG adapters")
       (input-schema . ((type . "object") (properties . ())))
       (output . "Array of adapter names and metadata"))

      (get-adapter-info
       (description . "Get detailed information about an adapter")
       (input-schema
        . ((type . "object")
           (properties
            . ((adapter . ((type . "string")
                           (description . "Adapter name")))))
           (required . ("adapter"))))
       (output . "Adapter metadata including tools"))

      (connect-adapter
       (description . "Connect to an SSG adapter")
       (input-schema
        . ((type . "object")
           (properties
            . ((adapter . ((type . "string")
                           (description . "Adapter name")))))
           (required . ("adapter"))))
       (output . "Connection status"))))

    (site-operations
     ((init-site
       (description . "Initialize a new static site")
       (input-schema
        . ((type . "object")
           (properties
            . ((adapter . ((type . "string")))
               (path . ((type . "string")))
               (options . ((type . "object")))))
           (required . ("adapter" "path"))))
       (output . "Initialization result"))

      (build-site
       (description . "Build a static site")
       (input-schema
        . ((type . "object")
           (properties
            . ((adapter . ((type . "string")))
               (path . ((type . "string")))
               (options . ((type . "object")))))
           (required . ("adapter"))))
       (output . "Build result"))

      (serve-site
       (description . "Start development server")
       (input-schema
        . ((type . "object")
           (properties
            . ((adapter . ((type . "string")))
               (path . ((type . "string")))
               (port . ((type . "number")))))
           (required . ("adapter"))))
       (output . "Server URL"))))))

;;;; Interaction Patterns
(define interaction-patterns
  '((request-response
     (description . "Single request, single response")
     (use-case . "Simple tool execution")
     (example . "Build a site with Zola"))

    (streaming
     (description . "Continuous output stream")
     (use-case . "Long-running operations")
     (example . "Development server output"))

    (polling
     (description . "Periodic status checks")
     (use-case . "Background task monitoring")
     (example . "Build progress"))

    (event-driven
     (description . "React to file system changes")
     (use-case . "Watch mode")
     (example . "Rebuild on file change"))))

;;;; Autonomy Levels
(define autonomy-levels
  '((level-0
     (name . "Manual")
     (description . "Human initiates all actions")
     (permissions . ("execute-with-approval")))

    (level-1
     (name . "Assisted")
     (description . "Agent suggests, human approves")
     (permissions . ("suggest" "execute-with-approval")))

    (level-2
     (name . "Supervised")
     (description . "Agent executes, human monitors")
     (permissions . ("execute-read-only" "suggest" "report")))

    (level-3
     (name . "Autonomous")
     (description . "Agent executes independently")
     (permissions . ("execute" "modify" "report"))
     (constraints . ("sandbox-only" "no-network-without-approval")))))
