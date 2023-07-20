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
def array3DigitNumber(min, max)
    (min..max).map {|digit| "%03d" % digit}
end

def has2SameDigit? (value)
    valueInChar = value.to_s
    (0..valueInChar.length).each do |index|
        if valueInChar[index] == valueInChar[index+1] \
            || valueInChar[index+1] == valueInChar[index+2] \
            || valueInChar [index] == valueInChar[index+2]
            return true
        else
            return false 
        end
    end
end

# 2. La gestion d'erreur

# 3. Le parse

# 4. La résolution
numbers = array3DigitNumber(0,999)
i=0
finalArray = []
while i < numbers.length
    if has2SameDigit?(numbers[i]) 
        finalArray[i] = ""
    else 
        finalArray[i] = numbers[i]
    end
    i+=1
end

# 5. L'affichage
finalArray.each do |num|
    if num != ""
        puts "#{num} "
    end
end