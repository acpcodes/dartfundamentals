void main(List<String> args) {
  final vehicle = VehicleType.car;
  switch (vehicle) {
    case VehicleType.motorcycle:
    case VehicleType.bicycle:
    case VehicleType.car:
      print('common vehicle types.');
      break; //fallthrough switch case.
    case VehicleType.truck:
      print('Usually used for work.');
      break;
  }
}

enum VehicleType { car, truck, motorcycle, bicycle }

//falling through.
