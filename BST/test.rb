require "./tree.rb"
require "./node.rb"

test_array = Array.new(15) { rand(1..100) }
tree = Tree.new(test_array)
puts "Balanced?: #{tree.balanced?}"
puts "Level order: #{tree.level_order.join(', ')}"
puts "Preorder: #{tree.preorder.join(', ')}"
puts "Postorder: #{tree.postorder.join(', ')}"
puts "Inorder: #{tree.inorder.join(', ')}"
10.times do
  tree.insert(rand(100..200))
end
puts "Balanced?: #{tree.balanced?}"
tree.rebalance
puts "Balanced?: #{tree.balanced?}"
puts "Level order: #{tree.level_order.join(', ')}"
puts "Preorder: #{tree.preorder.join(', ')}"
puts "Postorder: #{tree.postorder.join(', ')}"
puts "Inorder: #{tree.inorder.join(', ')}"