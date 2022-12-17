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
    
    
    // MARK: - Find Element from linked list
    func find(key : Int) -> Node? {
        
        var activeNode = head
        
        while activeNode != nil && activeNode?.data != key {
            activeNode = activeNode?.next
        }
        
        return activeNode
        
    }
    
    
    
    // MARK: - Delete key from linkedlist
    
    func delete(key : Int) -> Node? {
     
        if head == nil { return head }
        
        var curr = head
        var prev : Node?
        
        // we need to handle previous pointer also
        while curr != nil && curr?.data != key {
            
            prev = curr
            curr = curr?.next
            
        }
        
        if prev == nil && curr != nil{
            head = curr?.next
        } else if curr == nil {
            return nil
        } else {
            prev?.next = curr?.next
        }
        
        
        return curr
    }
    
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


let found = linkedList.find(key: 5)
let deleted =  linkedList.delete(key: 1)

print("Value of key :\(found?.data ?? -1)")
linkedList.printList()
