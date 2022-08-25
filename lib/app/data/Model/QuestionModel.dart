class Question{

  final int id;
  final String question;
  final List<String> option;

  Question({required this.id, required this.option, required this.question});
}


const List sampleData = [
  {
    "id":1,
    "question": "Which of the following tastes do you desire right now?",
    "option":["Salty, umami, and sweet","Toasted ham","Grilled chicken","Something Sweet",

    ],

  },
  {
    "id":2,
    "question": "How much time do you have to eat?",
    "option":["Half-hour","One hour","Two or three hours","15 minutes",
    ],


  },
  {
    "id":3,
    "question": "Hot or cold food?",
    "option":["hot and cold","Cold","Hot","It does not matter",
    ],


  },
  {
    "id":4,
    "question": "Choose any one",
    "option":["Dine-in","Order food",
    ],


  }

];