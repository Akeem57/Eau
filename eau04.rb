=begin
#Créez un programme qui affiche le premier nombre premier supérieur au nombre donné en argument.

Exemples d’utilisation :
$> python exo.py 14
17
$>

Afficher -1 si le paramètre est négatif ou mauvais
=end

#1. Fonctions
def is_prime?(num)
    (2..Math.sqrt(num)).none? { |i| num % i == 0 } #.none? = ne staisfait pas à la condition entre {}
end

def find_first_next_primary_number(arg)
    arg = arg.to_i
    return -1 if arg < 0 
    while true
        arg += 1
        return arg if is_prime?(arg)
    end
end

#2. Erreur
if ARGV[0].to_i.to_s != ARGV[0]
    puts -1
    exit
end
#3. Parse
arg = ARGV[0].to_i
#4. Résolution
resultat = find_first_next_primary_number(arg)
#5. Affichage
puts resultat