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
    (0..value.length).each do |index|
        if value[index] == value[index+1] \
            || value[index+1] == value[index+2] \
            || value [index] == value[index+2]
            return true
        else
            return false 
        end
    end
end

def has2SameDigitBetween2Numbers (num1, num2)
    (0..num1.length).each do |index1|
        (0..num2.lentgh).each do |index2|
            if num1[index1] == num2[index2] \
                || num1[index1 + 1] == num2[index2] \ 
                || num1[index1 + 2] == num2[index2] \
                || num1[index1] == num2[index2+1] \
                || num1[index1 + 1] == num2[index2 + 1] \
                || num1[index1 + 2] == num2[index2 + 1] \
                || num1[index1] == num2[index2 + 2] \
                || num1[index1 + 1] == num2[index2 + 2] \
                || num1[index1 + 2] == num2[index2 + 2] 
                return true
            else
                return false
            end
        end
    end
end

# 2. La gestion d'erreur

# 3. Le parse
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
i=0
j=0
while i < 



# 4. La résolution
finalArray.each do |num|
    if num != ""
        print "#{num} "
    end
end
puts ""
# 5. L'affichage
