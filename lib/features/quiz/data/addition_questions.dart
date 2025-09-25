import '../models/question_model.dart';

final List<QuestionModel> additionQuestions = [
  // Easy
  QuestionModel(
    question: '1 + 2 = ?',
    answers: ['2', '3', '4', '1'],
    correct: '3',
  ),
  QuestionModel(
    question: '4 + 5 = ?',
    answers: ['8', '9', '7', '10'],
    correct: '9',
  ),
  QuestionModel(
    question: '3 + 6 = ?',
    answers: ['8', '9', '10', '7'],
    correct: '9',
  ),

  // Medium
  QuestionModel(
    question: '12 + 15 = ?',
    answers: ['26', '27', '28', '25'],
    correct: '27',
  ),
  QuestionModel(
    question: '20 + 33 = ?',
    answers: ['52', '53', '54', '55'],
    correct: '53',
  ),
  QuestionModel(
    question: '14 + 19 = ?',
    answers: ['32', '33', '34', '35'],
    correct: '33',
  ),

  // Hard
  QuestionModel(
    question: '125 + 248 = ?',
    answers: ['373', '372', '374', '375'],
    correct: '373',
  ),
  QuestionModel(
    question: '389 + 147 = ?',
    answers: ['535', '536', '537', '538'],
    correct: '536',
  ),
  QuestionModel(
    question: '432 + 378 = ?',
    answers: ['800', '810', '820', '830'],
    correct: '810',
  ),

  // Very Hard (mental in ~30 sec)
  QuestionModel(
    question: '235 + 487 = ?',
    answers: ['712', '722', '332', '742'],
    correct: '722',
  ),
];
