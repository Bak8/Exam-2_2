class Worker: Human{
    
     override init(){
         super.init()
     }
    
    private var job: String = ""
    private var wage: Int = 0
    
    
    init(name: String, age: Int, location: String, job:String, wage:Int) {
        self.job = job
        self.wage = wage
        super.init(name: name, age: age, location: location)
    }
    
    func getNameOfWorker() -> String {
        getName()
    }

    func getWage()->Int{
        return self.wage
    }
    
    
}
