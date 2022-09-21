
import 'dart:io';
import 'client.dart';
import 'manager.dart';
void main() {
  print('\nWelcome to IEEE Car Rental Company !\n');
  while (true)
  {
  print('Choose \n\n1 = > Client \n2 = > Manager\n ');

  int selection = int.parse(stdin.readLineSync()!);

  if(selection == 1)
  {
    Client c = Client();
  }
  else if(selection == 2)
  {
    Manager m = Manager();
  }
  else 
  {
    print('Wrong Selection');
  }
  
}}
