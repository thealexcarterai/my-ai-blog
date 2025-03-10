#!/bin/bash
cd /home/akash/my-ai-blog  # Replace with the path to your blog

# Step 1: Pull the latest changes and overwrite local changes
echo "Pulling latest changes from GitHub..."
git fetch origin
git reset --hard origin/main

# Step 2: Generate a new post
echo "Generating a new blog post..."
python3 generate_post.py

# Step 3: Add, commit, and push changes
echo "Adding, committing, and pushing changes..."
git add .
git commit -m "Automated post update: $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main

# Step 4: Clean up old posts and images (older than 30 days)
echo "Cleaning up old posts and images..."

# Clean up old posts
if [ -d "_posts" ]; then
    find _posts/ -type f -mtime +30 -exec rm {} \;
    echo "Old posts cleaned up."
else
    echo "No _posts folder found."
fi

# Create assets/images folder if it doesn't exist
mkdir -p assets/images

# Clean up old images
if [ -d "assets/images" ]; then
    find assets/images/ -type f -mtime +30 -exec rm {} \;
    echo "Old images cleaned up."
else
    echo "No assets/images folder found."
fi

echo "Automation complete!"
