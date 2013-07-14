 
// test/dartling/form/dartling_form_gen.dart 
 
import "package:dartling/dartling.dart"; 
 
import "package:dartling_form/dartling_form.dart"; 
 
genCode() { 
  var repo = new Repo(); 
 
  var dartlingDomain = new Domain("Dartling"); 
 
  Model dartlingFormModel = 
      fromJsonToModel(dartlingFormModelJson, dartlingDomain, "Form"); 
 
  repo.domains.add(dartlingDomain); 
 
  repo.gen("dartling_form"); 
} 
 
initDartlingData(DartlingRepo dartlingRepo) { 
   var dartlingModels = 
       dartlingRepo.getDomainModels(DartlingRepo.dartlingDomainCode); 
 
   var dartlingFormEntries = 
       dartlingModels.getModelEntries(DartlingRepo.dartlingFormModelCode); 
   initDartlingForm(dartlingFormEntries); 
   dartlingFormEntries.display(); 
   dartlingFormEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var dartlingRepo = new DartlingRepo(); 
  initDartlingData(dartlingRepo); 
} 
 
