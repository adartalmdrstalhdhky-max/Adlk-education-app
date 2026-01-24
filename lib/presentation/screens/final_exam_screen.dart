import 'package:flutter/material.dart';
import '../../domain/entities/exam.dart';
import '../../domain/usecases/submit_exam_usecase.dart';

class FinalExamScreen extends StatefulWidget {
  final Exam exam;
  const FinalExamScreen({super.key, required this.exam});

  @override
  State<FinalExamScreen> createState() => _FinalExamScreenState();
}

class _FinalExamScreenState extends State<FinalExamScreen> {
  final Map<String, int> answers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الاختبار النهائي')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ...widget.exam.questions.map((q) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(q.question),
              ...List.generate(q.options.length, (i) {
                return RadioListTile<int>(
                  value: i,
                  groupValue: answers[q.id],
                  onChanged: (v) => setState(() => answers[q.id] = v!),
                  title: Text(q.options[i]),
                );
              })
            ],
          )),
          ElevatedButton(
            onPressed: () {
              final score = SubmitExamUseCase()(widget.exam, answers);
              Navigator.pop(context, score);
            },
            child: const Text('إنهاء الاختبار'),
          )
        ],
      ),
    );
  }
}
