class SubjectModel {
  final String subName;
  final num marks;

  SubjectModel({required this.subName, required this.marks});

  factory SubjectModel.fromjson(Map<String, dynamic> json) {
    return SubjectModel(subName: json['sub_name'], marks: json['marks']);
  }
}

class ResultModel {
  final String studentName;
  final List<SubjectModel> subjects;

  ResultModel({required this.studentName, required this.subjects});

  factory ResultModel.fromjson(Map<String, dynamic> json) {
   

    return ResultModel(studentName: json['student_name'], subjects: (json['subjects'] as List).map((e)=>SubjectModel.fromjson(e)).toList());
  }
}
