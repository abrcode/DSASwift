import UIKit

class Node {
    var data : Int
    var next : Node?
    
    init(data : Int) {
        self.data = data
    }
}


class LinkedList {
    
    var head : Node?
    
    //creating a new node and with that we assign head(Pointer) to a new node for begining
    func insert(data: Int){
        
        let newNode = Node(data: data)
        newNode.next = head
        head = newNode
    }
    
    //Creatinf a new node and adding it at end of the linked list.
    func append(data: Int){
        
        //If empty just need to perform insert
        if head == nil {
            insert(data: data)
            return
        }
        
        var curr = head
        while curr!.next != nil {
            curr = curr?.next
        }
        
        let newNode = Node(data: data)
        curr?.next = newNode
    }
    
    
    func printList(){
        var currentNode = head
        while currentNode != nil {
            print("Current Data :\(currentNode?.data ?? 0)")
            currentNode = currentNode?.next
        }
    }
}


let linkedList = LinkedList()
 
linkedList.insert(data: 2)
linkedList.insert(data: 5)
linkedList.insert(data: 1)
linkedList.insert(data: 9)
linkedList.insert(data: 7)

linkedList.printList()

linkedList.append(data: 13)
linkedList.printList()
