require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "should have the content 'Portal Uygulaması'" do
			visit '/static_pages/home'
			expect(page).to have_content('Portal Uygulaması')
		end

		it "should have the title 'Ana Sayfa'" do
			visit '/static_pages/home'
			expect(page).to have_title("Portal")
		end

		it "should not have a custom page title" do
			visit '/static_pages/home'
			expect(page).not_to have_title('| Ana Sayfa')
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

	describe "Contact page" do

		it "should have the content 'İletişim'" do
			visit '/static_pages/contact'
			expect(page).to have_content('İletişim')
		end

		it "should have the title 'İletişim'" do
			visit '/static_pages/contact'
			expect(page).to have_title("Portal | İletişim")
		end
	end
end