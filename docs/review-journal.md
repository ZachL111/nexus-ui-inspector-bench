# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its frontend apps focus without claiming live deployment or external usage.

## Cases

- `baseline`: `view drift`, score 253, lane `ship`
- `stress`: `state pressure`, score 113, lane `watch`
- `edge`: `layout risk`, score 121, lane `watch`
- `recovery`: `interaction cost`, score 113, lane `watch`
- `stale`: `view drift`, score 229, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
