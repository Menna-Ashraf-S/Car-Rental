import 'dart:io';
import 'pro.dart';
import 'client.dart';
class Manager {

  int mPass = 1234;
  int nOfTries = 3;
 static List cars = [];
 
  addNewCar (int id_car, String company_car , String model_car , String color_car , int year_car , String car_gear , int price_car   ){
    Map <String , dynamic> Car = {'ID':id_car,'Company Name': company_car,'Car Model':model_car, 'Car Color':color_car,'Year':year_car,'Gear Type':car_gear,'Price/Day':price_car};
    cars.add(Car);
  }
  
  
  selection (){
    while (true)
    {
    print('\nChoose \n1 = > Add New Car for Rent \n2 = > View List of Cars \n3 = > View List of Rented Cars \n4 = > Remove a car \n5 = > Home');

    int selection = int.parse(stdin.readLineSync()!);

    if (selection == 1)
    {
      print('Enter Car ID :');
      int id_newCar = int.parse(stdin.readLineSync()!); 
      print('Enter Car Company Name :');
      String company_newCar = stdin.readLineSync()! ;
      print('Enter Car Model Name :');
      String model_newCar = stdin.readLineSync()! ;
      print('Enter Car Color :');
      String color_newCar = stdin.readLineSync()! ;
      print('Enter Car Production Year :');
      int year_newCar = int.parse(stdin.readLineSync()!) ;
      print('Enter Car Gear type :');
      String gear_newCar = stdin.readLineSync()! ;
      print('Enter Car Price  :');
      int price_newCar = int.parse(stdin.readLineSync()!) ;

      addNewCar(id_newCar,company_newCar, model_newCar, color_newCar, year_newCar, gear_newCar, price_newCar) ;

      print('Car added successfully ');


    }
    else if (selection == 2 )
    {
        for(int i = 0 ; i<cars.length ; ++ i){
          print(cars[i]);
        }
    }
    else if (selection == 3)
    {
      for (int i = 0 ; i < Client.rented_car.length ; ++ i){
          print (Client.rented_car);
        }
    }
    else if (selection == 4)
    {
       print('Enter the Car ID: ');
          int id_checkRemove = int.parse(stdin.readLineSync()!);
          for(int i=0; i<cars.length; i++)

          { 
            if(id_checkRemove == cars[i]['ID']){
           cars.removeAt(i);
            print('Car Deleted Successfully');
          
          } 
          }
          
    }
    else if (selection == 5)
    {
      main();
    }
    else 
    {
      print('Wrong Selection');
    }
  }}


Manager(){
  print('Welcome Manager ! \n');
  while(nOfTries != 0)
  {
  print('Please Enter your Password :');
    int mPassNew = int.parse(stdin.readLineSync()!);
    if(mPassNew == mPass)
    {
      print('Correct !\n');
        selection();
    }
    else
    {
      print('Wrong Password\n');
      nOfTries--;
      print ('You have ${nOfTries} left\n ');
    }

}
  if (nOfTries == 0){
    print('Please, try again later ');
    exit(0);
  }
  
}


}