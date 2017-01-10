FactoryGirl.define do
    sequence :name do |n| "person#{n}" end
    sequence :last_name do|n| "Last name #{n}" end
    sequence :experience do|n| "#{n} years with rails"end
    positions = ["Junior","Medior","Senior"]
  
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com"}
    password "password"
    password_confirmation "password"
    sequence(:name) { |n| "User #{n}"}
    sequence(:last_name) { |n| "Last name #{n}"}
    sequence(:position) { |n| positions[n]}
    sequence(:experience) { |n| "#{n} years of experience"}
    # email "jonathan@example.com"
    # password "password"
    # password_confirmation "password"
    # name "jonathan"
    # last_name "veron"
    # position "junior"
    # experience "Five years"
  end
end
