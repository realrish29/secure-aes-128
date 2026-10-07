# Contributing

This is an academic project with a fixed team, so this page is mostly a working agreement for the team and a guide for reviewers.

## Ground rules

1. **Do not break the contract.** Both cores must still pass the vectors in [CONTRACTS.md](CONTRACTS.md).
2. **Code and docs change together.** If you change a port, a number, or behaviour, update the matching doc in the same commit.
3. **Never claim more than was measured.** Security claims need TVLA results; see [docs/ROADMAP.md](docs/ROADMAP.md).
4. **Do not commit generated Vivado run folders.** `.gitignore` already excludes them.

## Workflow

```powershell
git checkout -b feature/<short-name>     # one branch per change
# ... edit ...
python tb/verify_full_aes.py             # quick checks
python tb/verify_masked_aes.py
vivado -mode batch -source scripts/run_simulation_and_synthesis.tcl   # before touching rtl/
git add <files>
git commit -m "<type>: <what and why>"
git push -u origin feature/<short-name>
```

Then open a pull request; the template lists what to confirm.

## Commit message style

`<type>: <summary>` where type is one of:

| Type | Use for |
|------|---------|
| `rtl` | Verilog changes |
| `tb` | Testbench or Python model changes |
| `scripts` | Tcl automation |
| `docs` | Documentation |
| `reports` | Report PDFs or sources |
| `chore` | Repo housekeeping |

Example: `rtl: add LFSR mask generator for masked core`

## Where things go

See the layout in [README.md](README.md#6-repository-layout).
