# SwarmFix GitHub Pages Site

The SwarmFix public website is hosted at [sulphur-swarm.github.io](https://sulphur-swarm.github.io/).

## Repository

- **Repo:** [sulphur-swarm/sulphur-swarm.github.io](https://github.com/sulphur-swarm/sulphur-swarm.github.io)
- **Stack:** Hugo + PaperMod theme
- **Deployment:** GitHub Actions (auto-deploys on push to main)

## Structure

```
sulphur-swarm.github.io/
├── .github/workflows/deploy.yml  # CI/CD pipeline
├── archetypes/default.md         # Default content template
├── content/_index.md             # Landing page content
├── hugo.toml                     # Hugo configuration (PaperMod theme)
├── layouts/
│   ├── index.html                # Custom homepage layout
│   └── robots.txt                # SEO robots.txt template
├── static/                       # Static assets
└── themes/PaperMod/              # PaperMod theme (git submodule)
```

## Landing Page

The landing page includes:
- Hero section with title and subtitle
- Value proposition for SwarmFix
- 3-step process explanation (Submit → Swarm Resolves → Receive PR)
- CTA linking to the swarmfix intake repository
