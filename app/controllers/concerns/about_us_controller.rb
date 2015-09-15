class About_Us < ActiveRecord::Base
	
    def about_us
      render text: "Include About Us infor here"
    end
end