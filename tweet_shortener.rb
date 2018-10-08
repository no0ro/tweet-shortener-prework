def dictionary 
  change = {
    "hello" => 'hi',
    "for" => '4',
    "four" => '4',
    "to" => '2',
    "two" => '2', 
    "too" => '2',
    'be' => 'b',
    'you' => 'u',
    "at" => "@", 
    "and" => "&"
  }
end 

def word_substituter(tweet_string)
  array_words = tweet_string.split(" ")
  
  array_words.map do |x| 
    dictionary.map do |key, value|
      if x == key
        x.replace(value)
      end 
    end 
  end 
  array_words.join(" ")
end 

#^^^ replaces long words with their expected short form


def bulk_tweet_shortener(tweets_array)
  tweets_array.collect do |phrase|
    puts word_substituter(phrase)
  end 
end

#^^^ replaces long words with their expected short form


def selective_tweet_shortener(tweet_string)
  tweet_string.split(" ").map do |the_tweet|
    if the_tweet.length > 140
      word_substituter(the_tweet)
    elsif the_tweet.length <= 140
      the_tweet
    end 
  end 
end 

#^^^ shortens tweets that are more than 140 characters. 
#does not shorten tweets that are less than 130 characters

def shortened_tweet_truncator(tweet_string)
  tweet_string.split(" ").map do |the_tweet|
    if the_tweet.length > 140
      word_substituter(the_tweet)[0..140] + "..."
    else
      the_tweet
    end
  end.join(" ")
end 

#^^^truncates tweets over 140 characters after shortening
#does not shorten tweets shorter than 140 characters.