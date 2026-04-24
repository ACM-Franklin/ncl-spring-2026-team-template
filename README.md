# NCL Spring 2026 Team Template

This repository is a public starter template for the NCL Spring 2026 team game. It keeps the category scaffolding, environment setup, and write-up template, but no challenge content.

## Included

- Category guidance in [CATEGORY_REFERENCE.md](CATEGORY_REFERENCE.md)
- Write-up template in [templates/CHALLENGE_TEMPLATE.md](templates/CHALLENGE_TEMPLATE.md)
- Python environment bootstrap in [setup_env.sh](setup_env.sh)
- Python package list in [requirements.txt](requirements.txt)
- Empty category shells ready for challenge folders

## Layout

```text
ncl-spring-2026-team-template/
├── CATEGORY_REFERENCE.md
├── Cryptography/
├── Enumeration_Exploitation/
├── Forensics/
├── Log_Analysis/
├── Network_Traffic_Analysis/
├── Open_Source_Intelligence/
├── Password_Cracking/
│   └── wordlists/          # gitignored — large wordlists live here
├── Scanning_Recon/
├── Web_App_Exploitation/
├── templates/
│   └── CHALLENGE_TEMPLATE.md
├── requirements.txt
└── setup_env.sh
```

## Using The Template

1. Clone or fork this repository for your team workspace.
2. Run `bash setup_env.sh`, then activate the environment with `source .venv/bin/activate`.
3. Add challenge folders under the relevant category when you start a problem.
4. Keep each write-up in `writeup.md` and any helper script in `solve.py`.
5. Avoid committing secrets, recovered flags, or private team notes.

## Notes

- NCL flags usually start with `SKY-`, but the suffix format varies by challenge.
- Category-specific tips and tooling live in [CATEGORY_REFERENCE.md](CATEGORY_REFERENCE.md).
- If you need a write-up scaffold, copy [templates/CHALLENGE_TEMPLATE.md](templates/CHALLENGE_TEMPLATE.md).
