=begin
Créez un programme qui détermine si une chaîne de caractères ne contient que des chiffres.

Exemples d’utilisation :
$> python exo.py “44453532”
true

$> python exo.py 42
true

$> python exo.py “Bonjour 36”
false

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end

def contains_only_digits?(input)
   input.match?(/\A\d+\z/)
end

if ARGV.length != 1
    puts "error"
    exit
end

argument = ARGV[0]
  
if contains_only_digits?(argument)
    puts "true"
else
    puts "false"
end
