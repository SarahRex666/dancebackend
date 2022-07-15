User.destroy_all
Teacher.destroy_all
DanceClass.destroy_all


puts "Seeding users.."
user1 = User.create(first_name: "Sarah", last_name: "Rex", address: "10 Surrey Ln", phone: "516-428-5941", username: "Sarah", password: "password", admin: true)
user2 = User.create(first_name: "Briana", last_name: "Rex", address: "10 Surrey Ln", phone: "516-946-2121", username: "Briana", password: "password", admin: false)
user3 = User.create(first_name: "Ashley", last_name: "Kolln", address: "113 Eden Ave", phone: "516-798-4667", username: "Ashley", password: "password", admin: false)
user4 = User.create(first_name: "Liz", last_name: "Smith", address: "1 Main St", phone: "516-558-9632", username: "Liz", password: "password", admin: false)
user5 = User.create(first_name: "Darlene", last_name: "White", address: "45 Longerton Dr", phone: "516-987-4561", username: "Darlene", password: "password", admin: false)
user6 = User.create(first_name: "Jessica", last_name: "Hooper", address: "9 Friendship St", phone: "516-852-9512", username: "Jessica", password: "password", admin: false)
user7 = User.create(first_name: "Christine", last_name: "McKeeny", address: "10-10 7th St", phone: "516-753-1547", username: "Christine", password: "password", admin: false)
user8 = User.create(first_name: "Leena", last_name: "Meena", address: "35 Numot Ct", phone: "516-797-4652", username: "Leena", password: "password", admin: false)
user9 = User.create(first_name: "Waldo", last_name: "Unknown", address: "Somewhere", phone: "516-666-6666", username: "Waldo", password: "password", admin: false)


puts "Seeding teachers.."
teacher1 = Teacher.create(name: "Miss Ashley", bio: "Hip hop and ballet master!", photo_url:"https://static.wixstatic.com/media/4cdb4c_f4e5c6ad4c124cccb37d390a35c45332~mv2.jpg/v1/crop/x_178,y_0,w_886,h_1535/fill/w_122,h_208,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/IMG_1417.jpg")
teacher2 = Teacher.create(name: "Miss Amanda", bio: "Loves all kinds of dance!", photo_url: "https://static.wixstatic.com/media/4cdb4c_aaa7666c4e6e4f499ccbb9ed2609d770~mv2.jpg/v1/fill/w_116,h_201,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/4cdb4c_aaa7666c4e6e4f499ccbb9ed2609d770~mv2.jpg")
teacher3 = Teacher.create(name: "Mister Joe", bio: "Fun and passionate teacher, full of life.", photo_url:"https://static.wixstatic.com/media/4cdb4c_663b1cea3fa3423bbb06d17c2c794cad~mv2.jpg/v1/fill/w_181,h_180,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/4cdb4c_663b1cea3fa3423bbb06d17c2c794cad~mv2.jpg")
teacher4 = Teacher.create(name: "Miss Kristi", bio: "Studied ballet professionally for ten years.", photo_url:"https://static.wixstatic.com/media/4cdb4c_bfd4b5d360c94e3f82e504aa2b449ace~mv2.jpg/v1/fill/w_180,h_180,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/DSC_8883.jpg")
teacher5 = Teacher.create(name: "Miss Lydia", bio: "Loves all things lyrical!", photo_url:"https://static.wixstatic.com/media/4cdb4c_c64baf890812446c9e9f77576a78166c~mv2.jpg/v1/fill/w_179,h_220,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/4cdb4c_c64baf890812446c9e9f77576a78166c~mv2.jpg")
teacher6 = Teacher.create(name: "Mister Mike", bio: "Our resident performing arts expert!", photo_url:"")

puts "Seeding classes.."
class1 = DanceClass.create(name: "Beginner Ballet", style: "Ballet", description: "Ballet for beginners! All welcome!", teacher_id: teacher2.id, user_id: user2.id, time: "Monday 5:00pm")
class2 = DanceClass.create(name: "Beginner Lyrical", style: "Lyrical", description: "Lyrical for beginners! All welcome!", teacher_id: teacher1.id, user_id: user2.id, time: "Monday 7:00pm")
class3 = DanceClass.create(name: "Beginner Hip Hop", style: "Hip Hop", description: "Hip Hop for beginners! All welcome!", teacher_id: teacher2.id, user_id: user3.id, time: "Tuesday 5:00pm")
class4 = DanceClass.create(name: "Intermediate Ballet", style: "Ballet", description: "Intermediate Ballet for students who have already mastered the basics and are looking to go further!", teacher_id: teacher3.id, user_id: user4.id, time: "Tuesday 7:00pm")
class5 = DanceClass.create(name: "Intermediate Lyrical", style: "Lyrical", description: "Intermediate Lyrical for students who have already mastered the basics and are looking to go further!", teacher_id: teacher4.id, user_id: user5.id, time: "Wednesday 5:00pm")
class6 = DanceClass.create(name: "Intermediate Hip Hop", style: "Hip Hop", description: "Intermediate Hip Hop for students who have already mastered the basics and are looking to go further!", teacher_id: teacher5.id, user_id: user6.id, time: "Wednesday 7:00pm")
class7 = DanceClass.create(name: "Advanced Ballet", style: "Ballet", description: "Advanced Ballet, for experienced ballerinas only!", teacher_id: teacher6.id, user_id: user7.id, time: "Thursday 5:00pm")
class8 = DanceClass.create(name: "Advanced Lyrical", style: "Lyrical", description: "Advanced Lyrical, for experienced dancers only!", teacher_id: teacher1.id, user_id: user7.id, time: "Thursday 7:00pm")
class9 = DanceClass.create(name: "Advanced Hip Hop", style: "Hip Hop", description: "Advanced Hip Hop, for experienced dancers only!", teacher_id: teacher2.id, user_id: user8.id, time: "Friday 5:00pm")
class10 = DanceClass.create(name: "Competition I", style: "Ballet", description: "Competative Ballet, students must try out and be selected for competition teams.", teacher_id: teacher6.id, user_id: user9.id, time: "Friday 7:00pm")
class11 = DanceClass.create(name: "Competition II", style: "Ballet", description: "Competative Ballet, students must try out and be selected for competition teams.", teacher_id: teacher6.id, user_id: user1.id, time: "Saturday 12:00pm")
