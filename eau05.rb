=begin
Créez un programme qui détermine si une chaîne de caractère se trouve dans une autre.

Exemples d’utilisation :
$> python exo.py bonjour jour
true

$> python exo.py bonjour joure
false

$> python exo.py 42
error

Afficher error et quitter le programme en cas de problèmes d’arguments
=end

def regex(r)
    r = Regexp.new(r) #Regexp.new : crée une regex personalisée
    return r
end

begin
    if regex(ARGV[1]).match?(ARGV[0])
        puts "true"
        exit
    else
        puts "error"
        exit
    end
rescue
    puts "error"
    exit
end

