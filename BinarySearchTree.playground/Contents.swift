import UIKit

class BinaryNode {
    
    var data : Int?
    var LeftNode : BinaryNode?
    var RightNode : BinaryNode?
    
    init(data: Int) {
        self.data = data
    }

}


class BinarySearchTree {
    
    var rootNode : BinaryNode?
    
    
    
    func append(value : Int){
        
        guard root = rootNode.value != nil else {
            root.value = value
            root.height = 0
            return
        }
        
        var currentNode : BinaryNode =  rootN
        
        
    }
    
}
