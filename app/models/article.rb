class Article < ApplicationRecord

  belongs_to :category, class_name: 'Category'
  belongs_to :author, class_name: 'User'

  def self.nokogiri_obj_makr(html_link) 
    Nokogiri::HTML(open("#{html_link}"))
  end

  def self.title_grabber(html_doc)
    html_doc.css('title').first.text
  end

  def self.img_grabber(html_doc)
    imgs = html_doc.css('img')
    img  = imgs.find do |img| 

      if img['src'].match(/https:|http:/) && img['src'].match(/jpg|png/)
        return img['src']
      end
    end
  end

end
