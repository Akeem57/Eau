=begin
Créez un programme qui affiche ses arguments reçus à l’envers.

Exemples d’utilisation :
$> python exo.py “Suis” “Je” “Drôle”
Drôle
Je
Suis

$> python exo.py ha ho
ho
ha

$> python exo.py “Bonjour 36”
Bonjour 36

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end

#1. Fonctions
def print_reverse_arg(a)   
    i = a.length-1

    while i!=-1 
        if a.length !=1
            puts a[i]
            i-=1
        else
            puts "Error"
            exit
        end
    end
end 
#2. Erreur

#3. Parse

#4. Résolution

#5. Affichage
print_reverse_arg(ARGV)
