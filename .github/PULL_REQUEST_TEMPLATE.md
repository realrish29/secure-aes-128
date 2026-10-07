## What changed

<!-- One or two sentences. -->

## Type

- [ ] rtl
- [ ] tb
- [ ] scripts
- [ ] docs
- [ ] reports
- [ ] chore

## Checklist

- [ ] Both cores still match the NIST vectors in `CONTRACTS.md`
- [ ] `python tb/verify_full_aes.py` and `python tb/verify_masked_aes.py` pass
- [ ] If `rtl/` changed: re-ran simulation and synthesis, and updated `docs/RESULTS.md`
- [ ] If a port or behaviour changed: updated `CONTRACTS.md` and `docs/ARCHITECTURE.md`
- [ ] No generated Vivado run folders or logs committed
