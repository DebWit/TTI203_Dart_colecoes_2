import 'dart:html';
import 'dart:io';
import 'dart:math';

void main(){
  var filmes = < Map<String, dynamic> > [];
  // titulo, genero, notas: [5,4]
  var filme1 = {
    'titulo' : 'Titanic',
    'genero' : 'Romance',
    'notas' : [2 , 5],
  };

  var filme2 = {
    'titulo': 'ABC',
    'genero': 'Terror',
    'notas' : [5 , 5]
  };
  filmes = [filme1, filme2];

//  filmes.add({'titulo': titulo, 'genero': genero, 'notas': notas});

  // crud de filmes
  print('Welcome to our Movies Programs!\nPlease, type the number of what do you want to do:\n1: Add a Movie\n2: Read our list\n3: Update some information\n4: Delete a movie from the list\n5: Exit');
  var tapOk = true;
  var input;
  var name;
  var numMoviesOk = true;
  var quant;
  var numGrades;
  var grades = [];


  while(tapOk){
    try{
      dynamic input = stdin.readLineSync();
      input = int.parse(input);
      if ((input<0) || (input>5)){
        print('Please, type only the numbers referents of the menu.\n1: Add a Movie\n2: Read our list\n3: Update some information\n4: Delete a movie from the list\n5: Exit');
      }
      else{
        tapOk = false;
      }

    } catch(e){
      print('Please, type only numbers.');
    }
  }
    switch(input){
    case 1:{
      while(numMoviesOk){
    try{
      print('How much movies do you want to add?');
      dynamic quant = stdin.readLineSync();
      quant = int.parse(quant);
      numMoviesOk = false;

    } catch(e){
      print('Please, type only numbers.');
    }

    for (var item in Iterable.generate(quant)){
      print('Type the name of the movie: ');
      var name = stdin.readLineSync();
      print("\nType this movie's genre: ");
      var genre = stdin.readLineSync();
      print('\nHow much grades do you want to add?');
      dynamic numGrades = stdin.readLineSync();
      numGrades = int.tryParse(numGrades);
      for (var a in Iterable.generate(numGrades)){
        print('Type the grade: ');
        dynamic nota = stdin.readLineSync();
        nota = int.tryParse(nota);
        grades.add(nota);
      }

    var newMovie = {'titulo' : name, 'genero' : genre, 'notas' : grades};
    filmes.add(newMovie);
    }




    break;
    }
    case 2:{
      
      break;
    }
    case 3:{

    break;
    }
    case 4:{

    break;
    }
    case 5:{

    break;
    }


  }











  // var filmes = [filme1 , filme2];
  // // usando um for each, exibir titulo e media de notas para cada filme no formato titulo:media
  //     num soma = 0;


  // for (var i in filmes){
  //   var notas = i['notas'] as List;
  //   if (notas.length == 2){
  //     print('${i['titulo']}:${(notas[0] + notas[1])/2}');
  //   }
  //   else if (notas.length==1){
  //     print('${i['titulo']}:${notas[0]}');
  //   }
  //   else if (notas.length > 2){
  //     for (var a in notas){

  //       soma = soma + a;
  //     }
  //     var media = soma / notas.length;
  //     print('${i['titulo']}:$media');

  //   }

  // }
}
}