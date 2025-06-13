# Claude Code Custom Slash Commands

> **Inspired by Anthropic's Claude Code Best Practices**: These custom commands are designed following the principles and recommendations outlined in [Anthropic's Claude Code Best Practices](https://www.anthropic.com/engineering/claude-code-best-practices) to maximize effectiveness and provide structured workflows for software development.

This repository contains custom slash commands for Claude Code that provide specialized workflows for common software development tasks. These commands enable comprehensive analysis, development, and maintenance workflows for any codebase.

## Overview

These custom slash commands work with Claude Code's built-in slash command system. When installed properly, they become available as `/project:command-name` in your Claude Code sessions, providing predefined workflows with consistent, thorough results across different projects.

## Available Commands

### 🔍 Analysis Commands

- **`/project:architecture-review`** - Comprehensive architectural analysis and design pattern assessment
- **`/project:code-review`** - Complete code quality review with security and performance analysis  
- **`/project:security-audit`** - Systematic security vulnerability assessment and remediation guidance
- **`/project:performance-audit`** - Performance bottleneck identification and optimization recommendations
- **`/project:dependency-audit`** - Dependency security scanning and update recommendations

### 🛠️ Development Commands

- **`/project:create-feature`** - End-to-end feature development workflow with planning, implementation, and testing
- **`/project:fix-issue`** - Structured GitHub issue resolution with root cause analysis and testing
- **`/project:refactor-code`** - Safe refactoring workflow with automated testing and quality checks
- **`/project:debug-error`** - Systematic debugging approach for error resolution
- **`/project:optimize-build`** - Build system optimization and performance improvements

## Installation

### Quick Installation (Recommended)

Use the provided installation script for easy setup:

```bash
# Clone or download this repository
git clone <repository-url>
cd claude-rules

# Make the installer executable and run it
chmod +x install.sh
./install.sh
```

The script provides an interactive menu with options to:
- Install to current project (creates `./.claude/commands/`)
- Install globally for all projects
- Create a symbolic link for development
- List all available commands

#### Command Line Options

```bash
# Make executable first (if needed)
chmod +x install.sh

# Install to current project
./install.sh --project

# Install globally
./install.sh --global

# Create symbolic link
./install.sh --symlink

# List available commands
./install.sh --list

# Show help
./install.sh --help
```

### Manual Installation

#### Method 1: Project-Specific Installation

This method adds the commands to a specific project directory, making them available as `/project:command-name` when working in that project.

1. **Navigate to Your Project:**
   ```bash
   cd /path/to/your/project
   ```

2. **Create Claude Commands Directory:**
   ```bash
   # Create the .claude/commands directory structure
   mkdir -p .claude/commands
   ```

3. **Copy the Command Files:**  
   ```bash
   # Copy all command files from this repository
   cp /path/to/claude-rules/.claude/commands/*.md ./.claude/commands/
   
   # Or if you cloned this repo, copy from the local path:
   cp ./.claude/commands/*.md ./.claude/commands/
   ```

4. **Verify Installation:**
   ```bash
   # Check that all commands were copied
   ls -la .claude/commands/
   
   # You should see:
   # architecture-review.md
   # code-review.md
   # create-feature.md
   # debug-error.md
   # dependency-audit.md
   # fix-issue.md
   # optimize-build.md
   # performance-audit.md
   # refactor-code.md
   # security-audit.md
   ```

#### Method 2: Personal Commands Installation

This method makes the commands available as `/user:command-name` across all your projects.

1. **Create Personal Commands Directory:**
   ```bash
   # Create personal commands directory
   mkdir -p ~/.claude/commands
   ```

2. **Copy Command Files:**
   ```bash
   # Copy command files to personal directory
   cp /path/to/claude-rules/.claude/commands/*.md ~/.claude/commands/
   ```

#### Method 3: Symbolic Links (for Development)

If you want to keep the commands updated with this repository:

1. **Create Symbolic Link:**
   ```bash
   # In your project directory (for project commands)
   ln -s /path/to/claude-rules/.claude ./.claude
   
   # Or for personal commands:
   ln -s /path/to/claude-rules/.claude/commands ~/.claude/commands
   ```

### Verification and Testing

1. **Test Command Detection:**
   ```bash
   # Start Claude Code in your project directory  
   claude code
   
   # Type / to see available slash commands
   # You should see your custom commands listed as:
   # /project:architecture-review
   # /project:code-review
   # /project:create-feature
   # etc.
   ```

2. **Test a Simple Command:**
   ```bash
   # In Claude Code, try a basic command:
   /project:code-review
   
   # Claude should recognize the command and begin the code review workflow
   ```

### Configuration Requirements

#### Claude Code Version
Ensure you're using Claude Code version 1.0 or later, which supports the rules system:
```bash
claude --version
```

#### Project Structure
Your project structure should look like this after installation:
```
your-project/
├── .claude/
│   └── commands/
│       ├── architecture-review.md
│       ├── code-review.md
│       ├── create-feature.md
│       ├── debug-error.md
│       ├── dependency-audit.md
│       ├── fix-issue.md
│       ├── optimize-build.md
│       ├── performance-audit.md
│       ├── refactor-code.md
│       └── security-audit.md
├── src/
├── package.json
└── other project files...
```

### Troubleshooting Installation

#### Rules Not Recognized
If Claude Code doesn't recognize your rules:

1. **Check Directory Structure:**
   ```bash
   # Ensure correct directory structure
   ls -la .claude/commands/
   ```

2. **Verify File Permissions:**
   ```bash
   # Make sure files are readable
   chmod 644 .claude/commands/*.md
   ```

3. **Check Claude Code Configuration:**
   ```bash
   # Start Claude Code and verify commands are detected
   claude code
   # Then type / to see if your commands appear
   ```

4. **Restart Claude Code:**
   Sometimes you need to restart Claude Code after adding new rules.

#### Command Not Working
If a specific command doesn't work:

1. **Check File Format:**
   ```bash
   # Ensure files have proper markdown format
   head -5 .claude/commands/code-review.md
   ```

2. **Validate Markdown:**
   Make sure each command file follows the proper format with `# Command Name` as the first line.

3. **Check for Syntax Errors:**
   Review the command file for any formatting issues that might prevent parsing.

### Updating Rules

To update the rules when new versions are available:

1. **Backup Your Customizations:**
   ```bash
   # If you've customized any commands, backup first
   cp -r .claude .claude-backup
   ```

2. **Update Command Files:**
   ```bash
   # Pull latest version from this repository
   cp /path/to/updated/claude-rules/.claude/commands/*.md ./.claude/commands/
   ```

3. **Merge Your Customizations:**
   If you had custom modifications, carefully merge them back into the updated files.

### Using the Commands

Commands can be invoked with the `/project:` prefix followed by the command name and optional arguments:

#### Basic Usage
```bash
# Run a code review on the current repository
/project:code-review

# Perform a security audit
/project:security-audit

# Review the overall architecture
/project:architecture-review
```

#### Commands with Arguments
```bash
# Create a new feature (feature name becomes the argument)
/project:create-feature user-authentication

# Fix a specific GitHub issue by number
/project:fix-issue 123

# Refactor a specific component or module
/project:refactor-code payment-processing
```

## Command Details

### Analysis Commands

#### `@architecture-review`
Provides a comprehensive architectural analysis including:
- High-level system architecture mapping
- Design pattern assessment
- Dependency management review
- Scalability and security architecture evaluation
- Future-proofing recommendations

#### `@code-review`
Performs thorough code quality assessment:
- Repository structure analysis
- Code quality and style evaluation
- Security vulnerability scanning
- Performance bottleneck identification
- Testing coverage assessment

#### `@security-audit`
Conducts systematic security analysis:
- Dependency vulnerability scanning
- Authentication/authorization review
- Input validation assessment
- Data protection evaluation
- Infrastructure security check

### Development Commands

#### `/project:create-feature <feature-name>`
Implements complete feature development workflow:
- Feature planning and requirements analysis
- Architecture design and API planning
- Implementation with best practices
- Comprehensive testing strategy
- Documentation and deployment preparation

#### `/project:fix-issue <issue-number>`
Structured GitHub issue resolution:
- Issue analysis and reproduction
- Root cause identification
- Solution design and implementation
- Testing and quality assurance
- Pull request creation and follow-up

## Command Structure

Each command follows a consistent structure:

```markdown
# Command Name

Brief description of what the command does.

## Instructions

Detailed step-by-step workflow that Claude Code will follow when executing the command.

1. **Step Category**
   - Specific action items
   - Tool usage recommendations
   - Quality checkpoints

2. **Next Step Category**
   - Additional actions
   - Validation steps
   - Output requirements
```

## Customization

### Modifying Existing Commands

To customize a command:

1. Edit the corresponding `.md` file in the `.claude/commands/` directory
2. Modify the instructions to match your project's specific requirements
3. Add or remove steps as needed for your workflow

### Creating New Commands

To create a new command:

1. Create a new `.md` file in the `.claude/commands/` directory
2. Follow the established structure and naming convention
3. Include comprehensive step-by-step instructions
4. Test the command with various scenarios

### Project-Specific Adaptations

You can create project-specific versions of these commands by:

1. Copying the base command files to your project's `.claude/commands/` directory
2. Modifying the instructions to include project-specific:
   - Technology stack requirements
   - Coding standards and conventions
   - Testing frameworks and procedures
   - Deployment and CI/CD processes

## Best Practices

### When Using Commands

1. **Start with Analysis**: Use analysis commands (`/project:code-review`, `/project:architecture-review`) before making changes
2. **Use Specific Arguments**: Provide clear, descriptive arguments for commands that accept them
3. **Follow Up**: Use multiple commands in sequence for complex workflows
4. **Review Output**: Always review and validate the command output before proceeding

### Command Execution Tips

- **Be Specific**: Use descriptive names for features and components
- **Context Matters**: Run commands from the appropriate directory (usually project root)
- **Iterative Approach**: Break complex tasks into smaller, focused command executions
- **Documentation**: Keep track of command usage and results for future reference

## Integration with Development Workflow

### Typical Workflow Patterns

1. **New Feature Development:**
   ```bash
   /project:code-review                    # Assess current state
   /project:create-feature user-dashboard  # Implement feature
   /project:security-audit                 # Verify security
   /project:performance-audit              # Check performance
   ```

2. **Bug Fix Process:**
   ```bash
   /project:fix-issue 456                  # Fix the specific issue
   /project:code-review                    # Verify fix quality
   /project:security-audit                 # Ensure no new vulnerabilities
   ```

3. **Maintenance and Optimization:**
   ```bash
   /project:dependency-audit               # Check for outdated dependencies
   /project:performance-audit              # Identify bottlenecks
   /project:refactor-code legacy-module    # Improve problematic areas
   ```

## Troubleshooting

### Common Issues

1. **Command Not Found**: Ensure the `.md` file exists in the `.claude/commands/` directory
2. **Permission Errors**: Check file permissions and Claude Code configuration
3. **Incomplete Execution**: Verify all required tools and dependencies are available

### Getting Help

- Check the individual command files for detailed instructions
- Review Claude Code documentation for rules system configuration
- Ensure your development environment has the necessary tools installed

## Contributing

To contribute improvements to these commands:

1. Test your changes thoroughly across different project types
2. Follow the established documentation format
3. Include examples and use cases
4. Update this README with any new commands or significant changes

---

These custom slash commands are designed to enhance your development workflow with Claude Code, providing consistent, thorough approaches to common software development tasks. They work across different technologies and project types, adapting to your specific codebase and requirements.