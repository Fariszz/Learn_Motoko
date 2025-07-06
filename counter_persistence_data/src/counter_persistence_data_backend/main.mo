actor {
  var unstableValue = 0;
  stable var value = 0;

  public func postInc() : async Nat {
    value += 3;
    return value;
  };

  public func inc() : async Nat {
    unstableValue += 1;
    return unstableValue;
  };

  public query func getValue() : async Nat {
    return value;
  };

  public query func getUnstableValue() : async Nat {
    return unstableValue;
  };
};
