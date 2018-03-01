# Installing packages ------------------------------------------------------------------

if (!require('twitteR')) install.packages("twitteR", repos = "http://cran.us.r-project.org")
if (!require('rjson')) install.packages("rjson", repos = "http://cran.us.r-project.org")
library('rjson')
library('twitteR')
library('httr')
library('jsonlite')

# Set API Keys ---------------------------------------------------
credentials_file = "credentials.json"
credentials <- fromJSON(file=credentials_file)

api_key <- credentials$twitter$consumer_key
api_secret <- credentials$twitter$consumer_secret
access_token <- credentials$twitter$access_token
access_token_secret <- credentials$twitter$access_secret

# Posting to Twitter ---------------------------------------------------
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

tweet("Test")
