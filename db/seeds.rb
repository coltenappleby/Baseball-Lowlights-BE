# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Like.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

baseball_teams = ['Arizona Diamondbacks','Atlanta Braves','Baltimore Orioles','Boston Red Sox','Chicago Cubs','Chicago White Sox','Cincinnati Reds','Cleveland Indians','Colorado Rockies','Detroit Tigers','Houston Astros','Kansas City Royals','Los Angeles Angels','Los Angeles Dodgers','Miami Marlins','Milwaukee Brewers','Minnesota Twins','New York Mets','New York Yankees','Oakland Athletics','Philadelphia Phillies','Pittsburgh Pirates','San Diego Padres','San Francisco Giants','Seattle Mariners','St. Louis Cardinals','Tampa Bay Rays','Texas Rangers','Toronto Blue Jays','Washington Nationals']

require 'faker'

5.times do 
    User.create( email: Faker::Internet.unique.email, password: "abc123" )
end

10.times do 
    Post.create(
        user_id: User.all.sample.id, 
        title: Faker::Lorem.words, 
        description: Faker::Lorem.paragraph(sentence_count: 3),
        team1: baseball_teams.sample,
        team2: baseball_teams.sample,
        media_link: "https://gph.is/2qoZcZE")
end

10.times do
    Comment.create(
        user_id: User.all.sample.id, 
        post_id: Post.all.sample.id,
        content: Faker::Lorem.paragraph(sentence_count: 3)        
    )
end

5.times do 
    Like.create(
        user_id: User.all.sample.id, 
        post_id: Post.all.sample.id
    )
end


