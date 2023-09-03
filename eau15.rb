=begin
Créez un programme qui célèbre votre victoire.

Exemples d’utilisation :
$> ruby exo.rb
J’ai terminé l’Épreuve de l’Eau et c’était [].
$>

Note : [] est à remplacer par un adjectif de votre choix (facile ?)
=end

if ARGV.length != 1 || ARGV.any? {|arg| !arg.match?(/\A[a-zA-Z]+\z/)}
    puts "Veuillez entrer un adjectif"
    exit
end

puts "J'ai terminé l'Épreuve de l’Eau et c’était #{ARGV[0]}"