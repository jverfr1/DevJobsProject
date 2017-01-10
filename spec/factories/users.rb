FactoryGirl.define do
    # sequence :name do |n| "person#{n}" end
    # sequence :last_name do|n| "Last name #{n}" end
    # sequence :experience do|n| "#{n} years with rails"end

  factory :user do
    # name {generate(:name)}
    # last_name {generate(:last_name)}
    # position "junior"
    # experience {generate(:experience)}
    # sequence(:email) {|n| "person#{n}@example.com"}
    # passwword(:password) {rand(99999..100000)}
    # name "Jonathan"
    email "jonathan@example.com"
    password "password"
    password_confirmation "password"
    name "jonathan"
    last_name "veron"
    position "junior"
    experience "Five years"
  end
end
