import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/report.dart';

class FirestoreService{
  Firestore _db = Firestore.instance;

  Stream<List<Report>> getReports(){

    // var val= _db
    //   .collection('reports')
    //   .orderBy('timeStamp', descending: true)
    //   .snapshots()
    //   .map((snapshot)=>snapshot.documents.map((doc)=>Report.fromJson(doc.data)).toList())
    // ;

    // print(val.length);

    return _db
      .collection('reports')
      .orderBy('timeStamp', descending: true)
      .snapshots()
      .map((snapshot)=>snapshot.documents
      .map((document)=>Report.fromJson(document.data))
      .toList());
    
    
  }

  Future<void> addReport(){

    Report report= Report(
      temp: 13,
      wax:'Green',
      line: 'Swix',
      timeStamp: DateTime.now().toIso8601String()
    );


    return _db.collection('reports').add(report.toJson());



  }


}