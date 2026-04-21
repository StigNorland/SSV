# SSV – Saturated Superfluid Vacuum

**A ten-paper theoretical physics framework deriving particles, forces, gravity, thermodynamics, and cosmology from a single postulate.**

> *The physical vacuum is a compressible inviscid superfluid near saturation density.*

All particles are stable topological defects (toroidal vortex rings). All forces are emergent pressure-gradient modes. Gravity is the acoustic Bjerknes force. Dark matter and dark energy are artefacts — eliminated, not explained.

---

## Paper Series

| Paper | Title | Status |
|-------|-------|--------|
| **I** | Particle Spectrum as Topological Defects and the α-Harmonic Mass Ladder | Draft complete |
| **II** | The Four Forces as Hydrodynamic Pressure-Gradient Modes | Draft complete |
| **III**| Irreversible Time and Wake Entropy | In draft |    
| **IV**| Gravity as Update-Capacity Gradient | -|
| **V**| Condensate Black Holes | - |
| **VI-a**| Flat Rotation Curves | - |
| **VI-b**| Galactic Morphology as Overtone Structure | - |
| **VII-a**| Quantum Mechanics  | - |
| **VII-b**| Emergent Geometry | - |
| **VIII**| Cosmogony | - |



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

## Repository Structure

```
SSV/
├── Code/
│   ├── Paper I/
│   │   └── python/                          # 17 Python scripts for Paper I
│   │       ├── arnold_tongue_scan.py         # Arnold tongue bifurcation analysis
│   │       ├── canonical_four_mode.py        # Four-mode canonical system
│   │       ├── chiral_bridge_projection.py   # Chiral bridge geometry projection
│   │       ├── chiral_kelvin_sweep.py        # Kelvin wave sweep with chirality
│   │       ├── curved_torus_relaxation.py    # Toroidal geometry relaxation
│   │       ├── direct_bdg_projection.py      # Bogoliubov-de Gennes projection
│   │       ├── harmonic_ladder_spectrum.py   # α-harmonic mass ladder calculations
│   │       ├── kelvin_augmented_bdg.py       # Kelvin wave augmented BdG solver
│   │       ├── kelvin_branch_tracking.py     # Kelvin wave branch tracing
│   │       ├── kelvin_self_induction.py      # Self-induction of Kelvin waves
│   │       ├── muon_mode_prototype.py        # Muon mode topological defect
│   │       ├── projected_two_mode_eigen.py   # Two-mode eigenvalue projection
│   │       ├── restricted_bdg_matrix.py      # Restricted BdG matrix formulation
│   │       ├── restricted_bdg_three_mode.py  # Three-mode BdG analysis
│   │       ├── toroidal_background.py        # Toroidal background ansatz
│   │       ├── toroidal_projection_integrals.py  # Toroidal projection integrals
│   │       └── vortex_profile.py             # Vortex ring profile calculations
│   ├── Paper II/                             # (code forthcoming)│
├── Papers/
│   ├── SSV-01.lex                            # Paper I manuscript
│   ├── SSV-02.lex                            # Paper II manuscript
│   └── figures/
│       ├── electron_minimization_logse.jpg   # Electron energy minimization plot
│       ├── fig1_rotation_curve.jpg           # Rotation curve figure
│       ├── fig2_multi_galaxy.jpg             # Multi-galaxy comparison
│       ├── fig2_six_galaxies.jpg             # Six-galaxy dataset
│       ├── fig_2d_disc_model.jpg             # 2D disc model visualization
│       └── fig_galaxy_morphology.jpg         # Galaxy morphology / Hubble sequence
│
└── logs/
    └── Paper I/                              # Derivation notes for Paper I
        ├── muon-derivation-program.md
        ├── muon-helicity-bridge-derivation.md
        ├── muon-paper-ready-section.md
        ├── muon-two-mode-symbolic-reduction.md
        ├── toroidal-background-ansatz.md
        └── toroidal-projection-integrals-notes.md
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
*All papers in preparation for arXiv submission (physics.gen-ph), 2026.*
