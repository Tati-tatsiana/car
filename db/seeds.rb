# require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ----------- CREATE SEEDS => CARS -----------
# Entrer le nombre de seed à créer =>
# nbr_seeds = 11
# Car.destroy_all && User.destroy_all
# # Créer un user pour le test
Booking.destroy_all
Car.destroy_all
User.destroy_all

jane = User.create!(first_name: "Jane",last_name: "Maliodi", email: "test@gmail.com", password: "secret", password_confirmation: "secret")
# Create Data
data = [
  {user: jane, car_maker: "Alfa Romeo", model: "Stelvio", type_car: "S.U.V", engine: "essence", transmission: "intégrale", number_of_miles: 12000, date_of_production: "2017", price: 220, address: "Paris", photo: "https://www.largus.fr/images/images/02stelvio-veloce-ti.jpg"},
  {user: jane, car_maker: "Audi", model:"A4", type_car: "Berline", engine: "essence", transmission: "intégrale", number_of_miles: 15000, date_of_production: "2018", price: 110, address: "Boulogne-Billancourt", photo: "https://www.gaz-mobilite.fr/img/news/audi-a4-gtron-launch-01_251119.jpg"},
  {user: jane, car_maker: "Peugeot", model: "3008", type_car: "S.U.V", engine: "essence", transmission: "intégrale", number_of_miles: 17000, date_of_production: "2019", price: 120, address: "Courbevoie", photo: "https://www.automobile-magazine.fr/asset/cms/176650/config/125390/peugeot-3008-bmw-q3-115.jpg"},
  {user: jane, car_maker: "Renault", model: "Zoe", type_car: "Citadine", engine: "électrique", transmission: "intégrale", number_of_miles: 20000, date_of_production: "2020", price: 80, address: "Puteaux", photo: "https://cdn.motor1.com/images/mgl/W3Jx1/s3/2020-renault-zoe.jpg"},
  {user: jane, car_maker: "Mercedes", model: "Classe C cabriolet", type_car: "Berline", engine: "essence", transmission: "intégrale", number_of_miles: 25000, date_of_production: "2021", price: 160, address: "Maison-Alfort", photo: "https://www.mercedes-benz.fr/passengercars/content-pool/marketing-pool/product-page-stages/c-class-cabriolet-a205-stage/_jcr_content/par/stageelementcampaign.MQ6.0.20211021163700.jpeg"},
  {user: jane, car_maker: "Range Rover", model: "Evoque", type_car: "S.U.V", engine: "électrique", transmission: "intégrale", number_of_miles: 30000, date_of_production: "2020", price: 180, address: "Saint-Ouen", photo: "https://images.caradisiac.com/images/5/0/2/9/185029/S0-range-rover-evoque-nouveaux-moteurs-640706.jpg"},
  {user: jane, car_maker: "Renault", model: "Clio", type_car: "Citadine", engine: "électrique", transmission: "intégrale", number_of_miles: 35000, date_of_production: "2019", price: 70, address: "Malakoff", photo: "https://cdn.group.renault.com/ren/master/renault-new-cars/product-plans/clio/bja-clio/hero-zone/2560x1200-desktop/renault-clio5-ph1-hero-zone-desktop-002.jpg.ximg.small.jpg/004086e24c.jpg"},
  {user: jane, car_maker: "Nissan", model: "Juke", type_car: "S.U.V", engine: "électrique", transmission: "intégrale", number_of_miles: 40000, date_of_production: "2019", price: 90, address: "Sevran", photo: "https://images.caradisiac.com/logos-ref/modele/modele--nissan-juke/S0-modele--nissan-juke.jpg"},
  {user: jane, car_maker: "Dacia ", model: "Sandero", type_car: "Citadine", engine: "électrique", transmission: "intégrale", number_of_miles: 45000, date_of_production: "2020", price: 60, address: "Neuilly-sur-Seine", photo: "https://www.automobile-magazine.fr/asset/cms/176416/config/125159/am-dacia-sandero-stepway-1.jpg"},
  {user: jane, car_maker: "Ford ", model: "Mustang", type_car: "Berline", engine: "diesel", transmission: "intégrale", number_of_miles: 50000, date_of_production: "2018", price: 120, address: "Levallois-Perret", photo: "https://gcm.moniteurautomobile.be/imgcontrol/c680-d465/clients/moniteur/content/medias/images/test_drives/10000/500/10/2021-ford-mustang-mach1-2.jpg"},
]
# counter = 1
# type_car  = ["Berline", "Citadine", "S.U.V"]
# while counter != nbr_seeds
#   model               = Faker::Vehicle.make_and_model
#   type                = type_car[rand(0..2)]
#   engine              = Faker::Vehicle.fuel_type
#   transmission        = Faker::Vehicle.transmission
#   number_of_miles     = Faker::Vehicle.kilometrage
#   date_of_production  = Faker::Vehicle.year
#   price               = rand(15..150)

#   # Affichage terminal
#   puts "_______________ Vehicule : #{counter} _________________\n"
#   puts "Modele : #{model}"
#   puts "Type : #{type}"
#   puts "Moteur : #{engine}"
#   puts "Transmission : #{transmission}"
#   puts "Kilometrage : #{number_of_miles}"
#   puts "Date prod : #{date_of_production}"
#   puts "Prix : #{price}€"
#   puts "\n\n"
  # Créer les cars
  data.each do |car|
    p car
    Car.create!(user: car[:user], car_maker: car[:car_maker], model: car[:model], type_car: car[:type_car], engine: car[:engine], transmission: car[:transmission], number_of_miles: car[:number_of_miles], date_of_production: car[:date_of_production], price: car[:price], address: car[:address], photo: car[:photo])
  end
