# Security And Privacy Notes

Package target: skills.sh
Build environment: production
Skill version: 1.0.0

- User files are uploaded to the BestCoffer redaction API for processing.
- API keys must be stored as platform secrets or environment variables, not in prompts, examples, or committed files.
- The runtime returns a task URL for status tracking and result download.
- The package requires outbound HTTPS access to BestCoffer service endpoints listed in the package manifest.
- Review platform-specific requirements before publishing because marketplaces may reject skills that log sensitive file names, instructions, credentials, or task identifiers.
