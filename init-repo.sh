#!/bin/bash
# Initialize the specifications repository

echo "🚀 Initializing Soft Recursion Specifications Repository..."

# Initialize git if not already done
if [ ! -d .git ]; then
    git init
    echo "✅ Git repository initialized"
fi

# Add all files
git add .

# Create initial commit
git commit -m "Initial specifications repository structure

- Added README with repository overview
- Created TRANSLATION-GUIDE for world->technical mappings  
- Added Echo Management Service specification example
- Created data model and event specifications
- Added state machine example
- Included service specification template
- Set up proper directory structure

This repository bridges the narrative world with concrete technical implementation."

echo "✅ Initial commit created"

# Set up remote (user will need to update URL)
echo ""
echo "📋 Next steps:"
echo "1. Add remote: git remote add origin git@github.com:soft-recursion/specifications.git"
echo "2. Push: git push -u origin main"
echo ""
echo "✅ Repository ready!"