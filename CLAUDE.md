# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This repository contains custom slash commands for Claude Code that provide specialized workflows for common software development tasks. These commands are designed to work with Claude Code's built-in slash command system as `/project:command-name`.

## Repository Structure

- `.claude/commands/` - Contains 25+ specialized command files that define workflows for development tasks
- `install.sh` - Installation script for setting up commands in projects (supports project-specific, global, and symlink installation)
- `README.md` - Comprehensive documentation for installation and usage

## Command Categories

The commands are organized into several categories:

**Analysis Commands:**
- `architecture-review` - Comprehensive architectural analysis
- `code-review` - Complete code quality review with security and performance analysis  
- `security-audit` - Security vulnerability assessment
- `performance-audit` - Performance bottleneck identification
- `dependency-audit` - Dependency security scanning

**Development Commands:**
- `create-feature` - End-to-end feature development workflow
- `fix-issue` - Structured GitHub issue resolution
- `refactor-code` - Safe refactoring workflow
- `debug-error` - Systematic debugging approach
- `write-tests` - Comprehensive testing implementation

**Setup/Maintenance Commands:**
- `setup-linting` - Configure linting and code quality tools
- `setup-formatting` - Code formatting configuration
- `ci-setup` - Continuous integration setup
- `dependency-audit` - Dependency management and updates

## Command Structure

Each command file follows a consistent markdown structure:
- Title with `# Command Name`
- Brief description
- Detailed step-by-step instructions under `## Instructions`
- Commands accept arguments via `$ARGUMENTS` placeholder

## Installation Methods

The repository supports three installation methods via `install.sh`:
1. **Project-specific** (`--project`): Installs to `./.claude/commands/`
2. **Global** (`--global`): Installs to `~/.claude/commands/`
3. **Symlink** (`--symlink`): Creates symbolic links for development

## Key Features

- **Comprehensive Workflows**: Each command provides systematic, step-by-step approaches
- **Cross-Language Support**: Commands adapt to different programming languages and frameworks
- **Best Practices**: Built following Anthropic's Claude Code Best Practices
- **Modular Design**: Commands can be used independently or in sequence
- **Customizable**: Command files can be modified for project-specific needs

## Usage Patterns

Commands are typically used in workflows like:
```
/project:code-review                    # Assess current state
/project:create-feature user-dashboard  # Implement feature
/project:security-audit                 # Verify security
/project:performance-audit              # Check performance
```

## Development Notes

When working on this repository:
- Command files use markdown format with specific structure requirements
- The install script requires bash and handles cross-platform installation
- Commands are designed to be language-agnostic but provide specific guidance for common tech stacks
- Each command emphasizes thorough analysis before making changes