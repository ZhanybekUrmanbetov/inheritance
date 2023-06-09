void main() {
  Developer bars = Developer(language: 'en', name: 'bars', salary: 2000);
  Manager eva = Manager(bonus: 145, name: 'eva', salary: 1990);
  Manager zari = Manager(bonus: 122, name: 'zari', salary: 2300);
  Developer jon = Developer(language: 'ru', name: 'jon', salary: 5000);
  List<Employee> employees = [bars, eva, zari, jon];
  Employee.getTotalSalary(employees);
}

class Employee {
  String name;
  double salary;
  Employee({required this.name, required this.salary});
  double salaryReturn() {
    return (salary);
  }

  static getTotalSalary(List<Employee> employees) {
    double summ = 0;
    for (int i = 0; i < employees.length; i++) {
      summ += employees[i].salary;
    }
    print(summ);
  }
}

class Manager extends Employee {
  double bonus;

  @override
  double salaryReturn() {
    return salary + bonus;
  }

  Manager({required this.bonus, required super.name, required super.salary});
}

class Developer extends Employee {
  String language;
  Developer(
      {required this.language, required super.name, required super.salary});
}
