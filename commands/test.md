Run `just --global-justfile test-branch`. Use a long timeout of at least 30 minutes.
  - If it fails, use the build-fixer-autosquash agent to fix failures.
  - Then run the command again. The command is smart and resumes from where it left off.
  - Repeat until all tests pass.
