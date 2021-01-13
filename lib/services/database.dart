part of 'services.dart';

class DatabaseService {
  
  Future<void> addQuizData(Map quizData, String quizId) async {
    await Firestore.instance.collection("Quiz")
    .document(quizId)
    .setData(quizData)
    .catchError((e){
      print(e.toString());
    });
  }

}