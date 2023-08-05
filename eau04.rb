=begin
#Créez un programme qui affiche le premier nombre premier supérieur au nombre donné en argument.

Exemples d’utilisation :
$> python exo.py 14
17
$>

Afficher -1 si le paramètre est négatif ou mauvais.
=end

#1. Fonctions
def find_first_next_primary_number(arg)  
    denominateur = (2..arg).to_a
    i=0
    long_denominateur = denominateur.length
    result =[]
    while i < long_denominateur
        result[i] = arg % denominateur[i]    
        if i == long_denominateur - 1 || result == 0
            arg = arg + 1
            i=0
        elsif
            i == long_denominateur -1 && result != 0
            return arg
        else 
            i+=1
        end
    end
    return arg
end
#2. Erreur

#3. Parse
arg=ARGV[0].to_i
#4. Résolution
resultat = find_first_next_primary_number(arg)
#5. Affichage
puts result