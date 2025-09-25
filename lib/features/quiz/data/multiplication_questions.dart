import '../models/question_model.dart';

final List<QuestionModel> multiplicationQuestions = [
  // Easy
  QuestionModel(
    question: '2 × 3 = ?',
    answers: ['5', '6', '7', '8'],
    correct: '6',
  ),
  QuestionModel(
    question: '4 × 5 = ?',
    answers: ['20', '19', '18', '21'],
    correct: '20',
  ),
  QuestionModel(
    question: '3 × 6 = ?',
    answers: ['18', '17', '16', '19'],
    correct: '18',
  ),

  // Medium
  QuestionModel(
    question: '12 × 3 = ?',
    answers: ['36', '35', '34', '37'],
    correct: '36',
  ),
  QuestionModel(
    question: '7 × 8 = ?',
    answers: ['54', '56', '58', '60'],
    correct: '56',
  ),
  QuestionModel(
    question: '9 × 6 = ?',
    answers: ['53', '54', '55', '56'],
    correct: '54',
  ),

  // Hard
  QuestionModel(
    question: '15 × 14 = ?',
    answers: ['210', '215', '220', '225'],
    correct: '210',
  ),
  QuestionModel(
    question: '18 × 13 = ?',
    answers: ['234', '236', '238', '240'],
    correct: '234',
  ),
  QuestionModel(
    question: '21 × 19 = ?',
    answers: ['399', '399', '400', '401'],
    correct: '399',
  ),

  // Very Hard (mental in ~30 sec)
  QuestionModel(
    question: '37 × 26 = ?',
    answers: ['962', '962', '972', '982'],
    correct: '962',
  ),
];
