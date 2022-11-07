
class DataBaseTeacher {
    private var array: [Teacher] = []
    
    
   
    
    func addTeacherToArray(model1: Teacher){
        array.append(model1)
    }
    
    func dumpArrayTeacher(){
        dump(self.array)
    }
    
    
    func findTeacherLesson(lesson: String) -> Teacher{
        var model1 = Teacher()
        for i in array{
            if i.getLesson() == lesson{
                model1 = i
            }
        }
        return model1
    }
    
    func totalTeacher() -> Int {
        var numberTeacher = 0
        for (index,item) in array.enumerated() {
           numberTeacher += index
            print(numberTeacher)
        }
        return numberTeacher
    }
}


