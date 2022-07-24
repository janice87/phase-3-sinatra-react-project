class Mood < ActiveRecord::Base
    belongs_to :user
    
    validates :mood, presence: true
    validates :date, presence: true
    validates :win, presence: true
    validates :challenge, presence: true
end