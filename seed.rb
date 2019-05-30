load 'models/contact.rb'

names = ["Ronald", "Peter", "Adam", "Shaquile", "Keanu", "Rocky", "Oliver", "Jake", "Noah", "James", "Jack", "Connor", "Liam", "John", "Harry", "Callum", "Mason", "Robert", "Jacob", "Michael", "Charlie", "Kyle", "William", "Thomas", "Joe", "Ethan", "David", "George", "Reece", "Richard", "Oscar", "Rhys", "Alexander", "Joseph", "Charles", "Damian", "Daniel", "Amelia", "Margaret", "Emma", "Mary", "Samantha", "Olivia", "Patricia", "Isla", "Bethany", "Sophia", "Jennifer", "Emily", "Elizabeth", "Isabella", "Donna", "Poppy", "Joanne", "Ava", "Linda", "Megan", "Mia", "Barbara", "Victoria", "Susan", "Jessica", "Lauren", "Abigail", "Margaret", "Lily", "Michelle", "Madison", "Mariah", "Sophie", "Tracy", "Charlotte", "Sarah", "Vada", "Dana", "Serena", "Zyon", "Zion", "Zachary", "Zac", "Xeno", "Yngo", "Travis", "Victor", "Lando"]
surnames = ["Nelson", "Parker", "Silverstone", "Jameson", "Jackson", "Dickson", "Smith", "Murphy", "Smith", "Li", "Smith", "O'Kelly", "Johnson", "Jones", "Wilson", "O'Sullivan", "Williams", "Lam", "Brown", "Walsh", "Martin", "Brown", "Taylor", "Gelbero", "Davies", "O'Brien", "Miller", "Roy", "Byrne", "Davis", "Tremblay", "Morton", "Singh", "Evans", "O'Ryan", "Garcia", "Lee", "White", "Wang", "Thomas", "O'Connor", "Rodriguez", "Gagnon", "Roberts", "O'Neill", "Anderson"]

i = 0
total = 50

until i > total  do
  i +=1;
  name = names.shuffle[0]
  surname = surnames.shuffle[0] << ' ' << surnames.shuffle[1]
  fullName = name << ' ' << surname
  email = fullName.downcase.gsub(' ', '_').gsub('\'', '') << '@example.com'
  birthdate = (Time.now - rand(15552000)).strftime('%Y/%m/%d')
  numberRandom = Random.new
  phone = '9' << numberRandom.rand(0..9).to_s << numberRandom.rand(0..9).to_s << numberRandom.rand(0..9).to_s << '-' << numberRandom.rand(0..9).to_s << numberRandom.rand(0..9).to_s << numberRandom.rand(0..9).to_s << numberRandom.rand(0..9).to_s

  @contact = Contact.new
  @new_contact = @contact.save(fullName, email, birthdate, phone)
  puts 'Contact create: ' << fullName
end
