
class DataBaseWorker {
    private var array: [Worker] = []
    
    
        
    func addWorkerToArray(model1: Worker){
        array.append(model1)
    }
    
    func dumpArrayWorker(){
        dump(self.array)
    }
    
    
    func findWorkerByWage(wage: Int) -> Worker{
        var model1 = Worker()
        for i in array{
            if i.getWage() == wage{
                model1 = i
            }
        }
        return model1
    }
    func totalWorker () -> Int{
        var numberWorker = 0
        for (index,item) in array.enumerated() {
            numberWorker += index
            print(numberWorker)
        }
        return numberWorker
    }
}

