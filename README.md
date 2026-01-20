# Portfolio Website - Freelancing Agency

Advanced Git & DevOps Assignment

## Group Information

- **H.D.S. MADHUSHANKA** - ITBIN-2211-0226 - Role: DevOps Engineer
- **R.H.M.P.S.RAJASINGHE** - ITBIN-2211-0269 - Role: Full-Stack Developer

## Project Description

A professional, responsive portfolio website for a freelancing agency. This project demonstrates a complete DevOps lifecycle including modular development, automated testing (CI), and continuous deployment (CD).

## Live Deployment

🔗 **Live URL:** https://portfolio-devops-assignment.vercel.app/

## Build Status

[![CI Pipeline](https://github.com/samitha01/portfolio-devops-assignment/actions/workflows/ci.yml/badge.svg)](https://github.com/samitha01/portfolio-devops-assignment/actions/workflows/ci.yml)
[![Deploy to Production](https://github.com/samitha01/portfolio-devops-assignment/actions/workflows/deploy.yml/badge.svg)](https://github.com/samitha01/portfolio-devops-assignment/actions/workflows/deploy.yml)

## Technologies Used

- HTML5, CSS3, JavaScript
- GitHub Actions (CI/CD)
- Vercel (Deployment Platform)

## Features

- Modular Folder Structure (Separated Styles and Scripts)
- Interactive Light/Dark Mode Toggle
- Responsive Portfolio & Services Sections
- Working Contact Form UI

## Branch Strategy

We implemented the following branching strategy as required:

- `main` - Production branch (Protected)
- `develop` - Integration branch
- `feature/*` - Feature development branches

## Merge Conflict Resolution

As seen in our repository history and provided documentation, a conflict occurred in `src/index.html` during a merge between the `develop` and `feature/samitha-title` branches.

- **Conflict:** Both branches modified the `<h1>` heading (Lines 7-11) with different branding titles.
- **Resolution:** We used the VS Code Merge Editor to "Accept Both Changes" for comparison, then manually finalized the code to use the agreed-upon agency title.
- **Verification:** The resolved file was committed and verified through our CI pipeline.

Also a conflict occurred in src/styles/style.css during a merge between the feature/changed-colors and feature/ui-color-change branches.

- **Conflict:** Both branches modified the --primary color variable (Line 2) with different branding colors (Red vs. Green).
- **Resolution:** We used the VS Code Merge Editor to "Accept Incoming Change" to select the Green branding, which finalized the agency’s official identity.
- **Verification:** The resolved file was committed and verified through our CI pipeline and is now live on Vercel.

## Individual Contributions

### H.D.S. MADHUSHANKA (DevOps Engineer)

- Repository initialization and configuration.
- Implementation of `.github/workflows/ci.yml` and `deploy.yml`.
- Configuration of Branch Protection Rules and Vercel Deployment
- Led the Release Management process by merging develop to main.
- Managed and documented the resolution of complex merge conflicts in CSS and HTML.
- **Key Commits:** `chore: initial repository setup, ci: add CI pipeline workflow, fix: resolve merge conflict by accepting green branding.`

### R.H.M.P.S.RAJASINGHE (Full-Stack Developer)

- Development of the modular landing page components.
- Implementation of the Light/Dark mode JavaScript logic.
- Creation and management of feature branches (`feature/contact-form`).
- Executed a major UI overhaul, implementing a modern card-based layout and floating navigation.
- Collaborated on cross-branch feature integration and branding experiments.
- **Key Commits:** `feat: add contact form section, feat: implement modern card-based UI, feat: update brand to green theme.`.

## Real-World Business Problem solved

**S&P Digital** is a startup agency that needed a way to collaborate on UI designs without breaking their production environment.

### The Challenge

Before this project, the team faced:

- **Merge Conflicts:** Simultaneous design changes (like the Green vs. Red branding debate) caused version control chaos.
- **Manual Errors:** Deploying files via FTP was slow and prone to missing CSS files.

### The DevOps Solution

We adopted a CI/CD workflow to solve these business pains:

1. **Automated Deployment:** Every merge to `main` is instantly live via Vercel, reducing deployment time by 90%.
2. **Conflict Resolution Strategy:** We established a branching rule where all features are tested in `develop` before hitting production.
3. **Collaboration:** Using GitHub Pull Requests allowed us to peer-review the "Professional UI" upgrade before the final release.

## Setup Instructions

1. Clone the repository:

   ```bash
   git clone [https://github.com/samitha01/portfolio-devops-assignment.git](https://github.com/samitha01/portfolio-devops-assignment.git)

   ```

2. Navigate to the project directory:
   ```
   cd portfolio-devops-assignment
   ```

Deployment Process
Our CI/CD pipeline automatically triggers on every push. The ci.yml verifies the build and structure on all branches, while deploy.yml confirms the production state upon merging to the main branch. All deployments are hosted via Vercel and can be verified through the GitHub Actions tab.

Verification Checklist
[x] Repository is PUBLIC.

[x] All team members have visible commits.

[x] CI/CD workflows show green status.

[x] Application is responsive and accessible in incognito mode.
