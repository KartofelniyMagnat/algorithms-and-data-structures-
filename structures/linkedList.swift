class Node {
    var data : Int
    var next : Node?
    init (_ data: Int, _ next: Node? = nil){
        self.data = data
        self.next = next
    }
}
class linkedList {
    private var head: Node?

    func isEmpty() -> Bool{
        return head == nil
    }
    
    func addFirst (_ data: Int) {
        let newNode = Node(data)
        newNode.next = head
        head = newNode
        }
    
    func addLast (_ data: Int) {
        let newNode = Node(data)
        if head == nil {
            head = newNode
            return
        }
        var node = head
        while node?.next != nil {
            if node?.next == nil {
                node?.next = newNode
            } else {
                node = node?.next
            }
        }
    }
    func insert(at position : Int, data: Int) {
        let newNode = Node(data)
        var node = head
        var counter : Int = 1
        while counter < position && node?.next != nil{
            node = node?.next
            counter += 1
        }
        if counter < position || node == nil {
        print("Error : out of list")
        return
        }
            newNode.next = node?.next
            node?.next = newNode
        }
    func printList(){
        var node = head
        var string : String = ""
        if node == nil {
            print ("the List is empty :3")
        }
        while node != nil {
            string += "\(node!.data) -> "
            node = node?.next
        }
        string += "nil"
        print(string)
    }
    func reverse(){
    
    }
    func clear(){
        head = nil
    }
    func delete (_ data: Int) {
        var node = head
        if node == nil {
            print ("the List is empty :3")
            return
        }
        while head != nil && head!.data == data {
        head = head!.next
    }
        while node?.next != nil{
            if node!.next!.data == data{
                node!.next = node?.next?.next
            } else {
                node = node!.next
            }
        }
    }
    }
let list = linkedList()
list.addFirst(3)
list.addFirst(1)
list.addFirst(5)
list.delete(5)
list.printList()