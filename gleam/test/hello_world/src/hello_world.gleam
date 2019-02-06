// A binary tree with leaves carrying an integer
pub enum Tree =
  | Leaf(Int)
  | Node(Tree, Tree)

pub fn any(tree, predicate) {
  case tree {
  | Leaf(i) -> predicate(i)
  | Node(left, right) -> any(left, predicate) || any(right, predicate)
  }
}

pub fn has_even_leaf(tree) {
  any(tree, fn(i) {
    i % 2 == 0
  })
}
