class Course < ActiveRecord::Base

	belongs_to :user
	has_many :sections
	has_many :enrollments


	validates :title, :presence => {:message => "Title is required!"}
	validates :description, :presence => {:message => "Description is required!"}
	validates :cost, :presence => true, :numericality => {:greater_than_or_equal_to => 0}

	def course_id
		"Course ID # " + self.id.to_s
	end

end

class Course < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end
