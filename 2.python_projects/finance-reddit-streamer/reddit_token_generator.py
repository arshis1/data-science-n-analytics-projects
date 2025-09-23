import praw

reddit = praw.Reddit(
    client_id="JackfruitPuzzled6765",
    client_secret="cxoPcK18H3yfnFfqbDwhtw",
    redirect_uri="http://localhost:8080",
    user_agent="wallstreetbets_token_generator"
)

# OAuth URL to authorize
auth_url = reddit.auth.url(['identity', 'read'], 'unique_state', 'permanent')
print(f"Go to this URL in your browser:\n{auth_url}")
