FactoryGirl.define do
    factory :user do
      name "scott"
      email "scott@gmail.com"
      password "scott"
      password_confirmation "scott"

      factory :admin_user do
        admin true
      end
    end
  end

