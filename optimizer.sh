#!/bin/bash

# 🚀 Laravel Optimizer Pro
# Version: 4.0
# Purpose: Supercharge Laravel projects with rich animations and optimizations
# Author: Iqbolshoh
# Github: https://github.com/Iqbolshoh

# ANSI Color Codes for Vibrant Output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
ORANGE='\033[0;33m'
PURPLE='\033[0;35m'
NC='\033[0m'

# Global Variables
SCRIPT_NAME="Laravel Optimizer Pro"
VERSION="3.1"
LARAVEL_VERSION=""
START_TIME=$(date +%s)
TOTAL_STEPS=0
COMPLETED_STEPS=0
SKIPPED_STEPS=0

# Enhanced Animation Frames
SPINNER_FRAMES=("⠋" "⠙" "⠹" "⠸" "⠼" "⠴" "⠦" "⠧" "⠇" "⠏")
DOTS_FRAMES=("   " ".  " ".. " "..." " .." "  ." "   ")
ARROW_FRAMES=("=>   " "==>  " "===> " "====>" " ===>" "  ==>" "   =>")
BALL_FRAMES=("( ●    )" "(  ●   )" "(   ●  )" "(    ● )" "(     ●)" "(    ● )" "(   ●  )" "(  ●   )")
CHECKMARK_FRAMES=("▹▹▹▹▹" "▸▹▹▹▹" "▪▸▹▹▹" "▪▪▸▹▹" "▪▪▪▸▹" "▪▪▪▪▸" "▪▪▪▪▪" "✓✓✓✓✓")
STAR_FRAMES=("✧" "✦" "✶" "✷" "✸" "✹" "✺" "✻")

# Print header with version
print_header() {
    clear
    echo -e "${PURPLE}"
    echo -e "  _                          _   _           _       _             "
    echo -e " | |    __ _ _   _ _ __ ___ | | | |_ __   __| | __ _| |_ ___  _ __ "
    echo -e " | |   / _\` | | | | '_ \` _ \| | | | '_ \ / _\` |/ _\` | __/ _ \| '__|"
    echo -e " | |__| (_| | |_| | | | | | | |_| | |_) | (_| | (_| | || (_) | |   "
    echo -e " |_____\__,_|\__,_|_| |_| |_|\___/| .__/ \__,_|\__,_|\__\___/|_|   "
    echo -e "                                  |_|                              "
    echo -e "${NC}"
    echo -e "${BLUE}🚀 $SCRIPT_NAME v$VERSION 🚀${NC}"
    echo -e "${CYAN}Optimizing your Laravel project with cinematic experience...${NC}\n"
    echo -e "${YELLOW}▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔${NC}\n"
}

# Print formatted message with animation
print_message() {
    local type=$1 message=$2 duration=${3:-0}
    case $type in
        header) 
            echo -e "\n${BLUE}▄■ ${message} ■▄${NC}"
            [ $duration -gt 0 ] && spinner "${CYAN}Preparing${NC}" $duration
            ;;
        success) 
            echo -e "${GREEN}✓ ${message}${NC}"
            ((COMPLETED_STEPS++))
            update_progress
            ;;
        warning) 
            echo -e "${YELLOW}⚠ ${message}${NC}"
            ((SKIPPED_STEPS++))
            update_progress
            ;;
        error) 
            echo -e "${RED}✘ Error: ${message}${NC}"
            display_final_message
            exit 1 
            ;;
        info) 
            echo -e "${CYAN}ℹ ${message}${NC}"
            ;;
        task) 
            echo -e "${MAGENTA}• ${message}${NC}"
            ;;
        complete)
            star_animation "${GREEN}${message}" 2
            ;;
    esac
}

# Update and display progress
update_progress() {
    local total=$((TOTAL_STEPS - SKIPPED_STEPS))
    local progress=$(( (COMPLETED_STEPS * 100) / (total > 0 ? total : 1) ))
    [ $progress -gt 100 ] && progress=100
    
    echo -ne "\r${ORANGE}Progress: [${NC}"
    for ((i=0; i<progress/2; i++)); do echo -ne "${GREEN}■${NC}"; done
    for ((i=progress/2; i<50; i++)); do echo -ne "${RED}■${NC}"; done
    echo -ne "${ORANGE}] ${progress}%${NC}"
}

# Display spinner animation with message
spinner() {
    local message=$1
    local duration=$2
    local start_time=$(date +%s)
    local frame_index=0
    
    while [ $(( $(date +%s) - start_time )) -lt "$duration" ]; do
        printf "\r${message} ${SPINNER_FRAMES[$frame_index]}"
        frame_index=$(( (frame_index + 1) % ${#SPINNER_FRAMES[@]} ))
        sleep 0.1
    done
    printf "\r\033[K"
}

# Display expanding arrow animation
expanding_arrow() {
    local message=$1
    local duration=$2
    local start_time=$(date +%s)
    local frame_index=0
    
    while [ $(( $(date +%s) - start_time )) -lt "$duration" ]; do
        printf "\r${message} ${ARROW_FRAMES[$frame_index]}"
        frame_index=$(( (frame_index + 1) % ${#ARROW_FRAMES[@]} ))
        sleep 0.2
    done
    printf "\r\033[K"
}

# Display bouncing ball animation
bouncing_ball() {
    local message=$1
    local duration=$2
    local start_time=$(date +%s)
    local frame_index=0
    
    while [ $(( $(date +%s) - start_time )) -lt "$duration" ]; do
        printf "\r${message} ${BALL_FRAMES[$frame_index]}"
        frame_index=$(( (frame_index + 1) % ${#BALL_FRAMES[@]} ))
        sleep 0.2
    done
    printf "\r\033[K"
}

# Display star animation for completion
star_animation() {
    local message=$1
    local duration=$2
    local start_time=$(date +%s)
    local frame_index=0
    
    while [ $(( $(date +%s) - start_time )) -lt "$duration" ]; do
        printf "\r${message} ${STAR_FRAMES[$frame_index]} "
        frame_index=$(( (frame_index + 1) % ${#STAR_FRAMES[@]} ))
        sleep 0.2
    done
    echo -e "${NC}\n"
}

# Check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Validate system requirements
validate_requirements() {
    print_message header "System Validation" 1
    ((TOTAL_STEPS+=5))
    
    # Check PHP
    bouncing_ball "${CYAN}Checking PHP installation" 1
    if command_exists php; then
        php_version=$(php -v | grep -oP '(?<=PHP )([0-9]+\.[0-9]+)')
        print_message success "PHP $php_version detected"
    else
        print_message error "PHP is not installed"
    fi
    
    # Check Composer
    bouncing_ball "${CYAN}Checking Composer installation" 1
    if command_exists composer; then
        composer_version=$(composer --version | grep -oP '(?<=version )([0-9]+\.[0-9]+\.[0-9]+)')
        print_message success "Composer $composer_version detected"
    else
        print_message error "Composer is not installed"
    fi
    
    # Check Node.js
    bouncing_ball "${CYAN}Checking Node.js installation" 1
    if command_exists node; then
        node_version=$(node -v)
        print_message success "Node.js $node_version detected"
    else
        print_message warning "Node.js is not installed (optional for frontend)"
    fi
    
    # Check npm/yarn
    bouncing_ball "${CYAN}Checking package managers" 1
    if command_exists npm; then
        npm_version=$(npm -v)
        print_message success "npm v$npm_version detected"
    elif command_exists yarn; then
        yarn_version=$(yarn -v)
        print_message success "Yarn v$yarn_version detected"
    else
        print_message warning "No package manager found (npm/yarn required for frontend)"
    fi
    
    # Check Laravel project
    bouncing_ball "${CYAN}Verifying Laravel project" 1
    if [ -f "artisan" ]; then
        print_message success "Laravel project detected"
    else
        print_message error "Not in a Laravel project root (artisan not found)"
    fi
}

# Detect Laravel version
detect_laravel_version() {
    print_message header "Project Analysis" 1
    ((TOTAL_STEPS+=2))
    
    expanding_arrow "${CYAN}Detecting Laravel version" 2
    LARAVEL_VERSION=$(php artisan --version 2>/dev/null | grep -oP '\d+\.\d+')
    
    if [ -n "$LARAVEL_VERSION" ]; then
        print_message success "Laravel v$LARAVEL_VERSION detected"
    else
        print_message error "Failed to detect Laravel version"
    fi
    
    # Check .env file
    bouncing_ball "${CYAN}Checking environment configuration" 1
    if [ -f ".env" ]; then
        print_message success ".env file found"
    else
        print_message warning ".env file not found (copy from .env.example)"
        if [ -f ".env.example" ]; then
            cp .env.example .env
            print_message info "Created .env file from .env.example"
        fi
    fi
}

# Optimize Laravel
optimize_laravel() {
    print_message header "Laravel Optimization" 1
    ((TOTAL_STEPS+=6))
    
    # Clear optimizations
    expanding_arrow "${CYAN}Clearing existing optimizations" 3
    php artisan optimize:clear >/dev/null 2>&1
    print_message success "Optimizations cleared"
    
    # Cache config
    expanding_arrow "${CYAN}Caching configuration" 2
    php artisan config:cache >/dev/null 2>&1
    print_message success "Configuration cached"
    
    # Cache routes
    expanding_arrow "${CYAN}Caching routes" 2
    php artisan route:cache >/dev/null 2>&1
    print_message success "Routes cached"
    
    # Cache views
    expanding_arrow "${CYAN}Caching views" 2
    php artisan view:cache >/dev/null 2>&1
    print_message success "Views cached"
    
    # Fix permissions
    bouncing_ball "${CYAN}Adjusting file permissions" 2
    chmod -R 775 storage bootstrap/cache >/dev/null 2>&1
    print_message success "Permissions adjusted"
    
    # Clear logs
    bouncing_ball "${CYAN}Clearing log files" 1
    [ -d "storage/logs" ] && find storage/logs -type f -name "*.log" -exec truncate -s 0 {} \; 2>/dev/null
    print_message success "Logs cleared"
}

# Optimize Composer
optimize_composer() {
    print_message header "Composer Optimization" 1
    ((TOTAL_STEPS+=3))
    
    # Clear cache
    expanding_arrow "${CYAN}Clearing Composer cache" 3
    composer clear-cache >/dev/null 2>&1
    print_message success "Composer cache cleared"
    
    # Install dependencies
    expanding_arrow "${CYAN}Installing dependencies" 5
    composer install --optimize-autoloader --no-dev --no-interaction >/dev/null 2>&1
    print_message success "Dependencies installed"
    
    # Optimize autoloader
    expanding_arrow "${CYAN}Optimizing autoloader" 2
    composer dump-autoload -o >/dev/null 2>&1
    print_message success "Autoloader optimized"
}

# Build frontend assets
build_frontend() {
    print_message header "Frontend Optimization" 1
    ((TOTAL_STEPS+=2))
    
    if command_exists npm; then
        # Install npm dependencies
        expanding_arrow "${CYAN}Installing npm dependencies" 5
        npm ci --silent >/dev/null 2>&1
        print_message success "npm dependencies installed"
        
        # Build assets
        expanding_arrow "${CYAN}Building frontend assets" 7
        npm run prod --silent >/dev/null 2>&1
        print_message success "Frontend assets built"
    elif command_exists yarn; then
        # Install Yarn dependencies
        expanding_arrow "${CYAN}Installing Yarn dependencies" 5
        yarn install --silent >/dev/null 2>&1
        print_message success "Yarn dependencies installed"
        
        # Build assets
        expanding_arrow "${CYAN}Building frontend assets" 7
        yarn prod --silent >/dev/null 2>&1
        print_message success "Frontend assets built"
    else
        print_message warning "No package manager found (skipping frontend build)"
        ((SKIPPED_STEPS+=2))
    fi
}

# Database operations
handle_database() {
    print_message header "Database Operations" 1
    
    # Check database connection
    bouncing_ball "${CYAN}Checking database connection" 2
    if php artisan db:monitor >/dev/null 2>&1; then
        print_message success "Database connection successful"
        ((TOTAL_STEPS+=2))
        
        read -p "$(echo -e "${YELLOW}Run database migrations? (y/N): ${NC}")" run_migrations
        if [[ "$run_migrations" =~ ^[yY]([eE][sS])?$ ]]; then
            expanding_arrow "${CYAN}Running migrations" 5
            php artisan migrate:fresh --force --no-interaction >/dev/null 2>&1
            print_message success "Database migrated"
            
            read -p "$(echo -e "${YELLOW}Run database seeding? (y/N): ${NC}")" run_seeding
            if [[ "$run_seeding" =~ ^[yY]([eE][sS])?$ ]]; then
                expanding_arrow "${CYAN}Seeding database" 3
                php artisan db:seed --force --no-interaction >/dev/null 2>&1
                print_message success "Database seeded"
            else
                print_message warning "Database seeding skipped"
                ((SKIPPED_STEPS+=1))
            fi
        else
            print_message warning "Database migrations skipped"
            ((SKIPPED_STEPS+=2))
        fi
    else
        print_message warning "Database connection failed (skipping migrations)"
        ((SKIPPED_STEPS+=2))
    fi
}

# Start development server
start_development_server() {
    print_message header "Development Server" 1
    ((TOTAL_STEPS+=1))
    
    if command_exists netstat; then
        bouncing_ball "${CYAN}Checking port availability" 1
        if ! netstat -tulpn 2>/dev/null | grep -q ":8000"; then
            read -p "$(echo -e "${YELLOW}Start development server? (Y/n): ${NC}")" start_server
            if [[ ! "$start_server" =~ ^[nN][oO]?$ ]]; then
                expanding_arrow "${CYAN}Starting development server" 2
                php artisan serve --host=127.0.0.1 --port=8000 >/dev/null 2>&1 &
                SERVER_PID=$!
                sleep 2
                if kill -0 $SERVER_PID 2>/dev/null; then
                    print_message success "Server started at http://127.0.0.1:8000 (PID: $SERVER_PID)"
                    echo -e "${GREEN}Stop server with: kill $SERVER_PID${NC}"
                else
                    print_message error "Failed to start server"
                fi
            else
                print_message warning "Server startup skipped"
            fi
        else
            print_message warning "Port 8000 is already in use (server not started)"
        fi
    else
        print_message warning "netstat not available (port check skipped)"
        expanding_arrow "${CYAN}Starting development server" 2
        php artisan serve --host=127.0.0.1 --port=8000 >/dev/null 2>&1 &
        SERVER_PID=$!
        sleep 2
        if kill -0 $SERVER_PID 2>/dev/null; then
            print_message success "Server started at http://127.0.0.1:8000 (PID: $SERVER_PID)"
            echo -e "${GREEN}Stop server with: kill $SERVER_PID${NC}"
        else
            print_message error "Failed to start server"
        fi
    fi
}

# Show execution time
display_final_message() {
    local end_time=$(date +%s)
    local duration=$((end_time - START_TIME))
    local minutes=$((duration / 60))
    local seconds=$((duration % 60))
    
    echo -e "\n${PURPLE}▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔${NC}"
    
    if [ $minutes -gt 0 ]; then
        print_message complete "Optimization completed in ${minutes}m ${seconds}s"
    else
        print_message complete "Optimization completed in ${seconds}s"
    fi
    
    echo -e "${BLUE}🚀 Your Laravel project is now fully optimized! 🚀${NC}"
    echo -e "${CYAN}Thank you for using $SCRIPT_NAME v$VERSION${NC}\n"
}

# Main execution
print_header
validate_requirements
detect_laravel_version
optimize_laravel
optimize_composer
build_frontend
handle_database
start_development_server
display_final_message
