class Dog {
  // Properties/attributes
  String breed;
  String color;
  String origin;

  // Constructor
  Dog(this.breed, this.color, this.origin);

  // Methods/behaviours
  void bark() {
    print('Woof!');
  }

  void run() {
    print('The dog is running.');
  }
}

void main() {
  // Creating an instance of the Dog class/object
  var myDog = Dog('Labrador', 'Golden', 'Siberian');

  // Accessing properties/attributes/characteristics
  print('Breed: ${myDog.breed}');
  print('Color: ${myDog.color}');
  print('Origin:${myDog.origin}');

  // Calling methods
  myDog.bark();
  myDog.run();
}

class Person {
  // Properties
  String name;
  String phone;
  bool isMarried;
  int age;

  // Constructor
  Person(this.name, this.phone, this.isMarried, this.age);

  // Method to display information
  void displayInfo() {
    print('Name: $name');
    print('Phone: $phone');
    print('Marital Status: ${isMarried ? 'Married' : 'Single'}');
    print('Age: $age');
  }
}

void main() {
  // Creating an instance of the Person class
  var person = Person('John Doe', '+1234567890', true, 30);

  // Calling the displayInfo method to print information
  person.displayInfo();
}

class Area {
  double length;
  double width;

  Area(this.length, this.width);

  double calculateArea() {
    return length * width;
  }
}

void main() {
  var rectangle = Area(10.0, 3.0);

  print('The Area of the Rectangle is : ${rectangle.calculateArea()}');
}

// Define a class representing an Animal
class Animal {
  // Properties
  String name;
  String species;

  // Constructor
  Animal(this.name, this.species);

  // Method to make the animal sound
  void makeSound() {
    print('$name (${species}) makes a sound.');
  }
}

void main() {
  // Creating instances (objects) of the Animal class
  var cat = Animal('Whiskers', 'Cat');
  var dog = Animal('Buddy', 'Dog');

  // Accessing properties and behaviors
  print('${cat.name} is a ${cat.species}.');
  cat.makeSound();

  print('${dog.name} is a ${dog.species}.');
  dog.makeSound();
}
