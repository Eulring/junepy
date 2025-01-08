commit_time=$(date +"%Y-%m-%d %H:%M:%S")
git_status=$(git status --porcelain)

if [ -n "$git_status" ]; then
    git add .
    git commit -m "$commit_time"
    git push origin main
else
    echo "No changes to commit"
fi
