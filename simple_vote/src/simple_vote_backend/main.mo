import Bool "mo:base/Bool";
// import HashMap "mo:base/HashMap";
import Array "mo:base/Array";
import Map "mo:base/Map";

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

  let candidates: [Candidate] = [
    { id = 1; name = "Oline" },
    { id = 2; name = "Freya" },    
  ];

  let users: [User] = [
    { id = 1; name = "Alice"; vote = false },
    { id = 2; name = "Bob"; vote = false },
    { id = 3; name = "Charlie"; vote = false },
  ];  
  
  private var voteCount: ?Map.Map<Nat, Nat> = (10, Nat.equal, Nat.hash);

    // Initialize vote count for all candidates
  private func initializeVoteCount() {
    for (candidate in candidates.vals()) {     
      voteCount := Map.add<Nat, Nat>(voteCount, candidate.id, 0);
    };
  };

  // Initialize vote count when actor starts
  initializeVoteCount();

  public query func getCandidates(): async [Candidate] {
    return candidates;
  };

  public query func getUsers(): async [User] {
    return users;
  };

    public query func hasUserVoted(userId: Nat): async Bool {
      switch (Array.find<User>(users, func(u) { u.id == userId })) {
        case (?user) { user.vote };
        case null { false };
      };
  };

  public func voteFor(candidateId: Nat, userId: Nat): async Bool {
    let mUser = Array.find<User>(users, func(u) { u.id == userId });

    if(mUser == null) {
      return false;
    };

    switch(mUser) {
      case (?u) {
        if (u.vote == true) {
          return false; // User has already voted
        };

        let mCandidate = Array.find<Candidate>(candidates, func(c) { c.id == candidateId });

        if (mCandidate == null) {
          return false; // Candidate not found
        };


        // Update user vote status
        // users := Array.map<User>(users, func(u2) { 
        //   if (u2.id == u.id) { 
        //     { id = u2.id; name = u2.name; vote = true } 
        //   } else { u2 } 
        // });

      };
      case null {
        return false; // User not found
      };
    };

    return true;    
    };
    
  };
