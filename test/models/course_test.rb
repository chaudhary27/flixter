require 'test_helper'

class CourseTest < ActiveSupport::TestCase
   test "course_id" do
   	course = Course.create(:title => 'Java for Beginners', :description => 'best for Beginners', :cost => '100')
   	expected = 'Course ID # ' + course.id.to_s
   	actual = course.course_id
   	assert_equal expected, actual
   end
end
