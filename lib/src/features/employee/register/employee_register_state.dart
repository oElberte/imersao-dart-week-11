enum EmployeeRegisterStateStatus {
  initial,
  success,
  error,
}

class EmployeeRegisterState {
  const EmployeeRegisterState({
    required this.status,
    required this.registerAdm,
    required this.workDays,
    required this.workHours,
  });

  EmployeeRegisterState.initial()
      : this(
          status: EmployeeRegisterStateStatus.initial,
          registerAdm: false,
          workDays: [],
          workHours: [],
        );

  final EmployeeRegisterStateStatus status;
  final bool registerAdm;
  final List<String> workDays;
  final List<int> workHours;

  EmployeeRegisterState copyWith({
    EmployeeRegisterStateStatus? status,
    bool? registerAdm,
    List<String>? workDays,
    List<int>? workHours,
  }) {
    return EmployeeRegisterState(
      status: status ?? this.status,
      registerAdm: registerAdm ?? this.registerAdm,
      workDays: workDays ?? this.workDays,
      workHours: workHours ?? this.workHours,
    );
  }
}
