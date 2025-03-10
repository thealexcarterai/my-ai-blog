import subprocess
import datetime

def generate_blog_post():
    date = datetime.datetime.now().strftime("%Y-%m-%d")
    
    # Run AI model to generate content
    ai_response = subprocess.run(
        ["ollama", "run", "mistral", "Write an SEO-friendly blog post about latest trends on social media to follow."],
        capture_output=True, text=True
    )
    
    post_content = ai_response.stdout
    print(f"Generated Content: \n{post_content}")  # Print AI content to debug
    
    # Save to Jekyll blog format
    filename = f"_posts/{date}-ai-blog.md"
    print(f"Saving post to: {filename}")  # Print the file path to debug

    with open(filename, "w") as file:
        file.write(f"---\nlayout: post\ntitle: 'Latest AI Trends'\ndate: {date}\n---\n")
        file.write(post_content)

    print("Blog post generated successfully!")

generate_blog_post()

