class User < ActiveRecord::Base
	has_many :reviews
end

class Course < ActiveRecord::Base
	has_many :reviews
end

class Review < ActiveRecord::Base
	belongs_to :user 
	belongs_to :course
end