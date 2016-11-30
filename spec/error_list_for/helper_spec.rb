require 'spec_helper'
require 'error_list_for/helper'
require 'active_model'

class User
  include ActiveModel::Model
  attr_accessor :name, :username
end  

class FakeController
  include ErrorListFor::Helper
end

module ErrorListFor
  describe 'helper' do
    it "calls ErrorListFor::ErrorList#list" do

      user = User.new
      user.errors.add(:name, "too short")
      user.errors.add(:name, "contains invalid characters")
      user.errors.add(:username, "10 characters is the maximum")
      
      expect_any_instance_of(ErrorListFor::ErrorList).to receive(:list)
      
      FakeController.new.error_list_for(user)
    end
  end
end