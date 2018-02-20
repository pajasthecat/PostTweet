# Installing packages ------------------------------------------------------------------

if (!require('twitteR')) install.packages("twitteR")

# Set API Keys ---------------------------------------------------
api_key <- "aLr5A0XD77RLre9teUGVkE6pW"
api_secret <- "OM9A34Jf7GAGgmClNSdHiykfM5NnlJAPhWiCpKRjsFLH4GIxB4"
access_token <- "555298661-KisfodWZqSldn9ilnczGnjCv8bzg8SnKWkMpRXFu"
access_token_secret <- "Lj4MQe6MrGBxZGI1OTgG81EOZCp3JaOnXZdUlAiUFV2gH"

# Posting to Twitter ---------------------------------------------------
setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

tweet("Test")
