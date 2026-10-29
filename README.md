# TestExamples: AtlaSent deploy gate demo

A fake deploy (`deploy.sh` only prints a message) protected by the
[AtlaSent GitHub Action](https://github.com/Atlasent/atlasent-action).
The workflow is `.github/workflows/atlasent-demo.yml`.

## What to try

| Run | Expected result |
|---|---|
| **Run workflow** on `main` | `allow`: permit issued and verified, the Deploy step runs, and reusing the permit is blocked |
| **Run workflow** on any other branch | `deny` (`ACTOR_UNVERIFIED`): that branch isn't linked in AtlaSent, so the Deploy step never runs |

Each run writes a summary table on the run page, and every decision appears
in the AtlaSent console's history.

## Setup

Repository secrets (Settings → Secrets and variables → Actions):

- `ATLASENT_API_KEY`: an AtlaSent API key with `evaluate:write`, `verify:execute` and `idp_broker:mint`
- `ATLASENT_BASE_URL`: the AtlaSent runtime URL, ending in `/functions/v1`

A GitHub environment named `demo` (Settings → Environments).

In the AtlaSent console, under Integrations → GitHub, link:

- Repository: `vajra88/TestExamples`
- Workflow file: `.github/workflows/atlasent-demo.yml`
- Branch: `main`
- GitHub environment: `demo`
- AtlaSent environment: `test`
