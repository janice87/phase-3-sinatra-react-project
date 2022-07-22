class User < ActiveRecord::Base
    has_many :todos
    has_many :moods
    has_many :journals
end