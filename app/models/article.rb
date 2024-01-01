class Article < ApplicationRecord
    #The first validation declares that a title value must be present. Because title is a string, 
    #this means that the title value must contain at least one non-whitespace character.
    validates :title, presence: true

    #The second validation declares that a body value must also be present. Additionally,
    #it declares that the body value must be at least 10 characters long.
    validates :body, presence: true, length: {minimum: 10}
end
