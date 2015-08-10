FactoryGirl.define do

  factory :enrollment do

  end


	factory :course do
		title "Java for Beginners"
		description "Best course for Beginners"
		cost "100"
	end

	factory :user do
		sequence :email do |n|
			"testemail#{n}@gmail.com"
		end
		password "flixterbaby"
		password_confirmation "flixterbaby"
	end

end
