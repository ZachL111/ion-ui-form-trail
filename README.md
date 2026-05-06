# ion-ui-form-trail

`ion-ui-form-trail` keeps a focused Lua implementation around frontend apps. The project goal is to develop a Lua command-oriented project for form scenarios with framed sample traffic, bounds and ordering tests, and explicit failure cases.

## Why I Keep It Small

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Ion UI Form Trail Review Notes

Start with `interaction cost` and `view drift`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ion-ui-form-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `interaction cost` and `view drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Lua implementation avoids hidden state so fixture changes are easy to reason about.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 223, which lands in `ship`. The most cautious case is `baseline` at 153, which lands in `ship`.

## Scope

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
