
class DataBaseHuman{
    private var array: [Human] = []
    
    func addHumanToArray(model: Human){
        array.append(model)
    }
    
    func dumpArray(){
        dump(self.array)
    }
    
    func findHumanByName(name: String) -> Human{
        var model = Human()
        for i in array{
            if i.getName() == name{
                model = i
            }
        }
        return model
    }
    func findHumanByAge(age: Int) -> Human{
        var model = Human()
        for i in array{
            if i.getAge() == age{
                model = i
            }
        }
        return model
    
    }
}




