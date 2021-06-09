class Author < ActiveRecord::Base
# name cannot be blank -- presence
# email is unique -- uniqueness

    validates :name, presence: true
    validates :email, uniqueness: true
end
