# BestCoffer AI Redaction Skill

Package target: skills.sh
Build environment: production
Skill version: 1.0.0

This package contains a `SKILL.md` prompt/config file, a Node.js runtime, and shell launchers for submitting a single uploaded file to the BestCoffer encrypted redaction service.

## Requirements

- Node.js >= 18
- Network access to `https://openapi4ai.bestcoffer.com.cn/` and `https://airedact_sr.bestcoffer.com.cn/`
- A BestCoffer API key configured through the platform secret/environment mechanism as `apiKey`, `API_KEY`, or `OPENCLAW_SKILL_API_KEY`

## Runtime

```bash
scripts/run.sh '{"parameters":{"file":"<absolute file path>","fileName":"<original file name>","instruction":"<redaction instruction>"}}'
```

Windows hosts can use `scripts/run.cmd` with the same JSON payload.

## Publishing Note

Publish by committing the generated skills/<skill-name>/ directory to a GitHub/GitLab repository, then verify discovery with `npx skills add owner/repo --list` or a local path before sharing the skills.sh install command.
