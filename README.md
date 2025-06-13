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

### 🛠️ Development Commands
- `/project:create-feature` - Complete feature development workflow
- `/project:fix-issue` - Structured GitHub issue resolution
- `/project:refactor-code` - Safe refactoring with testing
- `/project:debug-error` - Systematic debugging approach
- `/project:optimize-build` - Build system improvements

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

- **[Installation Guide](INSTALLATION.md)** - Detailed installation methods, troubleshooting, and configuration
- **[Customization Guide](CUSTOMIZATION.md)** - How to modify commands and create new ones
- **[Development Guide](DEVELOPMENT.md)** - Contributing, testing, and best practices

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

See **[Development Guide](DEVELOPMENT.md)** for detailed contribution guidelines, testing practices, and quality standards.

## Requirements

- Claude Code version 1.0 or later
- Commands work with any programming language or framework

---

*Inspired by [Anthropic's Claude Code Best Practices](https://www.anthropic.com/engineering/claude-code-best-practices)*