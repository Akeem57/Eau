=begin
Créez un programme qui affiche le N-ème élément de la célèbre suite de Fibonacci. (0, 1, 1, 2) étant le début de la suite et le premier élément étant à l’index 0.

Exemples d’utilisation :
$> python exo.py 3
2
$>

Afficher -1 si le paramètre est négatif ou mauvais.
=end

#1. Fonctions
def give_x_number_from_fibonacci(arg)
    result = [0,1,1,2]
    for i in 3..arg     #traduction : pour chaque valeur de i allant de 3 jusqu'à la valeur de arg
        result[i] = result[i-1] + result[i-2]
    end
    return result[arg]
end
#2. Erreur

#3. Parse
arg = ARGV[0].to_i
#4. Résolution
if arg<0 || ARGV[0].to_i.to_s != ARGV[0]
    puts "-1"
    exit
end

#5. Affichage
puts give_x_number_from_fibonacci(arg)