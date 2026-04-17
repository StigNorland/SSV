# CLAUDE.md — SSV Project Handoff

## Author
Stig Norland, Independent Researcher, Bergen, Norway.

## Framework
**Saturated Superfluid Vacuum (SSV)** theory.  
Single postulate: the physical vacuum is a compressible inviscid superfluid near saturation density, governed by the logarithmic Schrödinger equation (LogSE). All particles, forces, gravity, thermodynamics, and cosmology emerge from this single medium. Dark matter and dark energy are eliminated artefacts.

Key identifications:
- Particles = stable topological vortex-ring defects
- Forces = emergent pressure-gradient modes
- Gravity = acoustic Bjerknes force
- Higgs = vacuum amplitude mode
- BH = breathing soliton (bridges particle ladder to galactic dynamics)

Key constants: `ξ = ħ/(m_e c)` (healing length, universal UV cutoff), `μ₀ = m_e/α ≈ 70 MeV` (mass ladder unit), `α` (chiral-shear coupling ratio)

---

## Repository Structure

| File | Content |
|------|---------|
| `SSV-01-draft-07.tex` | Paper I: Particle spectrum, mass ladder, vortex ring derivation |
| `SSV-02-draft-08.tex` | Paper II: Forces, gravity, electroweak sector |
| `SSV-03-draft-06.tex` | Paper III: Thermodynamics, arrow of time, entropy |
| `SSV-04a-draft-02.tex` | Paper IV(a): Galactic rotation curves |
| `SSV-04b-draft-02.tex` | Paper IV(b): Galactic resonances, morphology |
| `SSV-05-draft-01.tex` | Paper V: Quantum gravity, cosmogony |
| `calculate_velocity_profile.py` | M31 rotation curve fit (LogSE soliton model) |
| `bh_eigenfrequency.py` | BH breather eigenfrequency calculations |
| `0224.dat` | M31 rotation curve data (625 points, 0.05 kpc steps) |
| `gravity.tex` | Superseded — gravity now in SSV-02 |

---

## Current Status per Paper

### Paper I (SSV-01)
- **Status**: Near-final. Clean compile.
- Key result: α-harmonic mass ladder placing 17 PDG particles within 1.6% at half-integer multiples of μ₀
- Session Apr-12: R* = ξ/α derived as true energy minimum from 3-term GPE functional (not a self-consistency check — this is a significant upgrade)
- **TODO**: Update abstract — change "self-consistently places" → "derives R*"
- f₀(980) anomaly explained by winding-number selection rule

### Paper II (SSV-02)
- **Status**: Near-final. Clean compile.
- Gravity section rewritten Apr-12: `G = α_G · ħc · α²/(N_p² · m_e²)`, reproduces G_obs to 0.6%
- W boson mass: scalar estimate gives ~9.6 GeV; golden-ratio cap conjecture `R_cap = φ·R*` gives ~78.9 GeV (1.8% of observed). Rigorous 3D GPE derivation is open.
- **Open**: Derive α_G ≈ 5.906×10⁻³⁹ from 3D proton breather profile (sub-grain acoustic monopole suppression)
- Previous ρ₀ error (~77 orders of magnitude) is fully corrected in current draft

### Paper III (SSV-03)
- **Status**: Complete draft.
- Thermodynamics from vortex reconnection topology; arrow of time from irreversibility of reconnections
- Open: Quantitative reconnection rate (needs numerical GPE with realistic tangle IC)
- Open: CPT violation amplitude vs experimental bounds (O(10⁻⁸) at EM scale, within bounds but mechanism needs analysis)

### Paper IV (SSV-04a + SSV-04b)
- **Status**: Complete draft (v2, 12 pages). Clean compile.
- Five-galaxy calibration: C = 1.808 ± 0.012 × 10⁹ kpc·M☉
- Dimensional derivation of C from {ħ, G, m_e, m_p, α} at integer exponents (n,k) = (16,7)
- M31 fit: RMS ~7.5 km/s vs NFW ~27 km/s; ΔAIC ≈ −41.8
- Non-axisymmetric modes (m=1,2): bars, spirals, warps with predicted amplitude hierarchy
- **TODO**: Verify wiggle-scale values for galaxies other than M31 against HI survey literature before submission
- **Open**: Derive exponents 8 and 7/2 in `A = λ_e · α⁻⁸ · (m_p/m_e)^(7/2)` as eigenvalues of 2D LogSE disc soliton (flagged for companion paper)

### Paper V (SSV-05)
- **Status**: Complete draft. Clean compile.
- QM derived from Madelung/GPE; Einstein field equations as hydrodynamic limit
- Five-stage cosmogony: Permissive Void → Kibble-Zurek vortex nucleation
- Six falsifiable predictions; numerical appendix for proton mass minimization
- Consciousness dissolution: consequence of SSV ontology — present as structural result, not philosophical aside

---

## Priority Open Problems

1. **Close α_G**: 3D proton breather derivation → sub-grain suppression factor (n,k) → bridges Papers I and II
2. **Paper I abstract**: Update to reflect R* derivation
3. **W boson mass**: Derive R_cap = φ·R* rigorously from 3D time-dependent GPE simulation of quark-level reconnection
4. **Paper IV wiggle scales**: Verify against HI survey literature (THINGS, WHISP)
5. **Companion paper**: Derive (8, 7/2) exponents as 2D LogSE eigenvalues

---

## LaTeX Workflow

```bash
# Compile (always twice for TOC + cross-refs)
pdflatex -interaction=nonstopmode FILE.tex
pdflatex -interaction=nonstopmode FILE.tex

# Filter log noise
grep -E "^!|Overfull|Underfull|LaTeX Warning" FILE.log \
  | grep -v "hyperref\|Font\|Float"
```

Standard packages: `amsmath`, `amssymb`, `physics`, `hyperref`  
Paper structure: abstract → TOC → numbered sections → objection-handling paragraphs → numbered conclusions → `thebibliography`

---

## Key Physical Principles (Do Not Lose)

- **Mass creates density depression** (ρ < ρ₀), not elevation
- **Coupling hierarchy**: η_γ = 1, η_e ~ α, η_p ~ (m_e/m_p)³
- **UV divergence of quantum gravity dissolves**: ξ is the natural cutoff — same ξ in both particle and gravity sectors; no graviton
- **Gravity = dη/dr** (gradient of density contrast), not η itself — this correction was decisive for rotation curve fits
- **Equivalence principle origin**: mass-energy = acoustic cross-section in the medium; gravity is universal because everything displaces the medium

---

## Positioning

Framework is positioned relative to: Volovik, Zloshchastiev, analogue gravity community.  
Novel contributions not in existing literature: harmonic mass ladder, specific topological defect assignments, galactic soliton model.

arXiv target: `physics.gen-ph`; endorser needed; target early-career researchers.  
Document idea provenance via timestamped exports.

---

## Cognitive Style Notes

- Stig has aphantasia and poor cross-session memory — Claude/Grok serve as external working memory
- Learning style: conceptual descriptions first, details on request
- Workflow: draft → honest critical assessment → targeted revision → recompile
- Use `str_replace` on exact passages; do not rewrite whole files unless necessary
- Epistemic honesty (flagging open problems, honest parameter counts) is a deliberate feature of the framework