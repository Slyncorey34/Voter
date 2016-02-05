class Candidate < ActiveRecord::Base
<<<<<<< HEAD
=======

>>>>>>> da1db8c1c563669deac0e22ace61b3e82e6aa045
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
