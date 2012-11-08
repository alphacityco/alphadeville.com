module ApplicationHelper

  def tweet_anchor( data_text )
    t_a = <<-STR
      <div class="tweet-btn pull-right">
        <a href="https://twitter.com/share" class="twitter-share-button" data-url="none" data-via="alphadeville" data-text="#{data_text}" data-lang="en" data-count="none">Tweet</a>
      </div>
    STR
    t_a.html_safe
  end

end
