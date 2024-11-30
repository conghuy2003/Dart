abstract class Employee {
  final id; 
  final name; 
  Employee(this.id, this.name);

  void printInfo(); 
  double calculateSalary(); 
}

abstract class Workable {
  void doWork();
}

class OfficeWorker extends Employee implements Workable {
  String department; 
  OfficeWorker(String id, String name, this.department) : super(id, name);
  @override
  void printInfo() {
    print('OfficeWorker Name $name, ID $id');
  }

  @override
  double calculateSalary() {
    return 50000;
  }

  @override
  void doWork() {
    print('Working in $department ');
  }
}

class TechWorker extends Employee implements Workable {
  String field;
  TechWorker(String id, String name, this.field) : super(id, name);

  @override
  void printInfo() {
    print('TechWorker Name $name, ID $id');
  }

  @override
  double calculateSalary() {
    return 100000;
  }

  @override
  void doWork() {
    print('Working in $field '); 
  }
}

class Company {
  List<Employee> employees = [];
  void addEmployee(Employee employee) {
    employees.add(employee);
  }

  void printAllEmployees() {
    for (var employee in employees) {
      employee.printInfo();
      print("Lương ${employee.calculateSalary()}");
    }
  }

  double getTotalSalary() {
    double totalSalary = 0;
    for (var employee in employees) {
      totalSalary += employee.calculateSalary();
    }
    return totalSalary;
  }
}

void main() {
  var company = Company();
  var officeWorker = OfficeWorker("2003", "Huy", "Học sinh");
  var techWorker = TechWorker("2026", "Đạt", "Nhân Viên Kỹ Thuật ");
  company.addEmployee(officeWorker);
  company.addEmployee(techWorker);

  company.printAllEmployees();

  officeWorker.doWork();
  techWorker.doWork();
  print("Tổng Lương ${company.getTotalSalary()}");
}