# Portfolio Website - Freelancing Agency

Advanced Git & DevOps Assignment

## Group Information

- **H.D.S. MADHUSHANKA** - ITBIN-2211-0226 - Role: DevOps Engineer
- **R.H.M.P.S.RAJASINGHE** - ITBIN-2211-0269 - Role: Full-Stack Developer

## Project Description

A professional, responsive portfolio website for a freelancing agency. This project demonstrates a complete DevOps lifecycle including modular development, automated testing (CI), and continuous deployment (CD).

## Live Deployment

🔗 **Live URL:** [https://portfolio-devops-assignment.vercel.app/]

## Build Status

[![CI/CD Production Pipeline](https://github.com/samitha01/portfolio-devops-assignment/actions/workflows/ci.yml/badge.svg)](https://github.com/samitha01/portfolio-devops-assignment/actions/workflows/ci.yml)

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

We implemented a professional Gitflow branching strategy:

- `main`: Production-ready code (Protected)
- `develop`: Integration branch for team collaboration
- `feature/*`: Individual branches for specific feature development

## Individual Contributions

### H.D.S. MADHUSHANKA (DevOps Engineer)

- Repository initialization and configuration.
- Implementation of `.github/workflows/ci.yml` and `deploy.yml`.
- Configuration of Branch Protection Rules and Vercel Deployment.
- Resolution of merge conflicts during the file structure migration.

### R.H.M.P.S.RAJASINGHE (Full-Stack Developer)

- Development of the modular landing page components.
- Implementation of the Light/Dark mode JavaScript logic.
- Creation and management of feature branches (`feature/contact-form`).
- Documentation and code review of the final production pull request.

## Setup Instructions

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/samitha01/portfolio-devops-assignment.git

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
