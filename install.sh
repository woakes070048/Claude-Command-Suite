#!/bin/bash

# Claude Code Custom Commands Installer
# This script helps install custom Claude Code commands for your projects

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COMMANDS_DIR="$SCRIPT_DIR/.claude/commands"

# Function to print colored output
print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

print_success() {
    echo -e "${GREEN}✅${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}❌${NC} $1"
}

# Function to check if Claude Code is installed
check_claude_code() {
    if ! command -v claude &> /dev/null; then
        print_error "Claude Code is not installed or not in PATH"
        echo "Please install Claude Code first: https://claude.ai/code"
        exit 1
    fi
    
    print_success "Claude Code is installed"
}

# Function to verify commands directory exists
check_commands_dir() {
    if [ ! -d "$COMMANDS_DIR" ]; then
        print_error "Commands directory not found: $COMMANDS_DIR"
        exit 1
    fi
    
    local command_count=$(find "$COMMANDS_DIR" -name "*.md" | wc -l)
    if [ "$command_count" -eq 0 ]; then
        print_error "No command files found in $COMMANDS_DIR"
        exit 1
    fi
    
    print_success "Found $command_count command files"
}

# Function to install to current project
install_to_project() {
    local target_dir="./.claude"
    
    print_info "Installing to current project directory..."
    
    # Create target directory
    mkdir -p "$target_dir/commands"
    
    # Copy command files
    cp "$COMMANDS_DIR"/*.md "$target_dir/commands/"
    
    print_success "Commands installed to $target_dir"
    
    # List installed commands
    echo
    print_info "Installed commands:"
    ls "$target_dir/commands" | sed 's/\.md$//' | sed 's/^/  \/project:/'
    
    echo
    print_info "To use these commands, run 'claude code' in this directory and type /project:command-name"
}

# Function to install globally
install_globally() {
    print_info "Installing globally..."
    
    # Use personal commands directory
    local target_dir="$HOME/.claude/commands"
    
    print_info "Installing to personal commands directory: $target_dir"
    
    # Create target directory
    mkdir -p "$target_dir"
    
    # Copy command files
    cp "$COMMANDS_DIR"/*.md "$target_dir/"
    
    print_success "Commands installed globally to $target_dir"
    
    # List installed commands
    echo
    print_info "Installed commands:"
    ls "$target_dir" | sed 's/\.md$//' | sed 's/^/  \/user:/'
    
    echo
    print_info "These commands are now available as /user:command-name in all your projects"
}

# Function to create symbolic link
install_symlink() {
    local target_dir="./.claude"
    
    print_info "Creating symbolic link to this repository..."
    
    if [ -e "$target_dir" ]; then
        print_warning "Target already exists: $target_dir"
        read -p "Remove it and create symlink? (y/N): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            rm -rf "$target_dir"
        else
            print_info "Installation cancelled"
            return
        fi
    fi
    
    # Create symbolic link to the .claude directory
    ln -s "$SCRIPT_DIR/.claude" "$target_dir"
    
    print_success "Symbolic link created: $target_dir -> $SCRIPT_DIR/.claude"
    print_info "Commands will stay updated with this repository"
    
    # List available commands
    echo
    print_info "Available commands:"
    ls "$COMMANDS_DIR" | sed 's/\.md$//' | sed 's/^/  \/project:/'
}

# Function to list available commands
list_commands() {
    echo
    print_info "Available commands:"
    echo
    
    for file in "$COMMANDS_DIR"/*.md; do
        if [ -f "$file" ]; then
            local basename=$(basename "$file" .md)
            local description=$(head -n 5 "$file" | grep -v "^#" | head -n 1 | sed 's/^[[:space:]]*//')
            printf "  ${GREEN}/project:%-20s${NC} %s\n" "$basename" "$description"
        fi
    done
    
    echo
}

# Function to show help
show_help() {
    echo "Claude Code Custom Commands Installer"
    echo
    echo "Usage: $0 [OPTION]"
    echo
    echo "Options:"
    echo "  -p, --project     Install to current project (creates ./.claude/commands/)"
    echo "  -g, --global      Install globally for all projects (creates ~/.claude/commands/)"
    echo "  -s, --symlink     Create symbolic link (for development)"
    echo "  -l, --list        List available commands"
    echo "  -h, --help        Show this help message"
    echo
    echo "Interactive mode (no options): Shows installation menu"
}

# Function to show interactive menu
show_menu() {
    echo
    echo "==================================="
    echo "Claude Code Custom Commands Installer"
    echo "==================================="
    echo
    echo "Choose installation method:"
    echo
    echo "1) Install to current project (recommended)"
    echo "   Creates ./.claude/commands/ in current directory"
    echo
    echo "2) Install globally"
    echo "   Available as /user:command-name in all your projects"
    echo
    echo "3) Create symbolic link (for development)"
    echo "   Links to this repository, stays updated"
    echo
    echo "4) List available commands"
    echo
    echo "5) Exit"
    echo
}

# Main function
main() {
    # Check prerequisites
    check_claude_code
    check_commands_dir
    
    # Handle command line arguments
    case "${1:-}" in
        -p|--project)
            install_to_project
            ;;
        -g|--global)
            install_globally
            ;;
        -s|--symlink)
            install_symlink
            ;;
        -l|--list)
            list_commands
            ;;
        -h|--help)
            show_help
            ;;
        "")
            # Interactive mode
            while true; do
                show_menu
                read -p "Enter your choice (1-5): " choice
                
                case $choice in
                    1)
                        install_to_project
                        break
                        ;;
                    2)
                        install_globally
                        break
                        ;;
                    3)
                        install_symlink
                        break
                        ;;
                    4)
                        list_commands
                        echo
                        read -p "Press Enter to continue..."
                        ;;
                    5)
                        print_info "Installation cancelled"
                        exit 0
                        ;;
                    *)
                        print_error "Invalid choice. Please enter 1-5."
                        echo
                        ;;
                esac
            done
            ;;
        *)
            print_error "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
}

# Run main function
main "$@"