// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  final List<Map<String, Object>> _questions = const [
    {
      'text': 'Who’s the main character in Pokémon?',
      'answer': ['Ash', 'Professor Oak', 'Pikachu ', 'Lula Molusco'],
    },
    {
      'text': 'Which of these Pokémon types don’t exist?',
      'answer': ['Fire', 'Water', 'Glass', 'Picachu'],
    },
    {
      'text': 'What colour is Ash’s hat?',
      'answer': ['White', 'Pink', 'Red', 'Blue'],
    },
    {
      'text': 'Fill in the blank. “ I want to be _____"',
      'answer': [
        'The very best',
        'The ultimate Pokémon catcher',
        'Amazing',
        'President'
      ],
    },
    {
      'text': 'What is the strongest Pokémon?',
      'answer': ['Pikachu', 'Charzard', 'Arceus', 'Moriart'],
    },
    {
      'text': 'What type of Pokémon is Pikachu?',
      'answer': ['Fire', 'Mystic', 'Electric', 'Water'],
    },
    {
      'text': 'The Pokémon type Fire is weakest against what type of Pokémon?',
      'answer': ['Bug', 'Ice', 'Water', 'Fire'],
    },
    {
      'text': 'How many evolutions does Eevee have?',
      'answer': ['4', '8', '6', '2'],
    },
    {
      'text': 'Which of these Pokémon is not a starter Pokémon?',
      'answer': ['Charmander', 'Bulbasaur', 'Meowth', 'Picachu'],
    },
    {
      'text': 'Which Pokémon is Misty’s main Pokémon?',
      'answer': ['Ekans', 'Staryu', 'Pikachu', 'Meowth'],
    },
    {
      'text': 'What is Piplup’s final evolution?',
      'answer': ['Prinplup', 'Turtwig', 'Empoleon', 'Meowth'],
    },
    {
      'text': 'What colour is pollywag?',
      'answer': ['Red', 'Blue', 'Pink', 'Black'],
    },
    {
      'text': 'What is squirtle’s final evolution?',
      'answer': ['Blastoise', 'Ivysaur', 'Wartortle', 'Empoleon'],
    },
    {
      'text': 'How old is Ash in the beginning of the series?',
      'answer': ['5', '10', '15', '13'],
    },
    {
      'text': 'What is Gyarados’ best attack?',
      'answer': ['Waterfall', 'Splash', 'Hydro Pump', 'river'],
    },
    {
      'text': 'What was the first Pokémon ash caught?',
      'answer': ['Pikachu', 'Caterpie', 'Bulbasaur', 'Staryu'],
    },
    {
      'text': 'What animal is Turtwig?',
      'answer': ['Dog', 'Bat', 'Turtle', 'Tiger'],
    },
    {
      'text': 'How many members are in the Squirtle Squad?',
      'answer': ['9', '5', '4', '3'],
    },
    {
      'text': 'Who is Brock’s main Pokémon?',
      'answer': ['Skitty', 'Forretress', 'Pineco', 'Bublebee'],
    },
    {
      'text': 'How many types of Pokémon are there?',
      'answer': ['4', '18', '12', '26'],
    }
  ];
  final List<String> _correctAnswer = const [
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
  ];

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
    print(_selectedQuestion);
  }

  bool get hasSelectedQuestions {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: hasSelectedQuestions 
        ? 
        Quiz(questions: _questions, selectedQuestion: _selectedQuestion, onAnswer: _answer)
        : 
        const Result(),
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
