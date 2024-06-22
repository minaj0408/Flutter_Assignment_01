class Car {
  // Properties
  String brand;
  String model;
  int year;
  double milesDriven;

  // Static property to keep track of number of Car objects
  static int numberOfCars = 0;

  // Constructor
  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  // Method to drive the car
  void drive(double miles) {
    milesDriven += miles;
  }

  // Method to get the miles driven
  double getMilesDriven() {
    return milesDriven;
  }

  // Method to get the brand
  String getBrand() {
    return brand;
  }

  // Method to get the model
  String getModel() {
    return model;
  }

  // Method to get the year
  int getYear() {
    return year;
  }

  // Method to get the age of the car
  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  // Create three Car objects

  Car car1 = Car('Toyota', 'Corolla', 2010, 120000);
  Car car2 = Car('Honda', 'Civic', 2015, 80000);
  Car car3 = Car('Ford', 'Focus', 2018, 30000);

  // Drive each car a different number of miles
  car1.drive(250);
  car2.drive(200);
  car3.drive(100);

  // Print out the brand, model, year, and miles driven for each car
  print('Car 1: ${car1.getBrand()}, ${car1.getModel()}, ${car1.getYear()}, Miles Driven: ${car1.getMilesDriven()}');
  print('Car 2: ${car2.getBrand()}, ${car2.getModel()}, ${car2.getYear()}, Miles Driven: ${car2.getMilesDriven()}');
  print('Car 3: ${car3.getBrand()}, ${car3.getModel()}, ${car3.getYear()}, Miles Driven: ${car3.getMilesDriven()}');

  // Print out the age of each car
  print('Car 1 Age: ${car1.getAge()} years');
  print('Car 2 Age: ${car2.getAge()} years');
  print('Car 3 Age: ${car3.getAge()} years');

  // Print out the total number of Car objects created
  print('Total number of cars created: ${Car.numberOfCars}');
}
