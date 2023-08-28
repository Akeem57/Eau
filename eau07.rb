=begin
Créez un programme qui met en majuscule la première lettre de chaque mot d’une chaîne de caractères. Les autres lettres devront être en minuscules. Les mots ne sont délimités que par un espace, une tabulation ou un retour à la ligne.

Exemples d’utilisation :
$> python exo.py “bonjour mathilde, comment vas-tu ?!”
Bonjour Mathilde, Comment Vas-tu ?!

$> python exo.py 42
error

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end


if (ARGV.length != 1) || (ARGV[0].match?(/[0-9]/))
    puts "error"
    exit
end
  
 
input_string = ARGV[0]
  
  
def capitalize_first_letter(arg)
    words = arg.split(/[ \t\n]/) # Séparation en mots en utilisant espaces, tabulations et retours à la ligne comme délimiteurs
    capitalized_words = words.map { |word| word.capitalize }
    capitalized_words.join(' ')
end
  
  
result = capitalize_first_letter(input_string)
puts result