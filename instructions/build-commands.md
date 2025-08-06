- When a code change is ready, and we are about to return control to the user, do these things in order:
  - Remove obvious comments using the comment-cleaner agent
  - Verify the build passes using the precommit-runner agent
  - Commit to git using the git-commit-handler agent

- Don't run long-lived processes like development servers or file watchers
  - Don't run `npm run dev`
- If the build is slow or logs a lot, don't run it
  - Echo copy/pasteable commands and ask the user to run it
- If build speed is not obvious, figure it out and add notes to project-specific memory
