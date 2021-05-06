require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all


5.times do 
	city = City.create!(
        city_name: Faker::Address.city
        )
end

20.times do
    dog = Dog.create!(
        name: Faker::Games::Pokemon.name,   
        city_id: Faker::Number.within(range: 1..5)
    )
end

10.times do
    dogsitter = Dogsitter.create!(
        name: Faker::Name.name,
        city_id: Faker::Number.within(range: 1..5)
    )
end

50.times do
stroll = Stroll.create!(
    city_id: Faker::Number.within(range: 1..5),
    datetime: Faker::Date.between(from: '2021-07-23', to: '2021-09-25'),
    dogsitter_id: Faker::Number.within(range: 1..10),
    dog_id: Faker::Number.within(range: 1..20)
)

end