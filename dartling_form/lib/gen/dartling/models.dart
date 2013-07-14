part of dartling_form; 
 
// lib/gen/dartling/models.dart 
 
class DartlingModels extends DomainModels { 
 
  DartlingModels(Domain domain) : super(domain) { 
    add(fromJsonToFormEntries()); 
  } 
 
  FormEntries fromJsonToFormEntries() { 
    return new FormEntries(fromJsonToModel( 
      dartlingFormModelJson, 
      domain, 
      DartlingRepo.dartlingFormModelCode)); 
  } 
 
} 
 
