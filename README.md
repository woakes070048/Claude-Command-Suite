# Claude Code Custom Slash Commands
> **Inspired by Anthropic's Claude Code Best Practices**: These custom commands are designed following the principles and recommendations outlined in [Anthropic's Claude Code Best Practices](https://www.anthropic.com/engineering/claude-code-best-practices) to maximize effectiveness and provide structured workflows for software development.

Custom slash commands for Claude Code that provide structured workflows for common software development tasks. Get comprehensive analysis, feature development, and code maintenance with simple `/project:command-name` commands.

## Quick Start

1. **Install the commands:**
   ```bash
   git clone https://github.com/qdhenry/Claude-Command-Suite.git
   cd claude-rules
   chmod +x install.sh
   ./install.sh
   ```

2. **Start using commands:**
   ```bash
   claude code
   /project:code-review           # Review your entire codebase
   /project:create-feature login  # Build a new feature
   /project:security-audit        # Check for security issues
   ```

## Available Commands

### 🔍 Analysis Commands
- `/project:architecture-review` - Analyze system architecture and design patterns
- `/project:code-review` - Complete code quality and security review
- `/project:security-audit` - Security vulnerability assessment
- `/project:performance-audit` - Find performance bottlenecks
- `/project:dependency-audit` - Check dependency security and updates
- `/project:explain-code` - Explain complex code sections and architecture
- `/project:test-coverage` - Analyze and improve test coverage

### 🛠️ Development Commands
- `/project:create-feature` - Complete feature development workflow
- `/project:fix-issue` - Structured GitHub issue resolution
- `/project:refactor-code` - Safe refactoring with testing
- `/project:debug-error` - Systematic debugging approach
- `/project:optimize-build` - Build system improvements
- `/project:optimize-bundle-size` - Reduce application bundle size
- `/project:write-tests` - Generate comprehensive test suites

### 🚀 Project Setup Commands
- `/project:init-project [type] [framework]` - Initialize new project with industry best practices
- `/project:setup-monorepo [tool]` - Configure monorepo structure with workspace management
- `/project:add-package [name] [type]` - Add new package/module with proper structure
- `/project:setup-development-environment` - Configure development environment and tools
- `/project:migrate-to-typescript` - Convert JavaScript project to TypeScript
- `/project:setup-linting` - Configure code linting and quality tools
- `/project:setup-formatting` - Set up code formatting standards
- `/project:ci-setup` - Configure continuous integration pipelines

### 🧪 Testing Commands
- `/project:setup-comprehensive-testing` - Set up complete testing stack (unit, integration, e2e, visual)
- `/project:generate-test-cases [file/function]` - Auto-generate test cases for existing code
- `/project:setup-visual-testing` - Configure visual regression testing for UI components
- `/project:add-property-based-testing` - Set up property-based testing framework
- `/project:setup-load-testing` - Configure performance and load testing infrastructure
- `/project:add-mutation-testing` - Set up mutation testing to verify test quality
- `/project:e2e-setup` - Configure end-to-end testing infrastructure

### 📚 Documentation Commands
- `/project:generate-api-documentation` - Auto-generate comprehensive API documentation
- `/project:create-architecture-documentation` - Generate system architecture diagrams and docs
- `/project:create-onboarding-guide` - Generate comprehensive getting-started guide
- `/project:doc-api` - Create detailed API documentation
- `/project:add-changelog` - Set up automated changelog generation
- `/project:migration-guide` - Create migration guides for major changes
- `/project:troubleshooting-guide` - Generate troubleshooting documentation

### 🔒 Security Commands  
- `/project:security-hardening` - Apply comprehensive security best practices
- `/project:add-authentication-system` - Implement robust authentication and authorization
- `/project:setup-rate-limiting` - Configure API rate limiting and protection

### 🐳 DevOps Commands
- `/project:containerize-application` - Create optimal Docker configuration
- `/project:setup-kubernetes-deployment` - Generate Kubernetes manifests for deployment
- `/project:setup-monitoring-observability` - Add comprehensive monitoring, logging, and tracing
- `/project:add-performance-monitoring` - Implement detailed performance monitoring
- `/project:setup-cdn-optimization` - Configure CDN and asset optimization
- `/project:hotfix-deploy` - Deploy critical fixes with validation
- `/project:rollback-deploy` - Safely rollback deployments
- `/project:prepare-release` - Prepare production releases with validation
- `/project:clean-branches` - Clean up merged and stale branches

### 🗄️ Database Commands
- `/project:design-database-schema` - Design and validate database schemas
- `/project:create-database-migrations` - Generate safe database migrations
- `/project:optimize-database-performance` - Optimize database queries and performance

### 🌐 API Commands
- `/project:design-rest-api` - Design RESTful API endpoints
- `/project:implement-graphql-api` - Implement GraphQL API layer
- `/project:implement-caching-strategy` - Add intelligent caching systems

### 🔄 Maintenance Commands
- `/project:modernize-deps` - Update and modernize dependencies safely

## How It Works

Commands are available as `/project:command-name` in Claude Code. Each command follows a structured workflow that Claude executes automatically, ensuring consistent and thorough results across different projects.

**Example workflow:**
- `/project:code-review` analyzes your entire codebase for quality, security, and performance
- `/project:create-feature dashboard` plans, implements, and tests a new dashboard feature
- `/project:fix-issue 123` systematically resolves GitHub issue #123 with testing

## Common Workflows

**New Feature Development:**
```bash
/project:code-review                    # Assess current state
/project:create-feature user-dashboard  # Implement feature
/project:security-audit                 # Verify security
```

**Bug Fixing:**
```bash
/project:fix-issue 456                  # Fix the specific issue
/project:code-review                    # Verify fix quality
```

**Code Maintenance:**
```bash
/project:dependency-audit               # Check for outdated dependencies
/project:performance-audit              # Identify bottlenecks
/project:refactor-code legacy-module    # Improve problematic areas
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

## Requirements

- Claude Code version 1.0 or later
- Commands work with any programming language or framework

---

*Inspired by [Anthropic's Claude Code Best Practices](https://www.anthropic.com/engineering/claude-code-best-practices)*