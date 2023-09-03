=begin
Créez un programme qui affiche le premier index d’un élément recherché dans un tableau. Le tableau est constitué de tous les arguments sauf le dernier. L’élément recherché est le dernier argument. Afficher -1 si l’élément n’est pas trouvé.

Exemples d’utilisation :
$> python exo.py Ceci est le monde qui contient Charlie un homme sympa Charlie
6

$> python exo.py test test test test
0

$> python exo.py test boom
-1

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end

if ARGV.length < 2
    puts "error"
    exit
end

def trouver_index(tableau, element_recherche)
    tableau.index(element_recherche)
end

arguments = ARGV
looking_word = ARGV[-1] # ou ARGV.pop
sentence = ARGV[0..-2]

index = trouver_index(sentence, looking_word)

puts index || -1