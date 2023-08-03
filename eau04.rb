=begin
#Créez un programme qui affiche le premier nombre premier supérieur au nombre donné en argument.

Exemples d’utilisation :
$> python exo.py 14
17
$>

Afficher -1 si le paramètre est négatif ou mauvais.
=end

#1. Fonctions
def show_nextfirst_entire_number_fromarg(arg)
    
end
#2. Erreur

#3. Parse

#4. Résolution
arg = ARGV[0].to_i
n = (0..arg)
arg.each do |number|
    if number + 1 % n
#5. Affichage