import 'package:windenergy/features/domain/entities/pairing_code.dart';
import 'package:windenergy/features/domain/entities/position.dart';
import 'package:windenergy/features/domain/entities/turbine.dart';
import 'package:windenergy/features/domain/repositories/turbine_repository.dart';
import 'package:windenergy/utils/result.dart';

class TurbineRepositoryImpl extends TurbineRepository{
  @override
  FutureResult<int> createTurbine({String serialNumber = "", String customName ="",Position position = const Position()}) {
    // TODO: implement createTurbine
    throw UnimplementedError();
  }

  @override
  FutureResult<dynamic> deleteTurbine({int turbineId = 0}) {
    // TODO: implement deleteTurbine
    throw UnimplementedError();
  }

  @override
  FutureResult<int> readCount() {
    // TODO: implement readCount
    throw UnimplementedError();
  }

  @override
  FutureResult<PairingCode> readPairingCode({int turbineId = 0}) {
    // TODO: implement readPairingCode
    throw UnimplementedError();
  }

  @override
  FutureResult<double> readTotalPowerW() {
    // TODO: implement readTotalPowerW
    throw UnimplementedError();
  }

  @override
  FutureResult<dynamic> readTurbineActivation() {
    // TODO: implement readTurbineActivation
    throw UnimplementedError();
  }

  @override
  FutureResult<List<Turbine>> readTurbines() {
    // TODO: implement readTurbines
    throw UnimplementedError();
  }

  @override
  FutureResult<dynamic> updateTurbine({int turbineId = 0, String customName = "", Position position = const Position()}) {
    // TODO: implement updateTurbine
    throw UnimplementedError();
  }
}