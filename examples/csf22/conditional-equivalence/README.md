# Conditional Observational Equivalence and Off-line Guessing Attacks in Multiset Rewriting

## EAP-EKE off-line guessing
* Equivalence: `/usr/bin/time -p ~/.local/bin/tamarin-prover --diff --heuristic=O --oraclename=equiv/eap-eke-off-line-guessing.oracle --prove="*" equiv/eap-eke-off-line-guessing.spthy +RTS -M23G -RTS >/tmp/eap-eke-off-line-guessing-proof.spthy`
* Trace: `/usr/bin/time -p ~/.local/bin/tamarin-prover --prove="*" trace/eap-eke-trace-tagged.spthy +RTS -M23G -RTS >/tmp/eap-eke-trace-tagged-proof.spthy`

## RFID
* CH07-UK1:  `~/.local/bin/tamarin-prover --diff --prove="*" CH07-UK1-mod.spthy +RTS -M23G -RTS >/tmp/CH07-UK1-mod-proof.spthy`
* LAK06-UK1: `~/.local/bin/tamarin-prover --diff --prove="*" LAK06-UK1-mod.spthy +RTS -M23G -RTS >/tmp/LAK06-UK1-mod-proof.spthy`
