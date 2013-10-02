require 'spec_helper'

describe "User pages" do

	subject { page }

	describe "signup page" do
		before { visit signup_path }

		it { should have_content('Yeni Kullanıcı') }
		it { should have_title('Yeni Kullanıcı') }
	end
end