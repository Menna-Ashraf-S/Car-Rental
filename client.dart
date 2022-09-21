import 'dart:io';
import 'manager.dart';
import 'pro.dart';

class Client  {

static List rented_car = [];

        Car_Rent () {
        for(int i = 0 ; i<Manager.cars.length ; ++ i){
          print(Manager.cars[i]);
          }

          print('\nEnter the ID of the Car you want to rent or 0 for go back') ;

                int selection = int.parse(stdin.readLineSync()!);

                if (selection == 0)
                {
                  Client();
                }
                else
                {
                  
                  for (int j = 0 ; j < Manager.cars.length ; ++ j){
                    if (selection == Manager.cars[j]['ID']){
                      print('Enter Your Full Name :');
                  String nameOfClient = stdin.readLineSync()!;
                      Map rented = {'Name of Client' : nameOfClient , 'ID':Manager.cars[j]['ID'],'Company Name': Manager.cars[j]['Company Name'],'Car Model':Manager.cars[j]['Car Model'], 'Car Color':Manager.cars[j]['Car Color'],'Year':Manager.cars[j]['Year'],'Gear Type':Manager.cars[j]['Gear'],'Price/Day':Manager.cars[j]['Price/Day'] };
                      rented_car.add(rented);
                      print ('Car Rented Successfully');
                      Manager.cars.removeAt(j);
                      break ;
                    }
                    else{
                      print ('Wrong ID');
                    }
                  }
                }

        
 }

Client(){
  print('Welcome !');
  while(true){
  print('\nChoose \n1 = > Rent A Car\n2 = > View Rented Cars\n3 = > Home');

      int selection = int.parse(stdin.readLineSync()!);

      if(selection == 1)
      {
        Car_Rent();
      }
      else if(selection == 2)
      {
        for (int i = 0 ; i < rented_car.length ; ++ i){
          print (rented_car);
        }
      }
      else if(selection == 3)
      {
        main();
      }
      else 
      {
        print('Wrong Selection');
      }

  }
}

}