
//Добавить базы данных для Рабочих и Учителей
//Добавить разные дополнительные свойства для рабочих и учителей
//Создать новые методы для поиска по разным параметрам
//В конце вывести сколько людей вообщем, сколько рабочих и учителей

var dataBase = DataBaseHuman()

var human = Human(name: "Adam", age: 16, location: "China")
var secondHuman = Human(name: "Jack", age: 20, location: "USA")
var thirdHuman = Human(name: "Aibek", age: 18, location: "Kyrgyzstan")

dataBase.addHumanToArray(model: human)
dataBase.addHumanToArray(model: secondHuman)
dataBase.addHumanToArray(model: thirdHuman)

dataBase.dumpArray()

var found = dataBase.findHumanByName(name: "Aibek")
var found2 = dataBase.findHumanByAge(age: 20)

if found.getName() == ""{
    print("no model found")
}else{
    print("\(found.getName()) - \(found.getAge()). is in array")
}

print("")
print("")
print("")

var worker = Worker(name: "Atai", age: 24, location: "Bishkek", job: "Engineer", wage: 45000)
var workerTwo = Worker(name: "Zhanna", age: 25, location: "Naryn", job: "Cleaner", wage: 15000)
var workerThree = Worker(name: "Ruslan", age: 35, location: "Osh", job: "Accountant", wage: 30000)

var dataBase_Wokrker = DataBaseWorker()
dataBase_Wokrker.addWorkerToArray(model1: worker)
dataBase_Wokrker.addWorkerToArray(model1: workerTwo)
dataBase_Wokrker.addWorkerToArray(model1: workerThree)
dataBase_Wokrker.dumpArrayWorker()

var findWageOfAtai = dataBase_Wokrker.findWorkerByWage(wage: 45000)

if findWageOfAtai.getWage() <= 0  {
    print("По вашему запросу ничего не найдено")
}else{
    print("По вашему поиску мы нашли: \(findWageOfAtai.getNameOfWorker()) с зарплатой : \(findWageOfAtai.getWage())")
}

print("")
print("")
print("")

var teacher = Teacher(name: "Larisa", age: 55, location: "Bishkek", lesson: "Math", experience: 23)
var teacherTwo = Teacher(name: "Kuvan", age: 45, location: "Bishkek", lesson: "Biology", experience: 10)
var teacherThree = Teacher(name: "Aidar", age: 35, location: "Bishkek", lesson: "Chemistry", experience: 5)

var dataBase_Teacher = DataBaseTeacher()
dataBase_Teacher.addTeacherToArray(model1: teacher)
dataBase_Teacher.addTeacherToArray(model1: teacherTwo)
dataBase_Teacher.addTeacherToArray(model1: teacherThree)
dataBase_Teacher.dumpArrayTeacher()

var findLessonOfLarisa = dataBase_Teacher.findTeacherLesson(lesson: "Math")

if findLessonOfLarisa.getLesson() == ""  {
    print("По вашему запросу ничего не найдено")
}else{
    print("По вашему поиску мы нашли: \(findLessonOfLarisa.getNameOfTeacher()) Урок : \(findLessonOfLarisa.getLesson())")
}


var TotalNumberOfTeachersAndWorkers = dataBase_Teacher.totalTeacher() + dataBase_Wokrker.totalWorker()

print("Всего: \(TotalNumberOfTeachersAndWorkers) людей")
