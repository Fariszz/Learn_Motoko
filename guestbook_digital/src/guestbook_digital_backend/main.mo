import Array "mo:base/Array";
actor {
  type Person = {
    name: Text;
    message: Text;
  };

  var entries : [Person] = [];

  public func addEntry(name: Text, message: Text): async ()  {
   let entry: Person = {
    name = name;
    message = message
   };
   
   entries := Array.append<Person>(entries, [entry]);
  };

  public query func getEntries(): async [Person] {
    return entries;
  }
};
