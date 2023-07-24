=begin
Créez un programme qui affiche toutes les différentes combinaisons de deux nombre entre 
00 et 99 dans l’ordre croissant.


Exemples d’utilisation :
$> python exo.py
00 01, 00 02, 00 03, 00 04, ... , 00 99, 01 02, ... , 97 99, 98 99
$>

=end

#1. Fonctions

    chiffres = [0,1,2,3,4,5,6,7,8,9]
    i=0
    j=0
    k=0
    l=0
    n=0
    nombres = []
    while i < chiffres.length
        nombres[n] = "#{chiffres[i]}" + "#{chiffres[j]}" + " #{chiffres[k]}" + "#{chiffres[l]}"
        l+=1
        if l == chiffres.length
            l=0
            k+=1
        end
        if k == chiffres.length
            k=0
            j+=1
        end
        if j == chiffres.length
        j=0
        i+=1
        end
        n+=1
    end
    
#2. Erreur

#3. Parse

#4. Résolution

#5. Affichage
puts nombres.join(", ")
