module PeopleHelper
  def createPeople
    for i in 0..60
      apartment_id = Random.rand(1..13)
      people = Person.new(:name => "persona #{i + 1}", :identification => "125484577", :apartment_id => apartment_id)
      people.save
    end
  end
end
