=begin
Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri par sélection.

Vous utiliserez une fonction de cette forme (selon votre langage) :
my_select_sort(array) {
	# votre algorithme
	return (new_array)
}

Exemples d’utilisation :
$> python exo.py 6 5 4 3 2 1
1 2 3 4 5 6

$> python exo.py test test test
error

Afficher error et quitter le programme en cas de problèmes d’arguments.

Wikipedia vous présentera une belle description de cet algorithme de tri.
=end

if ARGV.length < 2 || ARGV.any? {|args| !args.match?(/\A-?\d+\z/)}
    puts "error"
    exit
end

def my_selection_sort(array)
	n = array.length

	(n - 1).times do |i|
	  	min_index = i
	  	(i + 1...n).each do |j|
			min_index = j if array[j] < array[min_index]
	  	end
	  	array[i], array[min_index] = array[min_index], array[i] if i != min_index
	end
	return array
end

numbers = ARGV.map(&:to_i)

sorted_numbers = my_selection_sort(numbers)

puts "Liste triée : #{sorted_numbers.join(' ')}"