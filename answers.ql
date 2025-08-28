1.Design Your Own Class – Smartphone Example 📱
# Base Class: Smartphone
class Smartphone:
    def __init__(self, brand, model, price):
        self.brand = brand
        self.model = model
        self.price = price

    def show_details(self):
        print(f"Brand: {self.brand}, Model: {self.model}, Price: ${self.price}")

    def make_call(self, number):
        print(f"{self.brand} {self.model} is calling {number}...")

# Inheritance: AdvancedSmartphone inherits from Smartphone
class AdvancedSmartphone(Smartphone):
    def __init__(self, brand, model, price, camera_mp, battery_mah):
        super().__init__(brand, model, price)  # Initialize parent attributes
        self.camera_mp = camera_mp
        self.battery_mah = battery_mah

    def show_details(self):
        # Polymorphism: override parent method
        print(f"Brand: {self.brand}, Model: {self.model}, Price: ${self.price}, Camera: {self.camera_mp}MP, Battery: {self.battery_mah}mAh")

    def take_photo(self):
        print(f"{self.brand} {self.model} takes a photo with {self.camera_mp}MP camera!")

# Creating objects
phone1 = Smartphone("Nokia", "3310", 50)
phone2 = AdvancedSmartphone("Apple", "iPhone 15", 1200, 48, 4000)

phone1.show_details()
phone1.make_call("0712345678")

phone2.show_details()
phone2.make_call("0798765432")
phone2.take_photo()

2. Activity 2: Polymorphism Challenge – Vehicles Example 🚗✈️

# Base class
class Vehicle:
    def move(self):
        pass  # Generic action

# Subclasses with polymorphic behavior
class Car(Vehicle):
    def move(self):
        print("Driving 🚗")

class Plane(Vehicle):
    def move(self):
        print("Flying ✈️")

class Boat(Vehicle):
    def move(self):
        print("Sailing ⛵")

# Demonstration
vehicles = [Car(), Plane(), Boat()]

for vehicle in vehicles:
    vehicle.move()
