class Article < ApplicationRecord

  belongs_to :category, class_name: 'Category'
  belongs_to :author, class_name: 'User'

  def self.white_space_cleaner(html_text)
    html_text.gsub(/\s+/, ' ')
  end

  def self.nokogiri_obj_makr(html_link) 
    Nokogiri::HTML(open("#{html_link}"))
  end

  def self.title_grabber(html_doc)
    html_doc.css('title').first.text
  end

  def self.img_grabber(html_doc)
    html_doc.css('img').first['src']
  end

  def self.text_grabber(html_doc)
    Article.white_space_cleaner(html_doc.css('p').first.text)
  end

end
