# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	@candidates = Candidate.create([{fname:"Donald", lname: "Trump", city:"Manhattan", state:"NY", birthday: 1946, party:"Republican", avatar:"https://upload.wikimedia.org/wikipedia/commons/b/b3/Donald_August_19_(cropped).jpg", conVal: 99, libVal: 1}, {fname:"Hillary", lname:"Clinton", city:"Chappaqua", state:"NY", birthday: 1947, party:"Democrat", avatar:"http://a.abcnews.go.com/images/Politics/AP_hillary_clinton_jtm_150418_16x9_992.jpg", conVal: 20, libVal: 80}, {fname:"Bernie", lname:"Sanders", city:"Burlington", state:"VT", birthday: 1941, party:"Democrat", avatar:"https://upload.wikimedia.org/wikipedia/commons/d/de/Bernie_Sanders.jpg", conVal: 1, libVal: 99}, {fname:"Marco", lname:"Rubio", city:"West Miami", state:"FL", birthday: 1971, party:"Republican", avatar:"http://i2.cdn.turner.com/cnnnext/dam/assets/150325233445-marco-rubio-head-shot-exlarge-169.jpg", libVal: 30, conVal: 70}, {fname:"Ted", lname:"Cruz", city:"Houston", state:"TX", birthday: 1971 , party:"Republican", avatar:"http://www.bookwormroom.com/wp-content/uploads/2015/12/Ted_Cruz_14.png", libVal: 15, conVal: 85}])
