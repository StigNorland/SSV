# SSV – Saturated Superfluid Vacuum

**A five-paper theoretical physics framework deriving particles, forces, gravity, thermodynamics, and cosmology from a single postulate.**

> *The physical vacuum is a compressible inviscid superfluid near saturation density.*

All particles are stable topological defects (toroidal vortex rings). All forces are emergent pressure-gradient modes. Gravity is the acoustic Bjerknes force. Dark matter and dark energy are artefacts — eliminated, not explained.

---

## Paper Series

| Paper | Title | Status |
|-------|-------|--------|
| **I** | Particle Spectrum as Topological Defects and the α-Harmonic Mass Ladder | Draft complete |
| **II** | The Four Forces as Hydrodynamic Pressure-Gradient Modes | Draft complete |
| **III** | Thermodynamics, Entropy as Vortex-Tangle Complexity, and Irreversible Time | Draft complete |
| **IV-a** | Galactic-Scale Resonances, Flat Rotation Curves, and the Andromeda Satellite Plane | Draft complete |
| **IV-b** | Galactic Morphology as the Overtone Spectrum of the Central Black Hole Resonance | Draft complete |
| **V** | Quantum Gravity as Hydrodynamics and Cosmogony from the Permissive Void | Draft complete |

---

## Key Results

**Particle spectrum (Paper I)**
- α-harmonic mass ladder places 17 PDG particles within 1.6% at half-integer multiples of μ₀ = m_e/α ≈ 70 MeV
- Equilibrium vortex ring radius R* = ξ/α derived from a 3-term GPE energy minimum (not a fit)
- Proton stability from topological incommensurability; Higgs as vacuum amplitude mode

**Gravity (Paper II)**
- G expressed as G = α_G · ℏc · α²/(N_p² · m_e²), reproducing G_obs to 0.6%
- No graviton required; UV divergence of quantum gravity dissolves at the vortex core scale ξ
- Equivalence principle has a mechanical origin: all defects couple to gravity through acoustic cross-section

**Galactic dynamics (Papers IV-a/b)**
- Galaxy disc = resonant cavity driven by central BH at eigenfrequency f_BH = f_p · (m_p / M_BH)
- Node spacing: Δr = C / M_BH, with C ≈ 1.808 × 10⁹ kpc·M☉ (derived from {ħ, G, m_e, m_p, α})
- M31 fit: RMS ~7.5 km/s vs NFW ~27 km/s at equal parameter count; ΔAIC ≈ −41.8
- Full Hubble morphological sequence (rings → spirals → flocculent) from azimuthal modes m = 0, 1, 2, 3, …

**Cosmology (Papers IV-a/b, V)**
- Λ = 0: dark energy is identified as a SNe Ia measurement artefact (host-galaxy age bias)
- Five-stage cosmogony: Permissive Void → Kibble-Zurek vortex nucleation → particle condensation
- Arrow of time as vortex-tangle complexity growth (no separate thermodynamic postulate)

---

## Key Relations

```
f_BH = f_p × (m_p / M_BH)          # BH eigenfrequency (proton Compton anchor)
Δr   = C / M_BH                     # radial node spacing (kpc), M_BH in M☉
C    = 1.808 ± 0.012 × 10⁹ kpc·M☉  # calibration constant (five-galaxy fit)
R*   = ξ / α                        # equilibrium vortex ring radius (derived)
G    = α_G · ℏc · α² / (N_p² m_e²) # gravitational constant (structural formula)
```

---

## Repository Contents

| File | Description |
|------|-------------|
| `bh_eigenfrequency.py` | BH eigenfrequency and node spacing calculator for any galaxy |
| `calculate_velocity_profile.py` | Rotation curve model: baryonic + disc soliton + superfluid modes |
| `calibration_analysis.py` | Five-galaxy calibration of C; dimensional derivation from fundamental constants |
| `0224.dat` | NGC 224 (M31) HI rotation curve — 625 points at 0.05 kpc steps (Chemin et al. 2009) |
| `SSV-01-draft-07.tex` | Paper I (particle spectrum) |
| `SSV-02-draft-08.tex` | Paper II (forces + gravity) |
| `SSV-03-draft-06.tex` | Paper III (thermodynamics + time) |
| `SSV-04a-draft-02.tex` | Paper IV-a (galactic resonances + M31 fit) |
| `SSV-04b-draft-02.tex` | Paper IV-b (galactic morphology + Hubble sequence) |
| `SSV-05-draft-01.tex` | Paper V (quantum gravity + cosmogony) |

---

## Quick Start

```bash
python bh_eigenfrequency.py           # eigenfrequency table across BH mass range
python calculate_velocity_profile.py  # rotation curve for Milky Way parameters
python calibration_analysis.py        # verify C; derive A from fundamental constants
```

---

## Falsifiable Predictions

1. **Rotation-curve wiggles scale as M_BH⁻¹.** Sweet spot: M_BH ~ 10⁷–10⁸ M☉ (Δr = 10–180 kpc). Non-detection in Centaurus A or NGC 3198 falsifies the model.
2. **Wiggle amplitude scales as M_BH.** Predicted δv = 12.1 km/s for M31, 4.8 km/s for Cen A — testable in 2D HI residual maps.
3. **HI density rings at predicted antinode radii.** For M31: rings at ≈ 9.8, 22.6, 35.4 kpc.
4. **Hubble type anti-correlates with M_BH at fixed spin.**
5. **No dark matter particle.** All WIMP, axion, and sterile-neutrino searches: null results.
6. **Λ = 0** once SNe Ia host-galaxy age bias is fully corrected.

---

## Open Problems

- **α_G derivation**: close by computing the 3D proton breather oscillation amplitude from first principles (bridges Papers I–II)
- **W boson mass**: current SSV prediction ~9.6 GeV vs observed ~80 GeV — flagged as open, not falsification; electroweak sector mode assignment under review
- **Disc soliton eigenvalues**: rigorously derive exponents 8 and 7/2 in A = λ_e · α⁻⁸ · (m_p/m_e)^(7/2) as eigenvalues of the 2D logarithmic Schrödinger equation

---

## Relation to Prior Work

The SSV shares mathematical structure with Volovik's *Universe in a Helium Droplet* and Zloshchastiev's logarithmic nonlinear quantum gravity, and sits within the analogue gravity tradition. The harmonic mass ladder, the specific topological defect assignments, and the galactic soliton model with BH-anchored resonance are novel contributions not present in that literature.

---

## Author

**Stig Norland** — Independent Researcher, Bergen, Norway  
*All papers in preparation for arXiv submission (physics.gen-ph), 2026.*# SSV – Saturated Superfluid Vacuum

Code repository for the **Resonant Cosmos** framework.

## Overview

This project develops a cosmological model where:

- The quantum vacuum is treated as a **superfluid**.
- Newtonian gravity is unchanged for baryonic matter.
- Galaxy rotation curves are explained by **standing gravity waves** — resonance modes driven by the spinning central black hole, analogous to a laser cavity.
- The BH eigenfrequency scales as `f_BH = f_proton × (m_proton / M_BH)`.
- Node spacing scales as `Δr = C / M_BH`, with `C ≈ 1.8×10⁹ kpc·M☉`.
- Within the disc plane, time runs slower — this produces the flat rotation curve without dark matter.

## Files

| File | Description |
|------|-------------|
| `bh_eigenfrequency.py` | BH eigenfrequency and node spacing (Δr) calculator for any galaxy. Anchored to the proton Compton frequency. |
| `calculate_velocity_profile.py` | Galaxy rotation curve model combining Newtonian, disc, and superfluid-vortex components. |
| `calibration_analysis.py` | Derivation and verification of the calibration constant C across multiple galaxies. Includes dimensional analysis for the standing-wave amplitude A. |
| `0224.dat` | NGC 224 (M31 / Andromeda) high-resolution rotation curve data. 625 points at 0.05 kpc steps. |

## Key Relations

```
f_BH = f_p × (m_p / M_BH)       # BH eigenfrequency
Δr   = C / M_BH                  # node spacing (kpc), M_BH in M☉
C    = v_f / (f_p × m_p) × M☉   # calibration constant (derived)
Δr × r_s = A²                    # Schwarzschild invariant
```

where `f_p ≈ 2.27×10²³ Hz` is the proton Compton frequency and `r_s` is the BH Schwarzschild radius.

## Quick Start

```bash
python bh_eigenfrequency.py        # eigenfrequency table for a range of BH masses
python calculate_velocity_profile.py  # plot rotation curve for Milky Way parameters
python calibration_analysis.py     # verify C and search for A from first principles
```

## Status

The theory is internally consistent. One remaining step is the disc-soliton BdG (Bogoliubov–de Gennes) calculation to derive `A ≈ 1.35 ly` from `{c, G, ħ, Λ, m_e}` alone — which would close the theory with zero free parameters.
