require 'test_helper'

class CourseTest < ActiveSupport::TestCase
   test "course_id" do
   	course = FactoryGirl.create(:course)
   	expected = 'Course ID # ' + course.id.to_s
   	actual = course.course_id
   	assert_equal expected, actual
   end
end
