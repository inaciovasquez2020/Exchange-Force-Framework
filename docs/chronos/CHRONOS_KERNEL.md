# Chronos Kernel (Atlas/Phase-Transition Core)

## Locality class \mathcal{L}
An algorithm A is in \mathcal{L} if there exist constants (k,R,C) and a transcript
\tau_0 -> \tau_1 -> ... -> \tau_T such that:

(L1) Bounded locality: each update depends only on radius-R neighborhoods and FO^k-definable predicates.

(L2) Finite transcript capacity: |\tau_{t+1}| - |\tau_t| <= C.

(L3) Refinement semantics: transcript is iterative local information refinement (FO^k/WL^k normal form).

## Capacity–Entropy Inequality (Deterministic)
Assume per-step fresh bits bounded by C:
|\tau_{t+1} \setminus \tau_t| <= C.

Then for all t:
H(\tau_{t+1}) - H(\tau_t) <= H(\tau_{t+1} | \tau_t) <= C log 2.

Telescoping:
H(\tau_T) - H(\tau_0) <= T * C log 2.

## Stochastic Lift
If updates use internal randomness U_t and the capacity bound holds almost surely, then:
E[ H(\tau_{t+1}) - H(\tau_t) ] <= C log 2,
hence E[ H(\tau_T) - H(\tau_0) ] <= T * C log 2.

## Reconstruction Lower Bound
If “global reconstruction” at time T implies:
H(\tau_T) >= H(F) - O(1),
and initialization satisfies H(\tau_0)=O(1),
then:
T >= H(F)/(C log 2) - O(1).

Define EntropyDepth:
EDA_A(F) := min{ T : global reconstruction holds by time T }.

Conclusion:
EDA_A(F) >= Ω( H(F) ).

## Phase Separator Invariant for XOR/Parity
For affine XOR-SAT instance F: A x = b over F_2, define:
Phi(F) := dim(ker A) - dim(ker A_loc),
where A_loc is the restriction induced by all radius-R, FO^k-visible constraints.

Planted-parity XOR families with rank(A)=n-1 satisfy:
Phi(F)=1 and H(F)=Theta(n),
with FO^k_R-homogeneous local views.

Therefore these families are frozen for all A in \mathcal{L}:
EDA_A(F)=Omega(n).

## Chronos Kernel Theorem (Packaged)
Assume:
(i) A in \mathcal{L} with capacity C,
(ii) reconstruction implies H(\tau_T) >= H(F)-O(1),
(iii) H(\tau_0)=O(1).

Then:
EDA_A(F) >= H(F)/(C log 2) - O(1).

If additionally Phi(F)>0 implies H(F)=Theta(n), then:
Phi(F)>0 => EDA_A(F)=Omega(n).
