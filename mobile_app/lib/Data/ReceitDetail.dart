class MedicalReceiptWidget {
  final String patientName;
  final String dateOfBirth;
  final String patientAddress;
  final String phoneNumber;
  final String email;
  final String dateOfConsultation;
  final String timeOfConsultation;
  final String doctorName;
  final String clinicName;
  final String clinicAddress;
  final String servicesDescription;
  final double consultationFee;
  final double medicationCost;
  final double totalAmount;
  final String paymentMethod;

  MedicalReceiptWidget({
    required this.patientName,
    required this.dateOfBirth,
    required this.patientAddress,
    required this.phoneNumber,
    required this.email,
    required this.dateOfConsultation,
    required this.timeOfConsultation,
    required this.doctorName,
    required this.clinicName,
    required this.clinicAddress,
    required this.servicesDescription,
    required this.consultationFee,
    required this.medicationCost,
    required this.totalAmount,
    required this.paymentMethod,
  });
}