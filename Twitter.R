library(twitteR)

consumer_key <- "B3i38PeZHor2l9F5joFlAVHah"
consumer_secret <- "nOV0AzxcMYmLBPeQypBEHLTPCo90sEQQSunBIW7lo2c5nZ0glI"
access_token <- "968248849692266497-w73OvaO10o0YDJFzfTlCdOMFSRTLmn6"
access_secret <- "0oLGVo0vbcL2jJgh3MnG4s1uZDpaRrVbxCpPMxN38ZU3G"

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
tw = twitteR::searchTwitter('#SchoolShooting -filter:retweets', n = 1e4, retryOnRateLimit = 1e3)
d = twitteR::twListToDF(tw)

write.csv(d, file = "TwitterData.csv")