# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

# def word_substituter(tweet)
#   tweetArray = tweet.split.collect do |word|
#     if dictionary.keys.include?(word.downcase)
#       word = dictionary[word.downcase]
#     else
#       word
#     end
#   end
#   tweetArray.join(" ")
# end

def bulk_tweet_shortener(array)
  array.each do |ele|
    puts word_substituter(ele)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  elsif tweet.length > 140
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    tweet
  elsif tweet.length > 140
    tweet[0..139]
  end
end
