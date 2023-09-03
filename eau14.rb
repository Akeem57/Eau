=begin
Créez un programme qui trie les éléments donnés en argument par ordre ASCII.

Exemples d’utilisation :
$> python exo.py Alfred Momo Gilbert
Alfred Gilbert Momo

$> python exo.py A Z E R T Y
A E R T Y Z

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end

if ARGV.length < 2 || ARGV.any? {|args| !args.match?(/\A[a-zA-Z]+\z/)}
    puts "error"
    exit
end

puts ARGV.sort.join(' ')
