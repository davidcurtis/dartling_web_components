part of dartling_datagrid; 
 
// lib/gen/dartling/datagrid/entries.dart 
 
class DatagridEntries extends ModelEntries { 
 
  DatagridEntries(Model model) : super(model); 
 
  Map<String, Entities> newEntries() { 
    var entries = new Map<String, Entities>(); 
    var concept; 
    concept = model.concepts.singleWhereCode("Member"); 
    entries["Member"] = new Members(concept); 
    return entries; 
  } 
 
  Entities newEntities(String conceptCode) { 
    var concept = model.concepts.singleWhereCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptError("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Member") { 
      return new Members(concept); 
    } 
  } 
 
  ConceptEntity newEntity(String conceptCode) { 
    var concept = model.concepts.singleWhereCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptError("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Member") { 
      return new Member(concept); 
    } 
  } 
 
  fromJsonToData() { 
    fromJson(dartlingDatagridDataJson); 
  } 
 
  Members get members => getEntry("Member"); 
 
} 
 
