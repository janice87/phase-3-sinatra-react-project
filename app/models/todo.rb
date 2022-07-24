class Todo < ActiveRecord::Base
    belongs_to :user
    validates :todo, presence: true    
end