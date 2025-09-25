import '../models/question_model.dart';

final List<QuestionModel> subtractQuestions = [
  // Easy
  QuestionModel(
    question: '5 - 2 = ?',
    answers: ['2', '3', '4', '1'],
    correct: '3',
  ),
  QuestionModel(
    question: '9 - 4 = ?',
    answers: ['5', '6', '4', '3'],
    correct: '5',
  ),
  QuestionModel(
    question: '7 - 3 = ?',
    answers: ['3', '4', '5', '6'],
    correct: '4',
  ),

  // Medium
  QuestionModel(
    question: '25 - 12 = ?',
    answers: ['12', '13', '14', '11'],
    correct: '13',
  ),
  QuestionModel(
    question: '40 - 27 = ?',
    answers: ['12', '13', '14', '15'],
    correct: '13',
  ),
  QuestionModel(
    question: '33 - 19 = ?',
    answers: ['14', '15', '16', '17'],
    correct: '14',
  ),

  // Hard
  QuestionModel(
    question: '500 - 248 = ?',
    answers: ['252', '253', '254', '255'],
    correct: '252',
  ),
  QuestionModel(
    question: '789 - 346 = ?',
    answers: ['443', '444', '445', '446'],
    correct: '443',
  ),
  QuestionModel(
    question: '920 - 378 = ?',
    answers: ['542', '543', '544', '545'],
    correct: '542',
  ),

  // Very Hard 
  QuestionModel(
    question: '700 - 483 = ?',
    answers: ['217', '227', '237', '247'],
    correct: '217',
  ),
];
