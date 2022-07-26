class Journal < ActiveRecord::Base
    belongs_to :user 
    
    validates :content, presence: true
    validates :date, presence: true
end