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
def array_three_digit_number(min, max)
    (min..max).map {|digit| "%03d" % digit}
end

def is_twoo_same_digit? (value)
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

def is_same_digit_between_numbers? (num1, num2)
    num1 = num1.to_s.split('')
    num2 = num2.to_s.split('')
    if (num1 & num2).size == 3
        return true
            
    else
        return false
    end
end

# 2. La gestion d'erreur

# 3. Le parse

# 4. La résolution
numbers = array_three_digit_number(0,999)

finalArray = []
numbers.each do |num|
    if !is_twoo_same_digit?(num) && !finalArray.any? { |other_num| is_same_digit_between_numbers?(num, other_num) }
        finalArray << num
    end
end

# 5. L'affichage
finalArray.each do |num|
    print "#{num} "   
end
puts ""