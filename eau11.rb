=begin
Créez un programme qui affiche la différence minimum absolue entre deux éléments d’un tableau constitué uniquement de nombres. Nombres négatifs acceptés.

Exemples d’utilisation :
$> python exo.py 5 1 19 21 
2

$> python exo.py 20 5 1 19 21
1

$> python exo.py -8 -6 4
2

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end

if ARGV.length < 2 || ARGV.any?{|arg| !arg.match?(/\A-?\d+\z/)}
    puts "error"
    exit
end

def calculate_min_absolute_diff(args)
    results =[]
    args.each do |num1|
        args.each do |num2|
            next if num1 == num2
            results << (num1.to_i.abs - num2.to_i.abs).abs
        end
    end
    results.min
end

puts calculate_min_absolute_diff(ARGV)
