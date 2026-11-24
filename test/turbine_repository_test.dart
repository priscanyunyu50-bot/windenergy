import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:windenergy/features/data/repositories/turbine_repository_impl.dart';
import 'package:windenergy/features/data/services/db_service.dart';
import 'package:windenergy/features/domain/entities/pairing_code.dart';
import 'package:windenergy/features/domain/entities/position.dart';
import 'package:windenergy/features/domain/entities/turbine.dart';
import 'package:windenergy/utils/exceptions.dart';
import 'package:windenergy/utils/result.dart';

class MockDbService extends Mock implements DbService {}

void main() {
  late MockDbService mockDbService;
  late TurbineRepositoryImpl turbineRepositoryImpl;

  setUpAll(() {
    registerFallbackValue(const Position());
  });

  setUp(() {
    mockDbService = MockDbService();
    turbineRepositoryImpl = TurbineRepositoryImpl(dbService: mockDbService);
  });

  group("createTurbine", () {
    test("should return Success", () async {
      when(() => mockDbService.createTurbine(
            customName: any(named: 'customName'),
            serialNumber: any(named: 'serialNumber'),
            position: any(named: 'position'),
          )).thenAnswer((_) async => Success<int>());
      final result = await turbineRepositoryImpl.createTurbine();
      expect(result, isA<Success<int>>());
    });

    test("should return Error", () async {
      when(() => mockDbService.createTurbine(
            customName: any(named: 'customName'),
            serialNumber: any(named: 'serialNumber'),
            position: any(named: 'position'),
          )).thenThrow(ServerException());
      final result = await turbineRepositoryImpl.createTurbine();
      expect(result, isA<Error<int>>());
    });
  });

  group("deleteTurbine", () {
    test("should return Success", () async {
      when(() => mockDbService.deleteTurbine(turbineId: any(named: 'turbineId')))
          .thenAnswer((_) async => Success<dynamic>());
      final result = await turbineRepositoryImpl.deleteTurbine();
      expect(result, isA<Success>());
    });

    test("should return Error", () async {
      when(() => mockDbService.deleteTurbine(turbineId: any(named: 'turbineId')))
          .thenThrow(ServerException());
      final result = await turbineRepositoryImpl.deleteTurbine();
      expect(result, isA<Error>());
    });
  });

  group("readCount", () {
    test("should return Success", () async {
      when(() => mockDbService.readCount())
          .thenAnswer((_) async => Success<int>());
      final result = await turbineRepositoryImpl.readCount();
      expect(result, isA<Success<int>>());
    });

    test("should return Error", () async {
      when(() => mockDbService.readCount()).thenThrow(ServerException());
      final result = await turbineRepositoryImpl.readCount();
      expect(result, isA<Error<int>>());
    });
  });

  group("readPairingCode", () {
    test("should return Success", () async {
      when(() => mockDbService.readPairingCode(turbineId: any(named: 'turbineId')))
          .thenAnswer((_) async => Success<PairingCode>());
      final result = await turbineRepositoryImpl.readPairingCode();
      expect(result, isA<Success<PairingCode>>());
    });

    test("should return Error", () async {
      when(() => mockDbService.readPairingCode(turbineId: any(named: 'turbineId')))
          .thenThrow(ServerException());
      final result = await turbineRepositoryImpl.readPairingCode();
      expect(result, isA<Error<PairingCode>>());
    });
  });

  group("readTotalPowerW", () {
    test("should return Success", () async {
      when(() => mockDbService.readTotalPowerW())
          .thenAnswer((_) async => Success<double>());
      final result = await turbineRepositoryImpl.readTotalPowerW();
      expect(result, isA<Success<double>>());
    });

    test("should return Error", () async {
      when(() => mockDbService.readTotalPowerW()).thenThrow(ServerException());
      final result = await turbineRepositoryImpl.readTotalPowerW();
      expect(result, isA<Error<double>>());
    });
  });

  group("readTurbineActivation", () {
    test("should return Success", () async {
      when(() => mockDbService.readTurbineActivation())
          .thenAnswer((_) async => Success<dynamic>());
      final result = await turbineRepositoryImpl.readTurbineActivation();
      expect(result, isA<Success>());
    });

    test("should return Error", () async {
      when(() => mockDbService.readTurbineActivation())
          .thenThrow(ServerException());
      final result = await turbineRepositoryImpl.readTurbineActivation();
      expect(result, isA<Error>());
    });
  });

  group("readTurbines", () {
    test("should return Success", () async {
      when(() => mockDbService.readTurbines())
          .thenAnswer((_) async => Success<List<Turbine>>());
      final result = await turbineRepositoryImpl.readTurbines();
      expect(result, isA<Success<List<Turbine>>>());
    });

    test("should return Error", () async {
      when(() => mockDbService.readTurbines()).thenThrow(ServerException());
      final result = await turbineRepositoryImpl.readTurbines();
      expect(result, isA<Error<List<Turbine>>>());
    });
  });

  group("updateTurbine", () {
    test("should return Success", () async {
      when(() => mockDbService.updateTurbine(
            turbineId: any(named: 'turbineId'),
            customName: any(named: 'customName'),
            latitude: any(named: 'latitude'),
            longitude: any(named: 'longitude'),
          )).thenAnswer((_) async => Success<dynamic>());
      final result = await turbineRepositoryImpl.updateTurbine();
      expect(result, isA<Success>());
    });

    test("should return Error", () async {
      when(() => mockDbService.updateTurbine(
            turbineId: any(named: 'turbineId'),
            customName: any(named: 'customName'),
            latitude: any(named: 'latitude'),
            longitude: any(named: 'longitude'),
          )).thenThrow(ServerException());
      final result = await turbineRepositoryImpl.updateTurbine();
      expect(result, isA<Error>());
    });
  });
}