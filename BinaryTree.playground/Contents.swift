import UIKit


class BinaryNode {
    
    var data : Int
    var leftNode : BinaryNode?
    var rightNode : BinaryNode?
    
    init(data: Int) {
        self.data = data
    }
    
    
    func preOrderTraversal(node : BinaryNode?) {
        
        guard let node = node else { return }
        print("\(node.data)", terminator: " ")
        preOrderTraversal(node: node.leftNode)
        preOrderTraversal(node: node.rightNode)
        
    }
    
    
    func postOrderTraversal(node: BinaryNode?) {
        guard let node = node else { return }
        postOrderTraversal(node: node.leftNode)
        postOrderTraversal(node: node.rightNode)
        print("\(node.data)", terminator: " ")
    }

    
    func inOrderTraversal(node: BinaryNode?){
        
        
        guard let node = node else { return  }
        
        inOrderTraversal(node: node.leftNode)
        print("\(node.data)", terminator: " ")
        inOrderTraversal(node: node.rightNode)
        
    }
    
    func traversal(){
        print("\nPRE-ORDER TRAVERSE")
        self.preOrderTraversal(node: root)
      
        print("\n\nIN-ORDER TRAVERSE")
        self.inOrderTraversal(node: root)
        
        print("\n\nPOST-ORDER TRAVERSE")
        self.postOrderTraversal(node: root)
        print("\n")
    }
    
}


 /* Visualisation of Binary Tree
  
  -> It's non linear ds
  -> Maximum 2 child and min 0
  -> BinaryNode contains two three values
     1 : data
     2 : leftNode - Address of leftNode
     3 : rightNode - Address of rightNode
  
                  6
                /   \
               3     5
              /     / \
             2     4   7
  
  */


var root = BinaryNode(data: 6)
root.leftNode = BinaryNode(data: 3)
root.leftNode?.leftNode = BinaryNode(data: 2)
root.rightNode = BinaryNode(data: 5)
root.rightNode?.leftNode = BinaryNode(data: 4)
root.rightNode?.rightNode = BinaryNode(data: 7)

root.traversal()


