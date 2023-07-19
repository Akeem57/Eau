=begin
Créez un programme qui affiche toutes les différentes combinaisons possibles de trois chiffres dans l’ordre croissant, 
dans l’ordre croissant. La répétition est volontaire.

Exemples d’utilisation :
$> python exo.py
012, 013, 014, 015, 016, 017, 018, 019, 023, 024, ... , 789
$>

987 n’est pas là parce que 789 est présent.

020 n’est pas là parce que 0 apparaît deux fois.

021 n’est pas là parce que 012 est présent.

000 n’est pas là parce que cette combinaison ne comporte pas exclusivement des chiffres différents 
les uns des autres.
=end

# 1. Les fonctions
chiffre = [0,1,2,3,4,5,6,7,8,9]
results = []
longTabChiffre = chiffre.length
indexTabChiffre = 0
a=0
b=0
c=0
i = 0
j = 0

# 2. La gestion d'erreur

# 3. Le parse

# 4. La résolution
while indexTabChiffre < longTabChiffre
    results[j] = "#{chiffre[a]}#{chiffre[b]}#{chiffre[c]}"
    j+=1 
    
end

# 5. L'affichage