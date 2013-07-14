 
// test/dartling/datagrid/dartling_datagrid_test.dart 
 
import "package:unittest/unittest.dart"; 
 
import "package:dartling/dartling.dart"; 
 
import "package:dartling_datagrid/dartling_datagrid.dart"; 
 
testDartlingDatagrid(Repo repo, String domainCode, String modelCode) { 
  var models; 
  var session; 
  var entries; 
  group("Testing ${domainCode}.${modelCode}", () { 
    setUp(() { 
      models = repo.getDomainModels(domainCode); 
      session = models.newSession(); 
      entries = models.getModelEntries(modelCode); 
      expect(entries, isNotNull); 
 
 
    }); 
    tearDown(() { 
      entries.clear(); 
    }); 
    test("Empty Entries Test", () { 
      expect(entries.isEmpty, isTrue); 
    }); 
 
  }); 
} 
 
testDartlingData(DartlingRepo dartlingRepo) { 
  testDartlingDatagrid(dartlingRepo, DartlingRepo.dartlingDomainCode, 
      DartlingRepo.dartlingDatagridModelCode); 
} 
 
void main() { 
  var dartlingRepo = new DartlingRepo(); 
  testDartlingData(dartlingRepo); 
} 
 
