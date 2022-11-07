
class Human{
    private var name: String
    private var age: Int
    private var location: String
    
    init(){
        self.name = ""
        self.age = 0
        self.location = "Kyrgyzstan"
    }
    
    init(name: String, age: Int, location: String) {
        self.name = name
        self.age = age
        self.location = location
    }
    
    func getName()->String{
        return self.name
    }
    
    func getAge()->Int{
        return self.age
    }
}
