# Claude Code Custom Slash Commands

![Version](https://img.shields.io/badge/version-3.0.0-blue?style=for-the-badge)
![Total Commands](https://img.shields.io/badge/Total%20Commands-104%20and%20growing!-brightgreen?style=for-the-badge)
![GitHub Release](https://img.shields.io/github/v/release/qdhenry/Claude-Command-Suite?style=for-the-badge)
![License](https://img.shields.io/badge/license-MIT-purple?style=for-the-badge)
<!-- Dynamic badge (will work after PR merge): ![Total Commands](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/qdhenry/Claude-Command-Suite/main/.github/badges/command-count.json&style=for-the-badge) -->

> **Inspired by Anthropic's Claude Code Best Practices**: These custom commands are designed following the principles and recommendations outlined in [Anthropic's Claude Code Best Practices](https://www.anthropic.com/engineering/claude-code-best-practices) to maximize effectiveness and provide structured workflows for software development.

Custom slash commands for Claude Code that provide structured workflows for common software development tasks. Get comprehensive analysis, feature development, and code maintenance with organized namespace commands like `/dev:code-review`, `/test:generate-test-cases`, and `/deploy:prepare-release`.

## Quick Start

### Option 1: Direct Installation (Recommended)
Simply add command files directly to your project's `.claude/commands/` folder:

```bash
# Create the commands directory in your project
mkdir -p .claude/commands

# Download specific commands you need
curl -o .claude/commands/dev/code-review.md https://raw.githubusercontent.com/qdhenry/Claude-Command-Suite/main/.claude/commands/dev/code-review.md

# Or copy your own custom command files
cp my-custom-command.md .claude/commands/
```

### Option 2: Install All Commands
Use our installation script to set up all commands at once:

```bash
git clone https://github.com/qdhenry/Claude-Command-Suite.git
cd Claude-Command-Suite
chmod +x install.sh
./install.sh
```

### Start Using Commands
```bash
claude code
/dev:code-review           # Review your entire codebase
/project:create-feature    # Build a new feature
/security:security-audit   # Check for security issues
```

## Available Commands

🚀 **104+ Commands Organized by Namespace** - Discover the right tool for any task with our namespace organization.

## Command Namespaces

### 🚀 `/project:*` - Project Management
Initialize, configure, and manage projects. Includes commands for creating new projects, adding packages, tracking milestones, and monitoring project health.

- `/project:init-project` - Initialize new project with essential structure
- `/project:add-package` - Add and configure new project dependencies  
- `/project:create-feature` - Scaffold new feature with boilerplate code
- `/project:milestone-tracker` - Track and monitor project milestone progress
- `/project:project-health-check` - Analyze overall project health and metrics
- `/project:project-to-linear` - Sync project structure to Linear workspace
- `/project:project-timeline-simulator` - Simulate project outcomes with variable modeling

### 💻 `/dev:*` - Development Tools
Essential development utilities including code review, debugging, refactoring, and specialized AI modes for enhanced assistance.

- `/dev:code-review` - Comprehensive code quality review
- `/dev:debug-error` - Systematically debug and fix errors
- `/dev:explain-code` - Analyze and explain code functionality
- `/dev:refactor-code` - Intelligently refactor and improve code quality
- `/dev:fix-issue` - Identify and resolve code issues
- `/dev:ultra-think` - Deep analysis and problem solving mode
- `/dev:prime` - Enhanced AI mode for complex tasks
- `/dev:sentient` - AI assistant with advanced problem-solving capabilities
- `/dev:all-tools` - Display all available development tools
- `/dev:git-status` - Show detailed git repository status
- `/dev:clean-branches` - Clean up merged and stale git branches
- `/dev:directory-deep-dive` - Analyze directory structure and purpose
- `/dev:code-to-task` - Convert code analysis to Linear tasks
- `/dev:code-permutation-tester` - Test multiple code variations through simulation
- `/dev:architecture-scenario-explorer` - Explore architectural decisions through scenario analysis

### 🧪 `/test:*` - Testing Suite
Comprehensive testing tools covering unit tests, integration tests, E2E tests, coverage analysis, mutation testing, and visual regression testing.

- `/test:generate-test-cases` - Generate comprehensive test cases automatically
- `/test:write-tests` - Write unit and integration tests
- `/test:test-coverage` - Analyze and report test coverage
- `/test:setup-comprehensive-testing` - Setup complete testing infrastructure
- `/test:e2e-setup` - Configure end-to-end testing suite
- `/test:setup-visual-testing` - Setup visual regression testing
- `/test:setup-load-testing` - Configure load and performance testing
- `/test:add-mutation-testing` - Setup mutation testing for code quality
- `/test:add-property-based-testing` - Implement property-based testing framework
- `/test:test-changelog-automation` - Automate changelog testing workflow

### 🔒 `/security:*` - Security & Compliance
Security auditing, dependency scanning, authentication implementation, and security hardening tools to keep your codebase secure.

- `/security:security-audit` - Perform comprehensive security assessment
- `/security:dependency-audit` - Audit dependencies for security vulnerabilities
- `/security:security-hardening` - Harden application security configuration
- `/security:add-authentication-system` - Implement secure user authentication system

### ⚡ `/performance:*` - Performance Optimization
Tools for optimizing build times, bundle sizes, database queries, caching strategies, and overall application performance.

- `/performance:performance-audit` - Audit application performance metrics
- `/performance:optimize-build` - Optimize build processes and speed
- `/performance:optimize-bundle-size` - Reduce and optimize bundle sizes
- `/performance:optimize-database-performance` - Optimize database queries and performance
- `/performance:implement-caching-strategy` - Design and implement caching solutions
- `/performance:add-performance-monitoring` - Setup application performance monitoring
- `/performance:setup-cdn-optimization` - Configure CDN for optimal delivery
- `/performance:system-behavior-simulator` - Simulate system performance under various loads

### 🔄 `/sync:*` - Integration & Synchronization
Bidirectional sync between GitHub Issues and Linear, PR tracking, conflict resolution, and cross-platform task management.

- `/sync:sync-issues-to-linear` - Sync GitHub issues to Linear workspace
- `/sync:sync-linear-to-issues` - Sync Linear tasks to GitHub issues
- `/sync:bidirectional-sync` - Enable bidirectional GitHub-Linear synchronization
- `/sync:issue-to-linear-task` - Convert GitHub issues to Linear tasks
- `/sync:linear-task-to-issue` - Convert Linear tasks to GitHub issues
- `/sync:sync-pr-to-task` - Link pull requests to Linear tasks
- `/sync:sync-status` - Monitor GitHub-Linear sync health status
- `/sync:bulk-import-issues` - Bulk import GitHub issues to Linear
- `/sync:cross-reference-manager` - Manage cross-platform reference links
- `/sync:sync-automation-setup` - Setup automated synchronization workflows
- `/sync:sync-conflict-resolver` - Resolve synchronization conflicts automatically
- `/sync:task-from-pr` - Create Linear tasks from pull requests

### 📦 `/deploy:*` - Deployment & Release
Release preparation, automated deployments, rollback capabilities, containerization, and Kubernetes deployment management.

- `/deploy:prepare-release` - Prepare and validate release packages
- `/deploy:hotfix-deploy` - Deploy critical hotfixes quickly
- `/deploy:rollback-deploy` - Rollback deployment to previous version
- `/deploy:setup-automated-releases` - Setup automated release workflows
- `/deploy:containerize-application` - Containerize application for deployment
- `/deploy:setup-kubernetes-deployment` - Configure Kubernetes deployment manifests
- `/deploy:ci-setup` - Setup continuous integration pipeline
- `/deploy:add-changelog` - Generate and maintain project changelog
- `/deploy:changelog-demo-command` - Demo changelog automation features

### 📚 `/docs:*` - Documentation Generation
Automated documentation tools for APIs, architecture diagrams, onboarding guides, and troubleshooting documentation.

- `/docs:generate-api-documentation` - Auto-generate API reference documentation
- `/docs:doc-api` - Generate API documentation from code
- `/docs:create-architecture-documentation` - Generate comprehensive architecture documentation
- `/docs:create-onboarding-guide` - Create developer onboarding guide
- `/docs:migration-guide` - Create migration guides for updates
- `/docs:troubleshooting-guide` - Generate troubleshooting documentation

### 🔧 `/setup:*` - Configuration & Setup
Initial setup commands for development environments, linting, formatting, monitoring, database schemas, and API design.

- `/setup:setup-development-environment` - Setup complete development environment
- `/setup:setup-linting` - Setup code linting and quality tools
- `/setup:setup-formatting` - Configure code formatting tools
- `/setup:setup-monitoring-observability` - Setup monitoring and observability tools
- `/setup:setup-monorepo` - Configure monorepo project structure
- `/setup:migrate-to-typescript` - Migrate JavaScript project to TypeScript
- `/setup:modernize-deps` - Update and modernize project dependencies
- `/setup:design-database-schema` - Design optimized database schemas
- `/setup:create-database-migrations` - Create and manage database migrations
- `/setup:design-rest-api` - Design RESTful API architecture
- `/setup:implement-graphql-api` - Implement GraphQL API endpoints
- `/setup:setup-rate-limiting` - Implement API rate limiting

### 👥 `/team:*` - Team Collaboration
Team workflow tools including standup reports, sprint planning, retrospectives, workload balancing, and knowledge capture.

- `/team:standup-report` - Generate daily standup reports
- `/team:sprint-planning` - Plan and organize sprint workflows
- `/team:retrospective-analyzer` - Analyze team retrospectives for insights
- `/team:team-workload-balancer` - Balance team workload distribution
- `/team:issue-triage` - Triage and prioritize issues effectively
- `/team:estimate-assistant` - Generate accurate project time estimates
- `/team:session-learning-capture` - Capture and document session learnings
- `/team:memory-spring-cleaning` - Clean and organize project memory
- `/team:architecture-review` - Review and improve system architecture
- `/team:dependency-mapper` - Map and analyze project dependencies
- `/team:migration-assistant` - Assist with system migration planning
- `/team:decision-quality-analyzer` - Analyze decision quality with scenario testing

### 🎯 `/simulation:*` - AI Reality Simulators
*Inspired by "AI agents at their most under-leveraged point" by AI News & Strategy Daily | Nate B. Jones*

Advanced simulation and modeling tools for exponential decision value. Transform from linear execution gains to exponential strategic advantage through systematic scenario exploration, digital twins, and timeline compression.

- `/simulation:business-scenario-explorer` - Multi-timeline business exploration with constraint validation
- `/simulation:digital-twin-creator` - Systematic digital twin creation with data quality checks
- `/simulation:decision-tree-explorer` - Decision branch analysis with probability weighting
- `/simulation:market-response-modeler` - Customer/market response simulation with segment analysis
- `/simulation:timeline-compressor` - Accelerated scenario testing with confidence intervals
- `/simulation:constraint-modeler` - World constraint modeling with assumption validation
- `/simulation:future-scenario-generator` - Scenario generation with plausibility scoring
- `/simulation:simulation-calibrator` - Test and refine simulation accuracy

**📖 [Comprehensive Examples Guide](/.claude/commands/simulation/SIMULATION_EXAMPLES.md)** - Real-world usage patterns, argument templates, and command synergy workflows.

*Development tools `/dev:prime`, `/dev:sentient`, `/dev:all-tools` contributed by IndyDevDan (YouTube: https://www.youtube.com/@indydevdan) / DislerH (GitHub: https://github.com/disler)*


## How It Works

Claude Code automatically recognizes any markdown file in your project's `.claude/commands/` directory as a slash command. No installation or setup required - just add the file and start using it!

### Command Structure
Each command file needs:
- **Title**: `# Command Name`
- **Description**: Brief overview of what the command does
- **Instructions**: `## Instructions` section with detailed steps

Example minimal command (`my-command.md`):
```markdown
# My Custom Command

Performs a specific task in my project.

## Instructions

1. **First Step**
   - Do this thing
   - Check that thing

2. **Second Step**
   - Execute this action
   - Verify the result
```

Use it immediately with: `/namespace:my-command`

### Using Commands
Commands are available as `/namespace:command-name` in Claude Code. Each command follows a structured workflow that Claude executes automatically, ensuring consistent and thorough results across different projects.

**Example workflows:**
- `/dev:code-review` analyzes your entire codebase for quality, security, and performance
- `/project:create-feature dashboard` plans, implements, and tests a new dashboard feature
- `/dev:fix-issue 123` systematically resolves GitHub issue #123 with testing
- `/simulation:business-scenario-explorer Evaluate market expansion into Europe` models multiple business timelines and outcomes

## Common Workflows

**New Feature Development:**
```bash
/dev:code-review                    # Assess current state
/project:create-feature user-dashboard  # Implement feature
/security:security-audit                 # Verify security
```

**Bug Fixing:**
```bash
/dev:fix-issue 456                  # Fix the specific issue
/dev:code-review                    # Verify fix quality
```

**Code Maintenance:**
```bash
/security:dependency-audit               # Check for outdated dependencies
/performance:performance-audit              # Identify bottlenecks
/dev:refactor-code legacy-module    # Improve problematic areas
```

**Strategic Decision Making:**
```bash
/simulation:constraint-modeler              # Map decision constraints
/simulation:business-scenario-explorer      # Explore multiple timelines
/simulation:decision-tree-explorer          # Optimize decision choices
```

## Need More Details?

- **[Installation Guide](docs/INSTALLATION.md)** - Detailed installation methods, troubleshooting, and configuration
- **[Customization Guide](docs/CUSTOMIZATION.md)** - How to modify commands and create new ones
- **[Development Guide](docs/DEVELOPMENT.md)** - Contributing, testing, and best practices

## Contributing

This repository exists to collect and share useful slash commands for Claude Code. **Contributions are welcome!**

### Ways to Contribute

- **Share new commands** - Create commands for workflows you find useful
- **Improve existing commands** - Enhance commands with better practices
- **Add language-specific variants** - Adapt commands for specific tech stacks
- **Fix bugs** - Resolve issues with existing commands
- **Improve documentation** - Make guides clearer and more helpful

### Quick Contribution

1. Fork this repository
2. Add or modify commands in `.claude/commands/`
3. Test your changes thoroughly
4. Submit a pull request with a clear description

See **[Development Guide](docs/DEVELOPMENT.md)** for detailed contribution guidelines, testing practices, and quality standards.

## Automated Changelog

This project features automated changelog generation to track command additions and updates:

### 🤖 **Automatic Updates**
- **GitHub Actions Integration**: Automatically detects when new commands are added
- **Smart Detection**: Tracks both new command files and modifications to existing ones
- **Formatted Entries**: Generates properly formatted changelog entries with command descriptions
- **PR Comments**: Provides summary comments on pull requests with changelog updates

### 📝 **Manual Updates**
For manual changelog updates, use the provided script:
```bash
./scripts/update-changelog.sh
```

This script will:
- Scan all command files in `.claude/commands/`
- Extract command names and descriptions
- Update `CHANGELOG.md` with categorized command listings
- Create a backup of the existing changelog

### 📊 **Changelog Features**
- **Command Categorization**: Automatically groups commands by type (Analysis, Development, Testing, etc.)
- **Total Count Tracking**: Maintains accurate count of total available commands  
- **Description Extraction**: Pulls descriptions directly from command files
- **Backup Safety**: Creates backups before making changes

## Release Process

This project uses automated releases powered by [Conventional Commits](https://www.conventionalcommits.org/). Every merge to the main branch triggers our release workflow which:

1. **Analyzes commits** to determine version bump type
2. **Updates version** automatically based on commit types
3. **Generates release notes** from commit messages
4. **Creates GitHub releases** with downloadable bundles
5. **Updates changelog** with categorized changes

### Version Bumping Rules

- `fix:` commits → Patch release (1.0.0 → 1.0.1)
- `feat:` commits → Minor release (1.0.0 → 1.1.0)  
- Breaking changes → Major release (1.0.0 → 2.0.0)

### Making Releases

Releases happen automatically when you:
1. Merge PRs with conventional commit titles
2. Push directly to main with conventional commits

For details on contributing and commit formats, see [CONTRIBUTING.md](CONTRIBUTING.md).

## Requirements

- Claude Code version 1.0 or later
- Commands work with any programming language or framework

---

*Inspired by [Anthropic's Claude Code Best Practices](https://www.anthropic.com/engineering/claude-code-best-practices)*