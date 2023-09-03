=begin
Créez un programme qui met en majuscule une lettre sur deux d’une chaîne de caractères. Seule les lettres (A-Z, a-z) sont prises en compte.

Exemples d’utilisation :
$> python exo.py “Hello world ! ”
HeLlO wOrLd !

$> python exo.py 42
error

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end
def alternate_case_oneletter_ontwo(arg)
    arg = ARGV[0]
    new_arg = arg.each_char.with_index.map do |char, index| 
        if index % 2 == 0
            char.upcase == char ? char.downcase : char.upcase
        else
            char
        end
    end
    return new_arg.join
end

if ARGV.length != 1 || ARGV[0].to_i.to_s == ARGV[0] 
    puts "error"
    exit
end

input = ARGV[0]
result = alternate_case_oneletter_ontwo(input)

puts result