#PRAW allows you to fetch posts from multiple subreddits using a
import praw

reddit = praw.Reddit(
    client_id="JackfruitPuzzled6765 ",
    client_secret="cxoPcK18H3yfnFfqbDwhtw",
    user_agent="multi_sub_streamer",
    refresh_token="YOUR_REFRESH_TOKEN"
)

# List of subreddits
subreddits = "wallstreetbets+stocks+investing"
subreddit = reddit.subreddit(subreddits)

