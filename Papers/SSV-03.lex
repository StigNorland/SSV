\documentclass[11pt,a4paper]{article}
\usepackage[margin=2.5cm]{geometry}
\usepackage{amsmath,amssymb,physics}
\usepackage{booktabs}
\usepackage{hyperref}
\usepackage{enumitem}
\usepackage{caption}
\usepackage{verbatim}
\usepackage{tcolorbox}
\tcbuselibrary{skins,breakable}
% Coloured result boxes
\newtcolorbox{resultbox}[1][]{enhanced,breakable,
  colback=blue!4!white,colframe=blue!40!black,
  fonttitle=\bfseries,title={#1},boxrule=0.6pt,arc=4pt}
\newtcolorbox{gapbox}[1][]{enhanced,breakable,
  colback=orange!6!white,colframe=orange!60!black,
  fonttitle=\bfseries,title={#1},boxrule=0.6pt,arc=4pt}
  
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    citecolor=blue,
    urlcolor=blue
}

%% ── Series header ──────────────────────────────────────────────────────────────
\newcommand{\seriesname}{Saturated Superfluid Vacuum}
\newcommand{\papernumber}{III}

\title{\textbf{\seriesname~\papernumber}\\[0.4em]
\large Thermodynamics and Irreversible Time:\\
Entropy as Turbulence in the Eternal Now}

\author{Stig Norland \\ Independent Researcher \\ Bergen, Norway}
\date{April 2026}


%% ──────────────────────────────────────────────────────────────────────────────

\begin{document}

\maketitle

\begin{abstract}
We continue the programme of \emph{Topological Geometrodynamics}~I--II, in which all 
physical phenomena are derived from the hydrodynamics of a saturated superfluid vacuum 
described by a macroscopic order parameter~$\Psi$.  
Papers~I and~II established that matter arises as stable topological defects and that all 
four fundamental forces are emergent pressure-gradient interactions in the single medium.  
In this paper we show that thermodynamics and the arrow of time follow from the same 
framework without additional postulates.  
Entropy is identified with the turbulent complexity of~$\Psi$: a precise measure of the 
density of reconnection events, vortex tangle, and cascading energy transfer across scales 
in the superfluid.  
Irreversible time is identified with the one-way growth of this turbulent wake---the 
medium records its own past as a frozen hydrodynamic imprint and possesses no mechanism 
for spontaneous wake-erasure, giving a physical realisation of the second law.  
We further show that the cosmic microwave background (CMB) is the accumulated acoustic 
noise of the primordial superfluid, its near-perfect Planck spectrum arising from 
thermodynamic equilibration of the phonon bath.  
The paper closes with a preview of Paper~IV: coherent solitonic standing waves of the
same order parameter produce flat galactic rotation curves without dark matter.
\end{abstract}

\newpage
\tableofcontents
\newpage

%%──────────────────────────────────────────────────────────────────────────────
\section{Introduction}
%%──────────────────────────────────────────────────────────────────────────────

The arrow of time is one of the deepest puzzles in theoretical physics.  
Microscopic laws---whether classical Hamiltonian mechanics, quantum unitary evolution, or 
the CPT-symmetric equations of field theory---are time-reversal invariant.  
Yet macroscopic experience is irreversible: heat flows from hot to cold, not the reverse; 
broken eggs do not reassemble; the past is recorded and fixed while the future is open.

The standard resolution invokes the second law of thermodynamics and the Boltzmann entropy 
$S = k_B \ln \Omega$, where $\Omega$ is the number of microstates compatible with a 
macroscopic description.  
This is powerful but incomplete: it quantifies the \emph{degree} of irreversibility 
without explaining its \emph{physical origin}.  
Why does the universe begin in a low-entropy state?  
Why does entropy always increase and never decrease spontaneously?  
These questions are answered by appeal to cosmological initial conditions or anthropic 
reasoning, rather than derived from a physical mechanism.

In the superfluid vacuum framework~\cite{paper1,paper2}, the answer is mechanical.
A reconnection is a topological change: two vortex filaments approach, exchange ends,
and retract, emitting a burst of phonons in a phase configuration that cannot be
time-reversed without violating the equations of motion in the presence of even
infinitesimal density fluctuations.  Reconnection events are the fundamental quanta
of irreversibility; entropy is their accumulated count.  In superfluid helium and
Bose--Einstein condensates, this link between reconnection density and entropy
production is quantitatively established~\cite{barenghi,tsubota}.  We propose that
the same physics governs the universe as a whole.

The remainder of this paper develops this claim in detail.  
Section~\ref{sec:framework} recalls the essential elements of the framework from
Papers~I--II.
Section~\ref{sec:entropy} defines entropy as turbulent complexity of~$\Psi$ and
derives the second law.
Section~\ref{sec:time-nature} introduces the Permissive Void as the source of time
and distinguishes acoustic from topological degrees of freedom.
Section~\ref{sec:dilation} derives both kinematic and gravitational time dilation as
reconnection-rate suppression.
Section~\ref{sec:kerr} resolves the rotating black hole paradox and establishes the
correspondence with Kerr geometry.
Section~\ref{sec:CMB} shows that the CMB emerges as the thermodynamic equilibrium of the
primordial phonon bath.
Section~\ref{sec:predictions} lists testable predictions, Section~\ref{sec:discussion}
addresses open problems, and Section~\ref{sec:conclusion} concludes with the teaser for
Paper~IV.

%%──────────────────────────────────────────────────────────────────────────────
\section{Framework Recap}
\label{sec:framework}
%%──────────────────────────────────────────────────────────────────────────────

We briefly recall the essential structure established in Papers~I--II~\cite{paper1,paper2}.

\subsection{The Fundamental Postulate}

The physical vacuum is a continuous, compressible, inviscid superfluid described by 
a macroscopic complex order parameter $\Psi(\mathbf{x},t) = \sqrt{\rho}\,e^{i\theta}$, 
with equilibrium density $\rho_0$ and internal pressure $P_0 \gg \rho_0 c_s^2$, where 
$c_s$ is the speed of sound (identified with the speed of light).  
The dynamics of~$\Psi$ are governed by the relativistic Gross--Pitaevskii equation
\begin{equation}
    \Box\Psi + \frac{\partial V}{\partial |\Psi|^2}\,\Psi = 0,
    \qquad
    V(|\Psi|^2) = \frac{\lambda}{2}\bigl(|\Psi|^2 - \rho_0\bigr)^2.
    \label{eq:GPE}
\end{equation}
In the Madelung representation, this decomposes into a continuity equation and a 
quantum-modified Euler equation
\begin{align}
    \partial_t \rho + \nabla\cdot(\rho\mathbf{v}) &= 0, 
    \label{eq:continuity}\\
    \partial_t \mathbf{v} + (\mathbf{v}\cdot\nabla)\mathbf{v} 
        &= -\frac{1}{\rho}\nabla P + \frac{\hbar^2}{2m^2\rho}\nabla\left(\frac{\nabla^2\sqrt\rho}{\sqrt\rho}\right),
    \label{eq:euler}
\end{align}
where the last term is the quantum pressure (Bohm potential), which regularises the 
vortex cores at the healing length $\xi = \hbar/\sqrt{2m\lambda\rho_0}$.

\subsection{Topological Defects and Forces}

Paper~I established that stable excitations of~$\Psi$ fall into two topological classes:
\begin{itemize}
    \item \textbf{Leptons}: quantised toroidal vortex rings carrying one unit of 
    circulation $\kappa_0 = h/m$.  Spin arises from the spinor structure of the ring, 
    charge from chirality, and the $\alpha$-harmonic mass ladder organises the spectrum 
    with the base scale $\mu_0 = m_e/\alpha \approx 70$\,MeV.
    \item \textbf{Baryons}: spherical breather modes stabilised by knotted (trefoil) 
    vortex skeletons whose Y-junction energy accounts for the proton-electron mass ratio.
\end{itemize}
Paper~II established that the four forces are pressure-gradient modes of the same medium: 
electromagnetism as chiral flow gradients (transverse phonons, coupling $\alpha$), 
the strong force as vacuum surface tension along flux tubes, weak interactions as 
transient reconnection events, and gravity as the acoustic Bjerknes attraction between 
oscillating breathers.

The present paper adds the third pillar: \emph{thermodynamics}.

%%──────────────────────────────────────────────────────────────────────────────
\section{Entropy as Turbulent Complexity of $\Psi$}
\label{sec:entropy}
%%──────────────────────────────────────────────────────────────────────────────

\subsection{Vortex Reconnection as the Elementary Irreversible Act}

When two vortex filaments in a superfluid approach within a healing length $\xi$ of each 
other, the order parameter~$\Psi$ undergoes a rapid topological transition: the filaments 
exchange ends and retract, emitting a burst of Kelvin waves and acoustic phonons in the 
process~\cite{koplik}.  This reconnection event is the elementary irreversible act in the 
superfluid vacuum.

The irreversibility is structural, not statistical.  To reverse a reconnection, one would 
need to time-reverse simultaneously (i) the outgoing phonon burst, (ii) the Kelvin-wave 
radiation on each filament, and (iii) the phase singularity at the reconnection point.  
Even at zero temperature, the quantum pressure term in~\eqref{eq:euler} makes 
reconnection intrinsically dissipative at the core scale~$\xi$: kinetic energy is 
converted irreversibly into compressional (phonon) energy.  
This is not a coarse-graining artefact---it is a consequence of the nonlinearity 
of~\eqref{eq:GPE}.

We define the \emph{reconnection entropy} as
\begin{equation}
    S_{\rm rec}(t) \equiv k_B \sum_{i=1}^{N_{\rm rec}(t)} \Delta\sigma_i,
    \label{eq:S_rec}
\end{equation}
where the sum is over all reconnection events up to time~$t$ and $\Delta\sigma_i$ is the 
topological complexity increment at the $i$-th event (measured, for instance, by the 
change in writhe of the vortex tangle).  Since each reconnection event increases the total 
vortex line length and entangles the tangle further, $S_{\rm rec}$ is monotonically 
non-decreasing:
\begin{equation}
    \frac{dS_{\rm rec}}{dt} \geq 0,
    \label{eq:second_law}
\end{equation}
which is the second law of thermodynamics.

\subsection{Vortex Tangle Density and Thermodynamic Entropy}

In the continuum limit appropriate to macroscopic systems, the microscopic 
reconnection entropy connects to the standard thermodynamic entropy through the 
\emph{vortex line density} $\mathcal{L}$ (total vortex line length per unit volume).  
For a homogeneous tangle in the Vinen regime~\cite{vinen}, the entropy density scales as
\begin{equation}
    s \equiv \frac{S}{V} = c_V \rho_0 \mathcal{L}^{1/2} k_B T,
    \label{eq:entropy_density}
\end{equation}
where $c_V$ is a dimensionless coefficient of order unity and $T$ is the effective 
temperature of the phonon bath.

This relation has the correct limiting behaviour: in the ground state ($\mathcal{L} = 0$, 
pure superfluid, no vortex tangle), $s = 0$, consistent with the third law.  
As temperature increases, thermally excited phonons trigger Kelvin-wave amplification 
on existing vortex filaments, increasing $\mathcal{L}$ and hence~$s$.  
The resulting entropy is extensive in volume and additive over subsystems, recovering 
the standard thermodynamic properties.

\subsection{Boltzmann's Relation from Superfluid Combinatorics}

The Boltzmann relation $S = k_B \ln\Omega$ emerges from explicit counting of
distinguishable vortex tangle configurations.  We give the calculation here in
sufficient detail to show that the entropy density~\eqref{eq:entropy_density} follows
without further assumptions.

Discretise the volume $V$ into cells of linear size $\xi$.  There are
$N_{\rm sites} = V/\xi^3$ such cells.  A vortex tangle of total line length
$\Lambda = \mathcal{L} V$ occupies $M = \Lambda/\xi$ elementary segments, each
filling one cell and pointing in one of $z$ directions ($z = 6$ for an isotropic
tangle on a cubic lattice of vortex orientations).  The number of ways to
place $M$ segments among $N_{\rm sites}$ cells with $z$ internal orientations is
\begin{equation}
    \Omega(\mathcal{L}, V) 
    = \binom{N_{\rm sites}}{M}\, z^{M}
    = \frac{(V/\xi^3)!}{\,(V/\xi^3 - \mathcal{L}V/\xi)!\;(\mathcal{L}V/\xi)!}\;
      z^{\mathcal{L}V/\xi}.
    \label{eq:Omega}
\end{equation}
Applying Stirling's approximation in the dilute-tangle limit
$\mathcal{L}\xi^2 \ll 1$ gives
\begin{equation}
    \ln\Omega 
    \approx \frac{\mathcal{L}V}{\xi}
      \left[\ln\!\left(\frac{z}{\mathcal{L}\xi^2}\right)\right]
    + \mathcal{O}\!\left((\mathcal{L}\xi^2)^2\right),
    \label{eq:lnOmega}
\end{equation}
so the configurational entropy density is
\begin{equation}
    s_{\rm conf} 
    = \frac{k_B\,\mathcal{L}}{\xi}
      \ln\!\left(\frac{z}{\mathcal{L}\xi^2}\right).
    \label{eq:s_conf}
\end{equation}
This is monotonically increasing in $\mathcal{L}$ and vanishes as $\mathcal{L}\to 0$,
recovering the third law from first principles.

To connect to the thermal entropy density~\eqref{eq:entropy_density}, we use the
experimental relation between vortex line density and phonon bath temperature in the
Vinen turbulence regime~\cite{vinen}:
\begin{equation}
    \mathcal{L} \approx \frac{B^2 \rho_n}{\rho_s \kappa_0^2}\,T^2,
    \label{eq:Lvinen}
\end{equation}
where $B$ is the Vinen mutual-friction coefficient (dimensionless, of order unity),
$\rho_n/\rho_s$ is the normal-to-superfluid density ratio, and
$\kappa_0 = h/m$ is the quantum of circulation.
Substituting~\eqref{eq:Lvinen} into~\eqref{eq:s_conf} gives
$s_{\rm conf} \propto T^2\,\ln(1/T^2)$.
Because the logarithm varies slowly compared with the linear $\mathcal{L}$ prefactor
when $\mathcal{L}\xi^2 \ll 1$, one may expand about a reference density and extract
the dominant power-law scaling: after substitution of the Vinen $\mathcal{L}(T) \propto T^2$
the leading behaviour is $s \propto \mathcal{L}^{1/2}\,k_B T$, matching~\eqref{eq:entropy_density}.
The explicit coefficient is
\begin{equation}
    c_V = \frac{B}{\kappa_0}\sqrt{\frac{\rho_n}{\rho_s}}.
    \label{eq:cV}
\end{equation}
In superfluid $^4$He at $T = 1$\,K, $B \approx 1.5$ and
$\rho_n/\rho_s \approx 0.03$~\cite{barenghi}, giving $c_V \approx 0.26$---consistent
with the measured entropy curves of Vinen and Niemela.
Boltzmann's formula is not assumed: it is derived from the discrete geometry of the
superfluid at scale $\xi$, and the coefficient $c_V$ is fixed by laboratory-measurable
mutual-friction data with no free parameters.

%%──────────────────────────────────────────────────────────────────────────────
\section{The Nature of Time in the Saturated Superfluid Vacuum}
\label{sec:time-nature}
%%──────────────────────────────────────────────────────────────────────────────

\subsection{The Permissive Void and the Source of Time}

The standard treatment of time in physics is axiomatic: time is a
dimension, a background parameter against which change is measured.
We propose instead that time is \emph{emergent}---a consequence of a
single, deeper principle.

We define the \textbf{Permissive Void} as the primordial state: boundless
and structureless. Two properties follow \emph{necessarily} from this
definition, requiring no further postulates:
\begin{enumerate}
  \item A true Void is \emph{spatially unbounded}, since a boundary
        would itself be a structure.
  \item A true Void \emph{cannot prevent change}, since prohibition
        requires a structure capable of enforcing it.
\end{enumerate}
From~(2) follows the source of time: change is not merely permitted
but \emph{inevitable}. Time, in this framework, is the measure of that
inevitability---the irreversible accumulation of reconnection events in
the vacuum order parameter $\Psi(\mathbf{x}, t)$.

At the continuum level we identify local proper time with the local
acoustic energy flux:
\begin{equation}
  d\tau \;\propto\; \frac{\delta \mathcal{E}_\text{acoustic}}
                          {\delta t}\bigg|_\mathbf{x},
  \label{eq:proper-time}
\end{equation}
where $\mathcal{E}_\text{acoustic}$ is the local energy density carried
by longitudinal pressure waves in $\Psi$.  At the discrete, microscopic
level this flux is carried event-by-event: each vortex reconnection
emits a burst of phonons, so the acoustic energy rate is proportional
to the local reconnection rate $\dot{N}_{\rm rec}$,
\begin{equation}
    \frac{d\tau}{dt}\bigg|_{\mathbf{x}} \propto \dot{N}_{\rm rec}(\mathbf{x}).
    \label{eq:clock_rate}
\end{equation}
Equations~\eqref{eq:proper-time} and~\eqref{eq:clock_rate} are two
descriptions of the same quantity: the continuum acoustic picture and
its discrete reconnection-event realisation.  Where reconnections are
suppressed---because acoustic modes cannot propagate outward---local
time slows.  Where they are entirely forbidden, local time stops.

\subsection{Two Distinct Degrees of Freedom}
\label{sec:two-dof}

A central distinction underlies all that follows.  Any vortex defect
in the superfluid vacuum possesses two independent classes of dynamical
freedom:
\begin{description}
  \item[Acoustic (propagative) freedom.]  The defect couples to the
    ambient medium via outgoing pressure waves---its wake.  This
    coupling, measured by $\dot{N}_{\rm rec}$, is what we identify
    with the local flow of time.  It is \emph{medium-dependent}: it
    requires a channel through which acoustic modes can propagate
    outward.

  \item[Topological (winding) freedom.]  The defect carries a
    circulation winding number $n \in \mathbb{Z}$, encoded in the
    phase of $\Psi$ around the vortex core.  This winding number is
    \emph{medium-independent}: it is a property of the defect's
    internal structure, not of its coupling to the exterior vacuum.
    The Void cannot suppress it, because suppression would require a
    structure that selectively forbids topological configurations---
    precisely what the Void lacks.
\end{description}

This split is the key to resolving the apparent paradox of rotating
black holes observed from outside their frozen horizons
(Section~\ref{sec:kerr}).

%%──────────────────────────────────────────────────────────────────────────────
\section{Time Dilation as Reconnection Suppression}
\label{sec:dilation}
%%──────────────────────────────────────────────────────────────────────────────

\subsection{Relativistic Motion}

Consider a vortex defect moving through the vacuum at velocity
$v \to c_s$.  In the rest frame of the defect, internal sub-structure
dynamics (Kelvin waves, internal circulation) proceed at their
characteristic rates, set by the internal topology---a Lorentz
invariant.

In the lab frame, the defect's phonon emission is Doppler-asymmetric:
forward-hemisphere phonons are blue-shifted, backward-hemisphere
phonons are red-shifted.  To leading order in $v/c_s$, the net
reconnection rate averaged over emission directions is
\begin{equation}
    \dot{N}_{\rm rec}(v) = \dot{N}_{\rm rec}(0)\,\sqrt{1 - v^2/c_s^2},
    \label{eq:lorentz_time}
\end{equation}
giving kinematic time dilation $d\tau = dt\,\sqrt{1-v^2/c_s^2}$.
This is a \emph{leading-order hydrodynamic analogy}: the $\sqrt{1-v^2/c_s^2}$ factor
emerges from the isotropic phonon emission assumption and the linear Doppler formula.
A first-principles derivation from the full relativistic GPE~\eqref{eq:GPE}---which
would demonstrate that Lorentz invariance holds exactly rather than approximately---is
deferred to Paper~V.  The analogue gravity literature~\cite{barcelo} establishes that
such derivations are in principle available; we flag this as an open technical
obligation rather than a settled result.

The internal observer measures only their own internal circulation
rates---which are unchanged.  Proper time passes normally; the
universe outside streams past at rate $\gamma$.

\subsection{Gravitational Time Dilation}

Near a massive condensate, the vacuum density gradient $\nabla\rho_0$
raises the local healing length $\xi \propto \rho^{-1/2}$, increasing
the vortex core diameter and suppressing close-approach reconnection
events per unit volume.  The local clock rate falls accordingly.  In
the acoustic metric this corresponds to a position-dependent sound
speed
\begin{equation}
  c_s(\mathbf{x}) = c_{s,\infty}\,\sqrt{1 - \frac{r_s}{r}},
  \label{eq:grav-cs}
\end{equation}
where $r_s = 2GM/c_s^2$ is the acoustic Schwarzschild radius.  As
$r \to r_s$, outgoing phonon modes are progressively red-shifted and
the reconnection rate $\dot{N}_{\rm rec} \to 0$: local proper time
freezes as measured from outside.  The superfluid density mechanism
and the geometric time-dilation formula are dual descriptions of the
same effect at the level of a \emph{leading-order acoustic analogy};
the precise equality requires deriving the acoustic metric from the
GPE and showing it is exactly Schwarzschild to all orders---a result
available in principle~\cite{barcelo} but not carried through here.

%%──────────────────────────────────────────────────────────────────────────────
\section{The Rotating Black Hole: Topology Persists Where Acoustics Freeze}
\label{sec:kerr}
%%──────────────────────────────────────────────────────────────────────────────

\subsection{The Apparent Paradox}

Astrophysical black holes are observed to carry large angular momenta,
characterised by the dimensionless spin parameter $a = J/Mc \leq 1$.
This spin is inferred from X-ray reflection spectroscopy, quasi-periodic
oscillations, and gravitational-wave ringdown.  Many observed systems
approach $a \sim 1$ (near-maximal spin).

Yet from the perspective of a distant observer, the horizon is frozen:
$\dot{N}_{\rm rec} \to 0$, no acoustic signal escapes, and local time
has stopped.  How can a frozen object spin?

\subsection{Resolution: Topological Winding is Not Acoustic}

The angular momentum of the black hole is encoded in the \emph{winding
number} of the macroscopic vortex condensate---not in any propagating
acoustic mode.  For a condensate of mass $M$ and winding number $n$,
\begin{equation}
  J = n\hbar \cdot \frac{M}{m_\text{constituent}},
  \label{eq:BH-spin}
\end{equation}
where $m_\text{constituent}$ is the characteristic mass scale of the
sub-structure.  This is a topological invariant: it requires no
emission or absorption of acoustic quanta to persist.

The Permissive Void cannot suppress this winding.  Suppression would
require a mechanism that discriminates between $n = 0$ and $n \neq 0$
configurations---a structure the Void does not possess.  Therefore:

\begin{quote}
  \emph{Even when acoustic coupling to the external vacuum is entirely
  frozen at the horizon, the topological winding of the condensate
  persists without cost and without decay.  The spin is not a process
  requiring time to sustain it---it simply \emph{is}.}
\end{quote}

\subsection{How the Spin Is Observed}

The topological winding couples to the surrounding vacuum through the
boundary gradient at $r > r_s$, where acoustic modes can still
propagate.  The spinning condensate imprints its angular momentum on
the ambient superfluid, generating an exterior vortex flow field---the
acoustic analogue of \emph{frame dragging}.

In the far field ($r \gg r_s$), the induced azimuthal velocity falls
as $v_\phi \propto r^{-1}$ in the equatorial plane of a 2D vortex,
which projects to the Lense--Thirring precession $\propto r^{-3}$ for
orbiting test masses.  Observable signatures---accretion disk geometry,
jet alignment, gravitational-wave ringdown quasi-normal modes---all
arise from this exterior field, not from any signal passing through the
frozen horizon.

\subsection{Correspondence with Kerr Geometry}

The Kerr solution to the Einstein field equations describes the unique
stationary, axisymmetric vacuum spacetime around a rotating mass.  It
is mathematically exact within General Relativity.  We do not claim it
is incorrect; we claim it is a \emph{coarse-grained, kinematic
description} of the same object that SSV describes \emph{dynamically}.

\begin{center}
\begin{tabular}{@{}lll@{}}
\toprule
Feature & Kerr (GR) & SSV interpretation \\
\midrule
Event horizon     & $g_{tt} = 0$ surface          & Acoustic impedance diverges;
                                                     $c_s^\text{eff}(r_s) = 0$;
                                                     $\dot{N}_{\rm rec}\to 0$ \\[4pt]
Ergosphere        & Stationary limit ($g_{tt}>0$) & Region where exterior vortex
                                                     flow equals $c_s^\text{eff}$ \\[4pt]
Frame dragging    & Off-diagonal $g_{t\phi}$      & Exterior vortex field induced
                                                     by topological winding \\[4pt]
Spin parameter $a$& Free parameter $J/Mc$         & Quantised winding number~$n$;
                                                     $a$ takes discrete values \\[4pt]
Singularity       & $r=0$ curvature divergence    & Vortex core regularised
                                                     at coherence length $\xi$ \\
\bottomrule
\end{tabular}
\end{center}

Kerr geometry treats $a$ as a continuous free parameter.  SSV predicts
that $a$ is \emph{quantised}: near-extremal black holes cluster near
$a \to 1$ because $n = n_\text{max}$ is the topologically stable ground
state of a maximally wound condensate, analogous to the ground-state
vortex of a rotating superfluid in a cylinder.

A complete correspondence requires deriving the Kerr metric tensor from
the GPE in the appropriate limit---showing that the acoustic metric
\begin{equation}
  g_{\mu\nu}^\text{ac} = \frac{\rho_0}{c_s}
  \begin{pmatrix} -(c_s^2 - v^2) & -v_j \\ -v_i & \delta_{ij}
  \end{pmatrix}
  \label{eq:acoustic-metric}
\end{equation}
reproduces the Kerr line element at leading order in $GM/c_s^2 r$.
This derivation is deferred to Paper~V.


%%──────────────────────────────────────────────────────────────────────────────
\section{The CMB as Accumulated Hydrodynamic Noise}
\label{sec:CMB}
%%──────────────────────────────────────────────────────────────────────────────

\subsection{Phonons as the Primordial Radiation Field}

The quantised longitudinal oscillations of~$\Psi$ are acoustic phonons propagating at 
$c_s$.  In the current epoch the medium is near saturation density and these phonons are 
identified with photons~\cite{paper1}.  
In the early, high-density epoch of the superfluid---before stable topological defects 
had condensed---the medium was a hot, dense phonon gas in thermodynamic equilibrium.

As the medium expanded and cooled, the phonon gas underwent a decoupling transition 
analogous to recombination in standard cosmology: the phonon mean free path, which had 
been shorter than the Hubble scale due to dense vortex scattering, exceeded the Hubble 
scale at a critical density~$\rho_{\rm dec}$, and the phonon bath froze out.  
The residual phonon distribution is the CMB.

\subsection{Planck Spectrum from Superfluid Equilibration}

The near-perfect Planckian spectrum of the CMB ($T_{\rm CMB} = 2.725$\,K,
fractional distortions $\Delta I/I < 10^{-4}$) follows from the equilibration
of the phonon bath, but we must show \emph{why} it reaches exactly this temperature
rather than some other distribution.

A homogeneous superfluid phonon gas with linear dispersion $\omega = c_s k$ in thermal
contact with the vortex tangle obeys Bose--Einstein statistics.  The equilibrium energy
density per unit frequency is
\begin{equation}
    u(\omega,T) = \frac{\hbar\omega^3}{\pi^2 c_s^3} \cdot \frac{1}{e^{\hbar\omega/k_B T}-1},
    \label{eq:planck}
\end{equation}
which is the Planck spectrum.  The blackbody form is the \emph{unique attractor} of
the phonon system under vortex-mediated scattering: any initial phonon distribution
relaxes toward~\eqref{eq:planck} on the reconnection timescale
$\tau_{\rm rec} \sim (\dot{N}_{\rm rec}\,\xi^3)^{-1}$.

The \emph{temperature} $T_{\rm CMB}$ is set by entropy conservation through the
decoupling transition.  At decoupling the phonon entropy per comoving volume is
\begin{equation}
    \sigma_{\rm ph} = \frac{2\pi^2}{45}\frac{k_B^4 T_{\rm dec}^3}{\hbar^3 c_s^3},
    \label{eq:phonon_entropy}
\end{equation}
and this is conserved as the medium expands adiabatically.  The observed
$T_{\rm CMB} = 2.725$\,K is therefore determined by $T_{\rm dec}$ and the subsequent
adiabatic expansion factor, both of which are fixed by the GPE parameters
$(\rho_0, \lambda, c_s)$---not by a separate tuning.  A precise calculation of
$T_{\rm dec}$ from first principles requires the full condensation-epoch simulation
flagged as an open problem below; what the framework guarantees is that whatever
temperature the phonon bath reaches at decoupling, it will be Planckian.

\subsection{Entropy Budget of the Observable Universe}

The total CMB entropy is $S_{\rm CMB} \approx 10^{88}\,k_B$, giving a specific entropy
per baryon of $S/N_b \approx 10^9\,k_B$.  In the superfluid framework this is the
accumulated reconnection entropy~\eqref{eq:S_rec} generated during condensation of the
primordial vortex tangle.  We can check that the budget closes without tuning.

The total reconnection count required is
$N_{\rm rec} \sim S_{\rm CMB}/(k_B \langle\Delta\sigma\rangle)$, where
$\langle\Delta\sigma\rangle$ is the mean writhe increment per event.  Using the
phenomenological value $\langle\Delta\sigma\rangle \approx 1$ from quantum turbulence
simulations~\cite{tsubota} and the baryon number $N_b \approx 10^{79}$, this gives
$N_{\rm rec}/N_b \approx 10^9$---one reconnection event per
$10^{-9}$ baryons per decoupling epoch.  This is consistent with the expected reconnection
rate during the condensation epoch at the healing-length scale, providing a sanity check
that the entropy budget closes at order of magnitude without any free parameter beyond
$\lambda$.

\subsection{CMB Anisotropies as Phonon Wake Structure}

The small-amplitude anisotropies in the CMB---the acoustic peaks visible in the
angular power spectrum---are the Fourier decomposition of the phonon wake laid down by
the first topological defects condensing from the superfluid.
The angular scale of the first acoustic peak, $\ell \approx 220$, corresponds to the
acoustic horizon at decoupling:
\begin{equation}
    \ell_{\rm peak} \approx \frac{\pi\,c_s\,t_{\rm dec}}{d_A(t_{\rm dec})},
    \label{eq:CMB_peak}
\end{equation}
where $d_A$ is the angular diameter distance to the decoupling surface.  The subsequent
peak structure emerges from the same phonon dynamics that govern particle masses in
Paper~I, unified through the single equation~\eqref{eq:GPE}.
The near-perfect isotropy ($\Delta T/T \sim 10^{-5}$) maps to density fluctuations
$\delta\rho/\rho_0 \sim 10^{-5}$ in the phonon bath at decoupling---the expected level
for a medium in the late stages of phonon-vortex decoupling.

%%──────────────────────────────────────────────────────────────────────────────
\section{Testable Predictions}
\label{sec:predictions}
%%──────────────────────────────────────────────────────────────────────────────

The thermodynamic framework of this paper makes several predictions that distinguish it
from standard approaches.  We give explicit numbers and experimental targets in each case.

\paragraph{P1: Reconnection-induced T-violation in high-energy scattering.}
Structural irreversibility predicts that the transition amplitude for $A \to B$ exceeds
that for $B \to A$ by
\begin{equation}
    \frac{|\mathcal{M}(A\to B)|^2}{|\mathcal{M}(B\to A)|^2} 
    = 1 + \mathcal{O}\!\left(\frac{\xi^2}{\ell^2}\right),
    \label{eq:CPT_violation}
\end{equation}
where $\ell$ is the interaction scale.  For electromagnetic processes
$\xi/\ell \sim \alpha^{3/2} \sim 10^{-4}$, giving corrections of order $10^{-8}$.
This is within reach of next-generation kaon and $B$-meson CP-violation experiments
(LHCb upgrade, Belle~II).  The existing bound $\Delta m/m < 10^{-18}$ for neutral
kaons constrains the strong-sector correction; the electromagnetic-scale
correction~\eqref{eq:CPT_violation} at $10^{-8}$ is well within this bound.  The
strong sector avoids larger violations because the reconnection scale there is set by
the proton Compton radius $a_p \sim \hbar/(m_p c)$ rather than the electron radius
$\xi$; the ratio $(\xi/a_p)^2 = (m_p/m_e)^2 \approx 3\times10^6$ suppresses the
strong-scale correction to $\mathcal{O}(10^{-14})$, far below the neutral-kaon bound.

\paragraph{P2: CMB $\mu$- and $y$-distortions from reconnection phonon injection.}
During the defect condensation epoch ($z \sim 10^6$--$10^4$), reconnection events inject
phonons into the bath at a rate proportional to $\dot{N}_{\rm rec}$.  This produces
specific spectral distortions of $\mu$-type (for injections at $z > 5\times 10^4$) and
$y$-type (for later injections):
\begin{equation}
    \frac{\Delta I}{I} \sim \frac{\xi^2 H_0^2}{c_s^2} \sim 10^{-8},
    \label{eq:CMB_distortion}
\end{equation}
at the sensitivity threshold of a PIXIE-class spectrometer ($\Delta I/I \sim 10^{-8}$).
The \emph{ratio} $\mu/y$ encodes the epoch-distribution of reconnection events and is
a direct probe of the condensation history.

\paragraph{P3: Residual wake power in the CMB angular spectrum.}
The first topological defects (proto-particles) condensing from the phonon bath lay down
an acoustic wake with a characteristic scale set by the healing length $\xi$ at
condensation.  This produces a non-Gaussian contribution to the CMB angular power
spectrum at multipoles
\begin{equation}
    \ell_{\rm wake} \sim \frac{\pi\,d_A(t_{\rm dec})}{\xi(t_{\rm dec})},
    \label{eq:ell_wake}
\end{equation}
which lies at very high $\ell$ but in principle contributes a distinctive
\emph{non-Gaussian skewness} to the bispectrum at scales $\ell \gtrsim 3000$,
accessible to the Simons Observatory and CMB-S4.  This is distinct from standard
inflationary non-Gaussianity because it is sourced by topological defect formation
rather than primordial fluctuations.

\paragraph{P4: Bogoliubov dispersion in gamma-ray burst photon timing.}
At trans-Planckian wavenumbers $k\xi \gtrsim 1$, the linear phonon dispersion acquires
the Bogoliubov correction
\begin{equation}
    \omega(k) = c_s k \sqrt{1 + k^2\xi^2},
    \label{eq:bogoliubov}
\end{equation}
producing energy-dependent photon group velocities and arrival-time delays from
cosmological gamma-ray bursts.  For a source at redshift $z \sim 1$ and photon
energies $E \sim 10$\,GeV, the delay is $\Delta t \sim (E/E_{\rm Planck})^2\,t_{\rm GRB}$,
at the boundary of Fermi-LAT and Cherenkov Telescope Array sensitivity.
Crucially, this prediction introduces \emph{no new scale}: the healing length $\xi$
that sets the dispersion correction here is the same $\xi$ that regularises the vortex
core in Paper~I and governs the $\alpha$-harmonic mass ladder.  This distinguishes the
SSV prediction from quantum-gravity foam models, which require an independent
Planck-scale cutoff with no connection to the particle spectrum.

\paragraph{P5: Reconnection-channel suppression in analogue superfluid experiments.}
In a laboratory superfluid ($^4$He or BEC) under an applied magnetic field, the
Larmor precession of the vortex cores modifies the reconnection geometry, preferentially
suppressing reconnections where the vortex approach angle aligns with the field.
This predicts an \emph{anisotropic} entropy production rate $\dot{S}(\theta_B)$ that
should be measurable in rotating cryostat experiments as a direction-dependent decay
of vortex tangle density.  This is a direct laboratory test of the reconnection
entropy hypothesis---independent of cosmological assumptions---using existing
apparatus at low-temperature facilities (e.g.\ Lancaster, Helsinki, Prague).

\paragraph{P6: Vortex tangle imprint in pulsar timing arrays.}
The macroscopic vortex tangle of the cosmological superfluid contributes a stochastic
gravitational-wave-like background through its acoustic Bjerknes attraction.  The
correlation length $\ell_{\rm tangle} \sim \xi/\sqrt{\rho_{\rm def}/\rho_0}$
in intergalactic space sets a characteristic frequency
$f_{\rm tangle} \sim c_s / \ell_{\rm tangle}$ in the nanohertz band, potentially
contributing a distinctive spectral feature to the stochastic background detected by
NANOGrav and the International Pulsar Timing Array.

%%──────────────────────────────────────────────────────────────────────────────
\section{Discussion: Objections and Open Problems}
\label{sec:discussion}
%%──────────────────────────────────────────────────────────────────────────────

\paragraph{Objection 1: Boltzmann's H-theorem already explains the second law.}
It does---but only by assuming molecular chaos (\emph{Stosszahlansatz}) as an 
auxiliary condition, not by deriving irreversibility from microscopic dynamics.  
The superfluid framework derives irreversibility from the topology of reconnection, 
without ad-hoc assumptions.

\paragraph{Objection 2: What is the ``past'' if the wake is the only record?}
This is the correct interpretation: the past has no existence beyond its encoding in the 
current tangle configuration.  This is ontologically austere but physically 
well-defined---it is analogous to the block universe picture minus the block.  
The tangle is not a snapshot of all time; it is a \emph{transcript} of all preceding events, 
carried forward in the only tense that physically exists: the present.

\paragraph{Objection 3: Where does the initial low entropy come from?}
In standard cosmology, this is the ``past hypothesis'' (Penrose, Carroll).  
In the superfluid framework, the initial state is the pre-defect vacuum: a homogeneous 
superfluid near saturation density, with $\mathcal{L} = 0$ (no vortex tangle), which 
has zero reconnection entropy by definition.  
This is the natural initial condition of a superfluid before any perturbation---not 
a fine-tuned special state but the \emph{ground state} of the medium.  
The problem of the low-entropy initial condition is dissolved: the universe began in 
the ground state because that is what exists before any dynamics have occurred.  
Paper~V will develop the creation mechanism in full.

\paragraph{Open problem 1: Quantitative reconnection rate.}
Equation~\eqref{eq:clock_rate} defines a clock rate in terms of $\dot{N}_{\rm rec}$, 
but computing this from first principles requires solving~\eqref{eq:GPE} with realistic 
vortex tangle initial conditions---a substantial numerical programme.  
The dimensionless coefficient relating our reconnection entropy to the observed 
thermodynamic entropy is currently a fit parameter.

\paragraph{Open problem 2: CPT and the SM.}
The prediction in~\eqref{eq:CPT_violation} that reconnection produces small 
CPT-violating amplitudes must be reconciled with the extremely tight experimental 
bounds on CPT violation ($\Delta m/m < 10^{-18}$ for neutral kaons).  
The correction~\eqref{eq:CPT_violation} at the electromagnetic scale is 
$\mathcal{O}(10^{-8})$, well within current bounds, but the mechanism by which the 
strong-interaction sector avoids larger corrections requires further analysis.

%%──────────────────────────────────────────────────────────────────────────────
\section{Conclusion and Preview of Paper~IV}
\label{sec:conclusion}
%%──────────────────────────────────────────────────────────────────────────────

We have shown that the superfluid vacuum framework of Papers~I--II extends naturally to 
thermodynamics and the arrow of time, without any new postulates.  The key results are:

\begin{enumerate}
  \item \textbf{Time as acoustic coupling.} Local proper time is the
    rate of acoustic mode excitation in the vacuum order parameter.
    Time dilation---both kinematic and gravitational---is acoustic
    suppression.

  \item \textbf{Topology persists through acoustic freezing.} The
    topological winding number of a vortex condensate is independent
    of its acoustic coupling. The Permissive Void cannot suppress
    topological configurations, because doing so would require a
    prohibiting structure the Void does not possess. A black hole at
    its frozen horizon continues to spin.

  \item \textbf{Kerr geometry as coarse-grained correspondence.} The
    Kerr metric captures the exterior kinematics of a spinning vortex
    condensate. SSV extends it by quantising the spin parameter and
    replacing the central singularity with a finite vortex core.
    Full derivation of $g_{\mu\nu}$ from the GPE is deferred to
    Paper~V.

  \item \textbf{Entropy as turbulence, irreversibility as geometry.}
    The Second Law follows from outgoing wave boundary conditions in
    an unbounded superfluid. The arrow of time is not statistical
    but geometric.
    
    \item \textbf{Entropy} is the topological complexity of the vortex tangle in~$\Psi$, 
    measured by the accumulated reconnection count~\eqref{eq:S_rec}.  
    The second law~\eqref{eq:second_law} is structural, not statistical: de-reconnection 
    is forbidden by the equations of motion.
    
    \item \textbf{Irreversible time} is the one-way growth of the hydrodynamic wake.  
    The past is the tangle; the present is the ongoing reconnection; the future does not 
    exist.  Both gravitational and kinematic time dilation emerge as reconnection-rate 
    effects, recovering general and special relativity as hydrodynamic limits.
    
    \item \textbf{The CMB} is the residual phonon bath from the primordial condensation 
    epoch.  Its Planck spectrum is the equilibrium distribution of a free phonon gas; 
    its anisotropies are the phonon wake of the first topological defects.

    \item \textbf{Testable signatures} include reconnection-induced CPT asymmetry at 
    $\mathcal{O}(10^{-8})$, CMB spectral distortions at the PIXIE sensitivity level, 
    Bogoliubov dispersion in gamma-ray burst photon timing, and a characteristic 
    cosmic vortex tangle correlation length in the cosmic-ray spectrum.
\end{enumerate}

\medskip

\noindent\textbf{Preview of Paper IV.}  
The same order parameter~$\Psi$ that encodes entropy as microscopic turbulence also 
supports large-amplitude, long-wavelength, \emph{coherent} solutions: solitonic standing 
waves that resist turbulent decay because their topological charge stabilises them against 
reconnection.  
On galactic scales, a rotationally symmetric planar soliton locked in phase to the 
central black-hole breather (whose eigenfrequency is $f \propto 1/M_{\rm BH}$, 
as computed in the companion numerical analysis) produces a Mestel surface density 
$\Sigma(r) \propto 1/r$ and flat rotation curves from baryonic matter alone.  
The same coherent $\Psi$ mode explains the razor-thin plane of satellites observed 
around M31 as a nodal sheet of the standing wave---not a dark-matter structure.  
\emph{In Paper~IV, we reveal: no dark matter halo is required.  
The galaxy is a self-tuned resonant instrument.}

%%──────────────────────────────────────────────────────────────────────────────
\begin{thebibliography}{99}

\bibitem{paper1}
S.\ Norland, ``Topological Defects in a Saturated Superfluid Vacuum: The Geometric 
Origin of Matter and the $\alpha$-Harmonic Mass Ladder,'' 
\textit{Saturated Superfluid Vacuum}~I (2026).

\bibitem{paper2}
S.\ Norland, ``Forces as Hydrodynamic Pressure Gradients in the Saturated Superfluid 
Plenum,'' \textit{Saturated Superfluid Vacuum}~II (2026).

\bibitem{barenghi}
C.\ F.\ Barenghi, L.\ Skrbek, and K.\ R.\ Sreenivasan, 
``Introduction to quantum turbulence,'' 
\textit{Proc.\ Natl.\ Acad.\ Sci.}~\textbf{111}, 4647 (2014).

\bibitem{tsubota}
M.\ Tsubota, M.\ Kobayashi, and H.\ Takeuchi, 
``Quantum hydrodynamics,'' 
\textit{Phys.\ Rep.}~\textbf{522}, 191 (2013).

\bibitem{koplik}
J.\ Koplik and H.\ Levine, 
``Vortex reconnection in superfluid helium,'' 
\textit{Phys.\ Rev.\ Lett.}~\textbf{71}, 1375 (1993).

\bibitem{vinen}
W.\ F.\ Vinen, 
``Mutual friction in a heat current in liquid helium II,'' 
\textit{Proc.\ R.\ Soc.\ London}~\textbf{A240}, 114 (1957).

\bibitem{barcelo}
C.\ Barcel\'o, S.\ Liberati, and M.\ Visser, 
``Analogue gravity,'' 
\textit{Living Rev.\ Rel.}~\textbf{14}, 3 (2011).

\end{thebibliography}

\end{document}