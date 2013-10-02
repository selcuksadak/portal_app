require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "should have the content 'Portal Uygulaması'" do
			visit '/static_pages/home'
			expect(page).to have_content('Portal Uygulaması')
		end

		it "should have the title 'Ana Sayfa'" do
			visit '/static_pages/home'
			expect(page).to have_title("Portal | Ana Sayfa")
		end
	end

	describe "Help page" do

		it "should have the content 'Yardım'" do
			visit '/static_pages/help'
			expect(page).to have_content('Yardım')
		end

		it "should have the title 'Yardım'" do
			visit '/static_pages/help'
			expect(page).to have_title("Portal | Yardım")
		end
	end

	describe "About page" do

		it "should have the content 'Hakkında'" do
			visit '/static_pages/about'
			expect(page).to have_content('Hakkında')
		end

		it "should have the title 'Hakkında'" do
			visit '/static_pages/about'
			expect(page).to have_title("Portal | Hakkında")
		end
	end
end