=begin
Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri à bulle.

Vous utiliserez une fonction de cette forme (selon votre langage) :
my_bubble_sort(array) {
	# votre algorithme
	return (new_array)
}

Exemples d’utilisation :
$> python exo.py 6 5 4 3 2 1 0
0 1 2 3 4 5 6

$> python exo.py test test test
error

Afficher error et quitter le programme en cas de problèmes d’arguments.

Wikipedia vous présentera une belle description de cet algorithme de tri.
=end

if ARGV.length < 2 || ARGV.any? {|args| !args.match?(/\A-?\d+\z/)}
    puts "error"
    exit
end

def my_bubble_sort(array)
    n = array.length
    swapped = true
    
    while swapped
      swapped = false
      (n - 1).times do |i|
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i] 
          swapped = true
        end
      end
    end
    
    return array
end   

numbers = ARGV.map(&:to_i)

sorted_numbers = my_bubble_sort(numbers)

puts "Liste triée : #{sorted_numbers.join(' ')}"



