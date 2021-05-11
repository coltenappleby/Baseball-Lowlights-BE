# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Like.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

baseball_teams = ['Arizona Diamondbacks','Atlanta Braves','Baltimore Orioles','Boston Red Sox','Chicago Cubs','Chicago White Sox','Cincinnati Reds','Cleveland Indians','Colorado Rockies','Detroit Tigers','Houston Astros','Kansas City Royals','Los Angeles Angels','Los Angeles Dodgers','Miami Marlins','Milwaukee Brewers','Minnesota Twins','New York Mets','New York Yankees','Oakland Athletics','Philadelphia Phillies','Pittsburgh Pirates','San Diego Padres','San Francisco Giants','Seattle Mariners','St. Louis Cardinals','Tampa Bay Rays','Texas Rangers','Toronto Blue Jays','Washington Nationals']
media_type = ["gif"]

5.times do 
    User.create( email: Faker::Internet.unique.email, password: "abc123", username: Faker::TvShows::TwinPeaks.unique.character)
end

User.create(email: "seth@seth.com", password: "abc123", username: "seth")

10.times do 
    Post.create(
        user_id: User.all.sample.id, 
        title: Faker::Lorem.sentence(word_count: 3), 
        description: Faker::Lorem.paragraph(sentence_count: 3),
        team1: baseball_teams.sample,
        team2: baseball_teams.sample,
        media_type: "gif",
        media_link: 'https://thumbs.gfycat.com/ComplexAppropriateGelding-max-1mb.gif')
end

Post.create(
    user_id: User.all.sample.id,
    title: Faker::Lorem.sentence(word_count: 3), 
    description: Faker::Lorem.paragraph(sentence_count: 3),
    team1: baseball_teams.sample,
    team2: baseball_teams.sample,
    media_type: "video",
    media_link: '<iframe width="560" height="315" src="https://www.youtube.com/embed/YDHihWAKicI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
)


10.times do
    Comment.create(
        user_id: User.all.sample.id, 
        post_id: Post.all.sample.id,
        content: Faker::Lorem.paragraph(sentence_count: 3)        
    )
end

15.times do 
    Like.create(
        user_id: User.all.sample.id, 
        post_id: Post.all.sample.id
    )
end


