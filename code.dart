

import 'dart:io';
import 'dart:math';

void main(){


random_pass();


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


