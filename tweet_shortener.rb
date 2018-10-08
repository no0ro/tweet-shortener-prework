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
  new_name = dictionary
  array_words = tweet_string.split(" ")
  
  array_words.map do |x| 
    new_name.map do |key, value|
      if x == key
        x.replace(value)
      end 
    end 
  end 
  array_words.join(" ")
end 

def word_substituter(string)
  new_name = dictionary
  array = []
  string.split(' ').each do |word|
    if new_name[word.downcase]
      array << new_name[word.downcase]
    else
      array<< word
    end
  end
  array.join(' ')
end

#^^^ replaces long words with their expected short form


def bulk_tweet_shortener(tweets_array)
  tweets_array.collect do |phrase|
    puts word_substituter(phrase)
  end 
end

#^^^ replaces long words with their expected short form



def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end
 

#^^^ shortens tweets that are more than 140 characters. 
#does not shorten tweets that are less than 130 characters

def shortened_tweet_truncator(tweet_string)
    if tweet_string.length > 140
      tweet_string[0..136] + "..."
    else
      tweet_string
    end
end 

#^^^truncates tweets over 140 characters after shortening
#does not shorten tweets shorter than 140 characters.