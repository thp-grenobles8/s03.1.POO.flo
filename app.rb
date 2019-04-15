# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout

# require 'bundler'
# Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

florian = User.new("florian@email.com",26)
mathieu = User.new("mathieur@email.com",43)

test = Event.new("2019-04-15 15:25", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
# puts test.start_date
# #test.postpone_24h
# test.end_date
# puts test.is_past?
# puts test.is_future?
# puts "soon"
# puts test.is_soon?
# test.to_s
puts user1 = User.find_by_email("florian@email.com")[0].age
