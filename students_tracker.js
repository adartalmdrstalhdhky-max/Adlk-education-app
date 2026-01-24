// نظام تتبع اداء الطلاب - مشروع ادلك
// يعمل هذا النظام على تخزين البيانات محليا لضمان العمل بدون انترنت

const studentsData = [
    { id: 1, name: "احمد علي", grade: "التاسع", performance: "ممتاز", progress: 95 },
    { id: 2, name: "سارة محمد", grade: "التاسع", performance: "جيد جدا", progress: 80 },
    { id: 3, name: "خالد عبدالله", grade: "الثامن", performance: "متوسط", progress: 65 }
];

function trackProgress(studentId) {
    const student = studentsData.find(s => s.id === studentId);
    if (student) {
        console.log(`طالب: ${student.name} - مستوى الانجاز: ${student.progress}%`);
    } else {
        console.log("الطالب غير موجود");
    }
}

// تشغيل النظام
trackProgress(1);

