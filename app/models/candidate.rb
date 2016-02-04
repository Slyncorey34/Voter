class Candidate < ActiveRecord::Base
<<<<<<< HEAD
=======
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
>>>>>>> 826b0253533bffe70db00975e81abc53090267ea
end
