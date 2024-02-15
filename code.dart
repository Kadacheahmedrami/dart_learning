

import 'dart:io';
import 'dart:math';

void main(){


random_pass();
//printphrase();
//print_even_numbers();





}


// function that generate a random password
void random_pass(){

String lettres ="abcdefghijklmnopqrstuvwxyz";

String special_caracters = "*_-ù^!@&";

String? password=""; 

for(int i=0; i<12 ; i++ )
  {
    int x = Random().nextInt(4);

    if(x == 0)
      {password = password! + lettres[ Random().nextInt(lettres.length-1)] ;}
    else if (x == 1 )
      {password = password! + Random().nextInt(9).toString() ;}
      else if (x == 2)
        {password = password! +  lettres[ Random().nextInt(lettres.length-1)].toUpperCase();}
        else 
          {password = password! +  special_caracters[ Random().nextInt(special_caracters.length-1)].toUpperCase();}
  }

print("password:  $password");
}


// creating a custome print command with required paramater 
void printphrase({required String? name,gender, required int? age,height  , String? country , bool parents_dead=false } ){
if(parents_dead)
{print("hello my name is $name i am $gender $age years old $height cm i live in ${country ?? "planet earth -_- "} i love my parents");}
else
{print("hello my name is $name i am $gender $age years old $height cm i live in ${country ?? "planet earth -_- "} i miss my parents");}

}


// printing even number between a and b
void print_even_numbers ()

{

print("enter the first number");
int a = int.parse(stdin.readLineSync()!);
print("enter the second number");
int b = int.parse(stdin.readLineSync()!);


for (int i=a ; i <= b ; i++)
{
  if(i%2 == 0 )
  {
    print(i);
  }

}
}
