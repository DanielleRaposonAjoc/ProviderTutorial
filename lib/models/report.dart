class Report{
  int temp;
  String wax;
  String line;
  String timeStamp;

  Report({this.temp, this.wax,this.line,this.timeStamp});

  Report.fromJson(Map<String, dynamic> parsedJson)
    : temp = parsedJson['temp'],
      wax = parsedJson['wax'],
      line = parsedJson['line'],
      timeStamp = parsedJson['timeStamp'].toString();

  Map<String, dynamic> toJson()=>
  {
    'temp': temp,
    'wax': wax,
    'line': line,
    'timeStamp': timeStamp
  };

  
}