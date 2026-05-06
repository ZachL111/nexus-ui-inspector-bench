# nexus-ui-inspector-bench

`nexus-ui-inspector-bench` keeps a focused Lua implementation around frontend apps. The project goal is to develop a Lua command-oriented project for inspector scenarios with append-only fixtures, checkpoint recovery checks, and local-only command execution.

## Problem It Tries To Make Smaller

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Nexus UI Inspector Bench Review Notes

The first comparison I would make is `view drift` against `state pressure` because it shows where the rule is most opinionated.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/nexus-ui-inspector-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `view drift` and `state pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `view drift`, `state pressure`, `layout risk`, and `interaction cost`.

The Lua code keeps the review rule close to the tests.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The same command runs the local verification path. The highest-scoring domain case is `baseline` at 253, which lands in `ship`. The most cautious case is `stress` at 113, which lands in `watch`.

## Known Limits

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
