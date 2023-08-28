=begin
Créez un programme qui affiche toutes les valeurs comprises entre deux nombres dans l’ordre croissant. Min inclus, max exclus.

Exemples d’utilisation :
$> python exo.py 20 25
20 21 22 23 24

$> python exo.py 25 20
20 21 22 23 24

$> python exo.py hello
error

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end

if (ARGV.length <= 1) || (!ARGV.all? { |arg| arg.match?(/\A\d+\z/) })
    puts "error"
    exit
end

def display_values_between(min, max)
    if min > max
      min, max = max, min
    end
  
    (min...max).each do |value|
      print "#{value} "
    end
    puts
end

min_arg = ARGV[0].to_i
max_arg = ARGV[1].to_i

display_values_between(min_arg, max_arg)
