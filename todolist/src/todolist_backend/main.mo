import Nat "mo:base/Nat";
import Buffer "mo:base/Buffer";

actor {
  // var tasks: [Text] = [];
  var tasks = Buffer.Buffer<Text>(1);

  public func addTask(task: Text): async () {    
    tasks.add(task);
  };

  public func  removeTask(index: Nat): async Text {    
      tasks.remove(index);
  };

  public query func getTasks(): async [Text] {
    return Buffer.toArray<Text>(tasks);
  };
}