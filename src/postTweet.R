options(repos = "https://mran.microsoft.com")
# Installing packages ------------------------------------------------------------------

if (!require('httr')) install.packages('httr')
if (!require('jsonlite')) install.packages('jsonlite')
if (!require('ggplot2')) install.packages('ggplot2')
if (!require('twitteR')) install.packages("twitteR")
if (!require('rsvg')) install.packages("rsvg")
if (!require('rjson')) install.packages("rjson")
library('rjson')
library('rsvg')
library('twitteR')
library('httr')
library('jsonlite')
library('ggplot2')te')

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
