class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    validates :image_url, presence: true

    before_save :censura 
    def censura
        self.title = self.title.gsub!('Orbo Chile','OC')
        self.content = self.content.gsub!('Orbo Chile','OC')
    end
end
