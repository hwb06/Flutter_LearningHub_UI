

class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'Flutter', 'UI Design with Flutter Widgets:', '25 April 2024', '30 April 2024', 'Pending'),
  AssignmentData(
      'React Native', 'UI Design with React Native:', '25 April 2024', '30 April 2024', 'Submitted'),
  AssignmentData('PHP Laravel', 'Backend MySQL', '01 May 2024', '04 June 2024',
      'Not Submitted'),
  AssignmentData(
      'Flutter', 'RESTFUL APIs', '05 May 2024', '10 May 2024', 'Pending'),
];