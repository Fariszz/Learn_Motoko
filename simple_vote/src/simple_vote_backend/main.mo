import Bool "mo:base/Bool";
import HashMap "mo:base/HashMap";

actor {
  
  type User = {
    id: Nat;
    name: Text;
    vote: Bool
  };

  type Candidate = {
    id: Nat;
    name: Text;
  };
  
  // var candidates: ?HashMap.HashMap<Candidate, Nat> = null;
  var candidates: [Candidate] = [
    { id = 1; name = "Oline" },
    { id = 2; name = "Freya" },    
  ];  
};
