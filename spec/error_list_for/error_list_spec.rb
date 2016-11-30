require 'spec_helper'
require 'active_model'

module ErrorListFor
  describe ErrorList do
    before do
      class User
        include ActiveModel::Model
        attr_accessor :name, :username
      end  
      
      @user = User.new
    end
    
    describe '#list' do
      before do
        @user.errors.add(:name, "too short")
        @user.errors.add(:name, "contains invalid characters")
        @user.errors.add(:username, "10 characters is the maximum")
        @error_list = ErrorListFor::ErrorList.new(@user)
      end
      
      it "#list returns all errors as a readable list" do
        expect(@error_list.list).to eq "Name too short, Name contains invalid characters, and Username 10 characters is the maximum"
      end
      
    end
  end
end