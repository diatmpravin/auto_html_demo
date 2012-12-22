class Post < ActiveRecord::Base
  attr_accessible :about, :about_html, :name, :url, :url_html
  
  auto_html_for :about do
    html_escape
    image
    youtube width: 640, height: 430, wmode: "opaque"
    vimeo width: 640, height: 430
    youtube :width => 580, :height => 378
    vimeo :width => 580, :height => 378
    link :target => :_blank
  end
   
end
