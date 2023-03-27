// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  var _totalValue = 0;
  final List<Map<String, Object>> _questions = const [
    {
      'text': 'Who’s the main character in Pokémon?',
      'answer': [
        {'text': 'Ash', 'value': 10},
        {'text': 'Professor Oak', 'value': 0},
        {'text': 'Pikachu ', 'value': 0},
        {'text': 'Lula Molusco', 'value': 0},
      ],
    },
    {
      'text': 'Which of these Pokémon types don’t exist?',
      'answer': [
        {'text': 'Fire', 'value': 0},
        {'text': 'Water', 'value': 0},
        {'text': 'Glass', 'value': 10},
        {'text': 'Electric', 'value': 0},
      ],
    },
    {
      'text': 'What colour is Ash’s hat?',
      'answer': [
        {'text': 'White', 'value': 0},
        {'text': 'Pink', 'value': 0},
        {'text': 'Red', 'value': 10},
        {'text': 'Blue', 'value': 0},
      ],
    },
    {
      'text': 'Fill in the blank. “ I want to be _____"',
      'answer': [
        {'text': 'The very best', 'value': 10},
        {'text': 'The ultimate Pokémon catcher', 'value': 0},
        {'text': 'Amazing', 'value': 0},
        {'text': 'President', 'value': 0},
      ],
    },
    {
      'text': 'What is the strongest Pokémon?',
      'answer': [
        {'text': 'Pikachu', 'value': 0},
        {'text': 'Charzard', 'value': 0},
        {'text': 'Arceus', 'value': 10},
        {'text': 'Moriart', 'value': 0},
      ],
    },
    {
      'text': 'What type of Pokémon is Pikachu?',
      'answer': [
        {'text': 'Fire', 'value': 0},
        {'text': 'Mystic', 'value': 0},
        {'text': 'Electric', 'value': 10},
        {'text': 'Water', 'value': 0},
      ],
    },
    {
      'text': 'The Pokémon type Fire is weakest against what type of Pokémon?',
      'answer': [
        {'text': 'Bug', 'value': 0},
        {'text': 'Ice', 'value': 0},
        {'text': 'Water', 'value': 10},
        {'text': 'Fire', 'value': 0},
      ],
    },
    {
      'text': 'How many evolutions does Eevee have?',
      'answer': [
        {'text': '4', 'value': 0},
        {'text': '8', 'value': 10},
        {'text': '6', 'value': 0},
        {'text': '2', 'value': 0},
      ],
    },
    {
      'text': 'Which of these Pokémon is not a starter Pokémon?',
      'answer': [
        {'text': 'Charmander', 'value': 0},
        {'text': 'Bulbasaur', 'value': 0},
        {'text': 'Meowth', 'value': 10},
        {'text': 'Picachu', 'value': 0},
      ],
    },
    {
      'text': 'Which Pokémon is Misty’s main Pokémon?',
      'answer': [
        {'text': 'Ekans', 'value': 0},
        {'text': 'Staryu', 'value': 10},
        {'text': 'Pikachu', 'value': 0},
        {'text': 'Meowth', 'value': 0},
      ],
    },
    {
      'text': 'What is Piplup’s final evolution?',
      'answer': [
        {'text': 'Prinplup', 'value': 0},
        {'text': 'Turtwig', 'value': 0},
        {'text': 'Empoleon', 'value': 10},
        {'text': 'Meowth', 'value': 0},
      ],
    },
    {
      'text': 'What colour is pollywag?',
      'answer': [
        {'text': 'Red', 'value': 0},
        {'text': 'Blue', 'value': 10},
        {'text': 'Pink', 'value': 0},
        {'text': 'Black', 'value': 0},
      ],
    },
    {
      'text': 'What is squirtle’s final evolution?',
      'answer': [
        {'text': 'Blastoise', 'value': 10},
        {'text': 'Ivysaur', 'value': 0},
        {'text': 'Wartortle', 'value': 0},
        {'text': 'Empoleon', 'value': 0},
      ],
    },
    {
      'text': 'How old is Ash in the beginning of the series?',
      'answer': [
        {'text': '5', 'value': 0},
        {'text': '10', 'value': 10},
        {'text': '15', 'value': 0},
        {'text': '13', 'value': 0},
      ],
    },
    {
      'text': 'What is Gyarados’ best attack?',
      'answer': [
        {'text': 'Waterfall', 'value': 0},
        {'text': 'Splash', 'value': 0},
        {'text': 'Hydro Pump', 'value': 10},
        {'text': 'River', 'value': 0},
      ],
    },
    {
      'text': 'What was the first Pokémon ash caught?',
      'answer': [
        {'text': 'Pikachu', 'value': 0},
        {'text': 'Caterpie', 'value': 10},
        {'text': 'Bulbasaur', 'value': 0},
        {'text': 'Staryu', 'value': 0},
      ],
    },
    {
      'text': 'What animal is Turtwig?',
      'answer': [
        {'text': 'Dog', 'value': 0},
        {'text': 'Bat', 'value': 0},
        {'text': 'Turtle', 'value': 10},
        {'text': 'Tiger', 'value': 0},
      ],
    },
    {
      'text': 'How many members are in the Squirtle Squad?',
      'answer': [
        {'text': '9', 'value': 0},
        {'text': '5', 'value': 10},
        {'text': '4', 'value': 0},
        {'text': '3', 'value': 0},
      ],
    },
    {
      'text': 'Who is Brock’s main Pokémon?',
      'answer': [
        {'text': 'Skitty', 'value': 0},
        {'text': 'Forretress', 'value': 10},
        {'text': 'Pineco', 'value': 0},
        {'text': 'Bublebee', 'value': 0},
      ],
    },
    {
      'text': 'How many types of Pokémon are there?',
      'answer': [
        {'text': '4', 'value': 0},
        {'text': '18', 'value': 10},
        {'text': '12', 'value': 0},
        {'text': '26', 'value': 0},
      ],
    },
    {
      'text': 'Who is number 1 in the Pokédex?',
      'answer': [
        {'text': 'Charmander', 'value': 0},
        {'text': 'Bulbasaur', 'value': 10},
        {'text': 'Pikachu', 'value': 0},
        {'text': 'Bublebee', 'value': 0},
      ],
    },
    {
      'text': 'How many Pokémon are there?',
      'answer': [
        {'text': '1.000', 'value': 0},
        {'text': '989', 'value': 0},
        {'text': '913', 'value': 10},
        {'text': '125', 'value': 0},
      ],
    },
    {
      'text': 'How many types of Pokéballs are there?',
      'answer': [
        {'text': '4', 'value': 0},
        {'text': '27', 'value': 10},
        {'text': '13', 'value': 0},
        {'text': '10', 'value': 0},
      ],
    },
    {
      'text': 'Who is Ash’s rival?',
      'answer': [
        {'text': 'Brock', 'value': 0},
        {'text': 'Gary', 'value': 10},
        {'text': 'Charzard', 'value': 0},
        {'text': 'Coringa', 'value': 0},
      ],
    },
    {
      'text': 'What are the three types of starter Pokémon?',
      'answer': [
        {'text': 'Fairy, Bug, Steel', 'value': 0},
        {'text': 'Water, Air, Bug', 'value': 0},
        {'text': 'Grass, Fire, Water', 'value': 10},
        {'text': 'Batman, Robin, Coringa', 'value': 0},
      ],
    },
    {
      'text': 'What type of Pokémon is Magmar?',
      'answer': [
        {'text': 'Fire', 'value': 10},
        {'text': 'Steel', 'value': 0},
        {'text': 'Bug', 'value': 0},
        {'text': 'Water', 'value': 0},
      ],
    },
    {
      'text': 'What is Pollywag’s final evolution?',
      'answer': [
        {'text': 'Pollygon', 'value': 0},
        {'text': 'Poliwop', 'value': 0},
        {'text': 'Poliwrath', 'value': 10},
        {'text': 'Polidance', 'value': 0},
      ],
    },
    {
      'text': 'What animal is Growlithe?',
      'answer': [
        {'text': 'Dog', 'value': 10},
        {'text': 'Mouse', 'value': 0},
        {'text': 'Lion', 'value': 0},
        {'text': 'Rat', 'value': 0},
      ],
    },
    {
      'text': 'What colour is Arbok?',
      'answer': [
        {'text': 'Yellow', 'value': 0},
        {'text': 'Pink', 'value': 0},
        {'text': 'Purple', 'value': 10},
        {'text': 'Black', 'value': 0},
      ],
    },
    {
      'text': 'What type of Pokémon is Accelgor?',
      'answer': [
        {'text': 'Electric', 'value': 0},
        {'text': 'Bug', 'value': 10},
        {'text': 'Fighting', 'value': 0},
        {'text': 'Elementary', 'value': 0},
      ],
    },
  ];
/*  final List<String> _correctAnswer = const [
    'Ash',
    'Glass',
    'Red',
    'The very best',
    'Arceus',
    'Electric',
    'Water',
    '8',
    'Meowth',
    'Staryu',
    'Empoleon',
    'Blue',
    'Blastoise',
    '10',
    'Hydro Pump',
    'Caterpie',
    'Turtle',
    '5',
    'Forretress',
    '18'
  ];*/

  void _answer(int value) {
    setState(() {
      _selectedQuestion++;
      _totalValue += value;
    });
    print(_totalValue);
  }

  void _restartQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _totalValue = 0;
    });
  }

  bool get hasSelectedQuestions {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('Prokemon Chalenge'),
            Text(
              'Total: $_totalValue out of 300',
              style: const TextStyle(
                color: Color.fromARGB(255, 223, 227, 230),
                fontSize: 14,
              ),
            )
          ],
        )),
        body: hasSelectedQuestions
            ? Quiz(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                onAnswer: _answer)
            : Result(_totalValue, _restartQuiz),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
