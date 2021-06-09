class Post < ActiveRecord::Base
# title cannot be blank -- presence
# category either Fiction or Non-Fiction
# content -- mimimun 100 chars

    validates :title, presence: true
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category." }
end
