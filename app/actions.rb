
def humanized_time_ago(time_ago_in_minutes)
  if time_ago_in_minutes >= 60
    "#{time_ago_in_minutes / 60} hours ago"
  else
    "#{time_ago_in_minutes} minutes ago"
  end
end


get '/' do
  @finstagram_post_shark = {
    username: "sharky_j",
    avatar_url: "http://naserca.com/images/sharky_j.jpg",
    photo_url: "http://naserca.com/images/shark.jpg",
    humanized_time_ago: humanized_time_ago(15),
    like_count: 0,
    comment_count: 1,
    comments: [{
      username: "sharky_j",
      text: "Out for the long weekend... too embarrassed to show y'all the beach bod!"
    }]
  }

  @finstagram_post_whale = {
    username: "kirk_whalum",
    avatar_url: "http://naserca.com/images/kirk_whalum.jpg",
    photo_url: "http://naserca.com/images/whale.jpg",
    humanized_time_ago: humanized_time_ago(65),
    like_count: 0,
    comment_count: 1,
    comments: [{
      username: "kirk_whalum",
      text: "#weekendvibes"
    }]
  }

  @finstagram_post_marlin = {
    username: "marlin_peppa",
    avatar_url: "http://naserca.com/images/marlin_peppa.jpg",
    photo_url: "http://naserca.com/images/marlin.jpg",
    humanized_time_ago: humanized_time_ago(190),
    like_count: 0,
    comment_count: 1,
    comments: [{
      username: "marlin_peppa",
      text: "lunchtime! ;)"
    }]
  }

  [@finstagram_post_shark, @finstagram_post_whale, @finstagram_post_marlin].to_s

  @finstagram_posts = [@finstagram_post_shark, @finstagram_post_whale, @finstagram_post_marlin]
  
  erb(:index)
end


=begin
get '/' do
  username = "sharky_j"
  avatar_url = "http://naserca.com/images/sharky_j.jpg"
  photo_url = "http://naserca.com/images/shark.jpg"
  time_ago_in_minutes = 15
  like_count = 0
  comment_count = 1
  comments = [
    "sharky_j: Out for the long weekend... too embarrassed to show y'all the beach bod!"
  ]

  humanized_time_ago(time_ago_in_minutes)
end



get '/' do
  username = "sharky_j"
  avatar_url = "http://naserca.com/images/sharky_j.jpg"
  photo_url = "http://naserca.com/images/shark.jpg"
  time_ago_in_minutes = 15
  like_count = 0
  comment_count = 1
  comments = [
    "sharky_j: Out for the long weekend... too embarrassed to show y'all the beach bod!"
  ]
  # if the time_ago_in_minutes is greater than 60
  if time_ago_in_minutes >= 60
   
  # return this string
  "#{time_ago_in_minutes / 60} hours ago"

  elsif time_ago_in_minutes == 60
  "an hour"

  elsif time_ago_in_minutes <= 1
  "just a moment ago"

  # if it's less than or equal
  else

  # return this instead
  "#{time_ago_in_minutes} minutes ago"
  end
end
---------------------
=end

# get '/' do
#     File.read(File.join('app/views', 'index.html'))
#   end

