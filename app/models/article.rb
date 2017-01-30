class Article < ApplicationRecord
  belongs_to :category, class_name: 'Category'
  belongs_to :author, class_name: 'User'

  def white_space_cleaner(html_text)
    html_text.gsub(/\s+/, ' ')
  end

  def nokogiri_obj_makr(html_link) 
    Nokogiri::HTML(open("#{html_link}"))
  end

  def title_parse(html_doc)
    html_doc.css('title').first
  end

  def img_grabber(html_doc)
    html_doc.css('img').first['src']
  end

  def text_grabber(html_doc)
    white_space_cleaner(html_doc.css('p').text)
  end

end
