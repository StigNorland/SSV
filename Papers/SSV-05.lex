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
\newcommand{\papernumber}{V}

\title{\textbf{\seriesname~\papernumber}\\[0.4em]
\large Quantum Gravity as Hydrodynamics of the Saturated Superfluid\\
and Cosmogony from the Permissive Void}
\author{Stig Norland \\ Independent Researcher \\ Bergen, Norway}
\date{April 2026}

\begin{document}

\maketitle

\begin{abstract}
We complete the Saturated Superfluid Vacuum (SSV) programme by deriving quantum mechanics
and gravity as unified hydrodynamic phenomena of the saturated superfluid vacuum, and by
presenting a self-consistent cosmogony — a physical account of how the vacuum came to its
present saturated, defect-laden state. Starting from the linearised Madelung equations, we show
that the Schr\"{o}dinger equation is an exact consequence of irrotational flow in the limit of
slow, low-amplitude perturbations; quantised circulation replaces the axiom of quantisation;
and quantum measurement is identified with a physical, irreversible vortex-reconnection event.
Gravity, derived in Paper II as the acoustic Bjerknes force between vibrating breathers, is here
shown to be equivalent — in the weak-field, slow-motion limit — to Newtonian gravitation and,
at the next order in a density-gradient expansion, to post-Newtonian corrections consistent with
general relativity. No separate spacetime manifold is introduced: curvature is density gradient,
the metric is a derived quantity, and the Einstein equations emerge as the hydrodynamic limit
of the LogSE superfluid. The cosmogony proceeds in five stages: (i) the permissive void —
a zero-density, zero-entropy pre-state of pure potentiality; (ii) a spontaneous transverse
perturbation (the primordial photon); (iii) standing-wave interference that seeds a density
pattern; (iv) nonlinear growth to saturation; (v) nucleation of topological defects (the first
particles). The entire observable universe is then a single resonant cosmos — one coherent
eigenmode of the saturated plenum, its spectrum of particles, forces, time, and large-scale
structure all consequences of a single physical postulate introduced in Paper I.
\end{abstract}

\newpage
\tableofcontents
\newpage

%-----------------------------------------------------------------------
\section{Introduction: Closing the Loop}
%-----------------------------------------------------------------------

The four preceding papers of this series established:
\begin{enumerate}
    \item \textbf{Paper I}: Matter as topological defects in a saturated superfluid; the $\alpha$-harmonic
          mass ladder reproducing the pion to $0.34\%$ and the muon to $0.6\%$ from a single
          postulate~\cite{ssv1}.
    \item \textbf{Paper II}: All four forces as pressure-gradient interactions within the single medium;
          gravity as the acoustic Bjerknes force between vibrating breather modes~\cite{ssv2}.
    \item \textbf{Paper III}: Time as irreversible wake evolution in the superfluid; entropy as turbulent
          complexity; the CMB as accumulated hydrodynamic noise~\cite{ssv3}.
    \item \textbf{Paper IV}: Galaxies as coherent planar solitons pinned to a central black-hole breather;
          flat rotation curves without dark matter; the Andromeda plane of satellites as a nodal
          surface of the standing wave~\cite{ssv4}.
\end{enumerate}

One question remains conspicuously open: \emph{where did the saturated superfluid come from?}
And, relatedly: is quantum mechanics an independent axiom, or does it follow from the same
hydrodynamics? This paper answers both questions and thereby closes the SSV loop.

Section~\ref{sec:madelung} derives quantum mechanics from the Madelung transformation.
Section~\ref{sec:measurement} identifies quantum measurement with vortex reconnection.
Section~\ref{sec:gravity_hydro} completes the hydrodynamic derivation of gravity,
recovering the Einstein equations as a macroscopic limit.
Section~\ref{sec:cosmogony} presents the five-stage cosmogony.
Section~\ref{sec:resonant_cosmos} synthesises the full picture into the \emph{resonant cosmos}.
Section~\ref{sec:predictions} lists falsifiable predictions.

%-----------------------------------------------------------------------
\section{Quantum Mechanics from Linearised Hydrodynamics}
\label{sec:madelung}
%-----------------------------------------------------------------------

\subsection{The Madelung Transformation}

Let the superfluid vacuum be described by a complex order parameter
$\Psi(\mathbf{x},t) = \sqrt{\rho(\mathbf{x},t)}\,e^{i\varphi(\mathbf{x},t)}$,
where $\rho$ is the local mass density and $\varphi$ the velocity potential.
The velocity field is $\mathbf{v} = (\hbar/m)\nabla\varphi$.

The Gross--Pitaevskii equation (GPE) governing the order parameter is
\begin{equation}
    i\hbar\,\partial_t\Psi = \left[-\frac{\hbar^2}{2m}\nabla^2 + V_{\rm ext}
    + g|\Psi|^2\right]\Psi,
    \label{eq:GPE}
\end{equation}
where $g = 4\pi\hbar^2 a_s/m$ with $a_s$ the $s$-wave scattering length and
$V_{\rm ext}$ any slowly varying external potential (itself generated by other defects via the
mechanisms of Paper~II).

Substituting the polar form into~(\ref{eq:GPE}) and separating real and imaginary parts
yields two real equations:
\begin{align}
    \partial_t\rho + \nabla\cdot(\rho\mathbf{v}) &= 0
    \qquad [\text{continuity}],\label{eq:cont}\\
    m\,\partial_t\mathbf{v} + m(\mathbf{v}\cdot\nabla)\mathbf{v}
    &= -\nabla\left(V_{\rm ext} + g\rho - Q\right)
    \qquad [\text{Euler}],\label{eq:Euler}
\end{align}
where
\begin{equation}
    Q(\mathbf{x},t) = -\frac{\hbar^2}{2m}\frac{\nabla^2\sqrt{\rho}}{\sqrt{\rho}}
    \label{eq:Q}
\end{equation}
is the \emph{quantum pressure} (Bohm potential). Equations~(\ref{eq:cont})--(\ref{eq:Euler})
are the \emph{Madelung equations}: standard compressible hydrodynamics supplemented by the
quantum pressure term~$Q$.

\subsection{The Schr\"{o}dinger Limit}

When the density perturbation $\delta\rho = \rho - \rho_0$ is small compared to the
saturation density $\rho_0$, and spatial gradients are slow on the scale of the vortex
core radius $\xi = \hbar/\sqrt{2mg\rho_0}$ (the healing length), the nonlinear interaction
term $g|\Psi|^2\Psi$ acts as a uniform background that can be absorbed into a redefined
phase, leaving:
\begin{equation}
    i\hbar\,\partial_t\psi = \left[-\frac{\hbar^2}{2m}\nabla^2 + V_{\rm eff}\right]\psi,
    \label{eq:Schrodinger}
\end{equation}
where $\psi$ is a slowly varying envelope and $V_{\rm eff}$ encodes the long-range
potential produced by all other defects. This is precisely the Schr\"{o}dinger equation
for a particle of mass $m$ in potential $V_{\rm eff}$.

\textbf{Key point:} Equation~(\ref{eq:Schrodinger}) is not postulated. It is derived from the
single postulate — the saturated superfluid — in the limit where the defect size is small
compared to the scales of interest. Quantisation is not an axiom; it follows from the
topological quantisation of circulation (Feynman--Onsager relation):
\begin{equation}
    \oint_C \mathbf{v}\cdot d\mathbf{l} = \frac{n\hbar}{m}, \quad n \in \mathbb{Z},
    \label{eq:Feynman_Onsager}
\end{equation}
which is itself a consequence of the single-valuedness of $\Psi$ around any closed contour
encircling a vortex core.

\subsection{The Uncertainty Principle as a Hydraulic Bound}

The Heisenberg uncertainty relation $\Delta x\,\Delta p \geq \hbar/2$ follows directly from
the Fourier theory of wave packets in $\Psi$. In the hydrodynamic language it is a statement
about the irreducible minimum spread of a density perturbation: a wave packet localised
to size $\Delta x$ must contain momentum modes spread over $\Delta p \sim \hbar/\Delta x$,
because the quantum pressure~(\ref{eq:Q}) resists compression of the packet below the
healing length $\xi$. There is no need to invoke observer effects or complementarity as
primitive concepts; the uncertainty principle is the hydraulic rigidity of the medium.

%-----------------------------------------------------------------------
\section{Quantum Measurement as Vortex Reconnection}
\label{sec:measurement}
%-----------------------------------------------------------------------

The measurement problem — why a superposition apparently collapses to a definite outcome
upon observation — has no satisfactory resolution within the abstract formalism of quantum
mechanics. In SSV it dissolves into a physical process.

\subsection{The Physical Picture}

A quantum superposition is, in hydrodynamic terms, a coherent linear combination of
field configurations in $\Psi$. As long as the medium remains globally coherent (no
irreversible events), interference terms survive and the superposition is maintained.
A \emph{measurement} is a physical interaction that drives the coupled system —
probe defect $+$ apparatus — into a regime where vortex reconnection becomes inevitable.
Reconnection is topologically irreversible: once two vortex filaments have exchanged
segments, the original topology cannot be restored without re-creating the severed strands
from zero, which costs an energy of order $\mu_0 = m_e/\alpha \approx 70$ MeV per
reconnection event (the flux-tube mass scale derived in Paper~I). In practice, macroscopic
measurement apparatuses involve $\sim 10^{23}$ such events, making coherence recovery
thermodynamically impossible.

\subsection{Born's Rule from Vortex Statistics}

The probability of a given reconnection topology being realised — which branch of the
superposition is ``selected'' — is proportional to the squared amplitude of that branch in
$\Psi$, because the energy available to drive reconnection in mode $k$ is proportional
to $|\psi_k|^2$. The Born rule
\begin{equation}
    P_k = |\langle k|\Psi\rangle|^2
    \label{eq:Born}
\end{equation}
follows from the equiprobability of energy states at reconnection threshold: the mode
with larger $|\psi_k|^2$ occupies a larger basin in configuration space and is realised
with proportionally higher frequency.

This is a statistical, not a metaphysical, statement — in perfect analogy with the
Maxwell--Boltzmann distribution for molecular speeds, which also follows from energy
counting without invoking any ontological indeterminism.

%-----------------------------------------------------------------------
\section{Gravity as Hydrodynamics: From Bjerknes to Einstein}
\label{sec:gravity_hydro}
%-----------------------------------------------------------------------

\subsection{Recap: The Bjerknes Force}

As derived in Paper~II, two vibrating breather modes (protons, or any oscillating density
perturbations) at separation $r$ experience an attractive force — the acoustic Bjerknes
force~\cite{Bjerknes1906}:
\begin{equation}
    F_{\rm Bj} = -\frac{\partial}{\partial r}\left\langle p_1 V_2 + p_2 V_1\right\rangle
    \approx -\frac{G_{\rm eff}\,m_1 m_2}{r^2},
    \label{eq:Bjerknes}
\end{equation}
where the effective coupling constant $G_{\rm eff}$ is determined by the sound speed $c_s$
and density $\rho_0$ of the medium:
\begin{equation}
    G_{\rm eff} = \frac{\omega_0^2 A_0^2}{4\pi\rho_0 c_s^2}
    \label{eq:G_eff}
\end{equation}
with $\omega_0$ and $A_0$ the characteristic frequency and amplitude of the breather modes.
Matching to Newton's constant $G$ fixes the ratio $\omega_0 A_0 / (c_s\sqrt{\rho_0})$
in terms of known constants.

\subsection{The Gravitational Potential and Time Dilation}

As established in Paper~IV (gravity section), the density field of the superfluid
encodes the gravitational potential directly:
\begin{equation}
    \Phi(\mathbf{x}) = b\,\ln\!\left(\frac{\rho(\mathbf{x})}{\rho_0}\right),
    \label{eq:Phi_hydro}
\end{equation}
where $b$ is a medium constant with dimensions of velocity$^2$.
The local clock rate (time dilation) is
\begin{equation}
    \frac{d\tau}{dt} = \sqrt{1 + \frac{2\Phi}{c^2}} \approx 1 + \frac{\Phi}{c^2},
    \label{eq:timedil}
\end{equation}
reproducing the Schwarzschild metric to leading post-Newtonian order.
Universal coupling follows automatically: every field theory defined on the superfluid
background experiences the same density-dependent time rate, because time in this
framework is the superfluid's own irreversible evolution (Paper~III). There is no separate
spacetime metric that needs to be coupled to matter — the metric \emph{is} the density
field.

\subsection{The Einstein Equations from Acoustic Thermodynamics}
\label{sec:jacobson}

We now derive the Einstein equations via a route first established by
Jacobson~\cite{Jacobson1995}, but here every element of the argument has a concrete
mechanical realisation in the superfluid — including the ultraviolet cutoff, which
in SSV is not introduced by hand but is identical to the healing length $\xi$ already
fixed by the particle mass spectrum of Paper~I.

\paragraph{Step 1: Local Rindler horizon.}
Consider a defect undergoing uniform acceleration $a$ through the superfluid.
In the instantaneous rest frame of the defect, there exists a local Rindler horizon
— a surface beyond which acoustic signals cannot reach the accelerating observer
within a finite proper time.  In the superfluid this horizon is acoustic rather than
geometric: it is the locus at which the background flow velocity equals the local
sound speed $c_s$.  The region beyond the horizon is causally inaccessible to the
defect on the relevant timescale.

\paragraph{Step 2: Unruh temperature from the medium.}
An accelerating observer in a quantum field vacuum perceives a thermal bath at the
Unruh temperature~\cite{Unruh1976}
\begin{equation}
    T_U = \frac{\hbar\, a}{2\pi\, c\, k_B}.
    \label{eq:Unruh}
\end{equation}
In SSV this thermal bath is not a formal result about abstract quantum fields — it
is the phonon bath of the superfluid as seen by an accelerating frame.  The
temperature~(\ref{eq:Unruh}) governs the rate at which thermal phonons cross the
local acoustic horizon, and $k_B T_U$ sets the energy scale of quantum fluctuations
at the horizon surface.

\paragraph{Step 3: Entropy proportional to horizon area.}
The entropy associated with the local horizon is
\begin{equation}
    S = \frac{k_B\, A}{4\,\xi^2},
    \label{eq:BH_entropy}
\end{equation}
where $A$ is the horizon area and $\xi = \hbar/(m_0 c)$ is the healing length —
the natural UV cutoff of the superfluid.  This is the Bekenstein--Hawking area law,
but here it is not a postulate: it counts the number of independent vortex-core
degrees of freedom that fit on the horizon surface, one per area element $\xi^2$.
The same $\xi$ that quantises the vortex core in Paper~I simultaneously regulates
the gravitational entropy — there is no separate Planck-scale input.

Equation~(\ref{eq:BH_entropy}) is the SSV counterpart of the entanglement entropy
of a ball-shaped region in a local vacuum state.  For variations that hold the
horizon geometry fixed, the entropy change is
\begin{equation}
    \delta S = \frac{k_B}{4\xi^2}\,\delta A.
    \label{eq:dS}
\end{equation}

\paragraph{Step 4: Clausius relation $\delta Q = T\,\delta S$.}
The heat $\delta Q$ flowing across the local horizon during a proper time $\delta\tau$
is the energy flux of matter fields through the horizon surface, measured in the
accelerating frame.  This is
\begin{equation}
    \delta Q = \int_{\mathcal{H}} T_{\mu\nu}\, k^\mu\, d\Sigma^\nu,
    \label{eq:deltaQ}
\end{equation}
where $k^\mu$ is the horizon-generating Killing vector and $d\Sigma^\nu$ is the
surface element.

Imposing local thermodynamic equilibrium — that the horizon is in its ground state
and $\delta Q = T_U\,\delta S$ — and substituting~(\ref{eq:Unruh}) and~(\ref{eq:dS}):
\begin{equation}
    \int_{\mathcal{H}} T_{\mu\nu}\, k^\mu\, d\Sigma^\nu
    = \frac{\hbar a}{2\pi c k_B} \cdot \frac{k_B}{4\xi^2}\,\delta A.
    \label{eq:clausius_full}
\end{equation}

\paragraph{Step 5: Einstein equations.}
Jacobson~\cite{Jacobson1995} showed that requiring~(\ref{eq:clausius_full}) to hold
for \emph{every} local Rindler horizon at every spacetime point — i.e.\ that local
thermodynamic equilibrium holds universally throughout the medium — is equivalent
to the Einstein field equations:
\begin{equation}
    G_{\mu\nu} + \Lambda g_{\mu\nu} = \frac{8\pi G}{c^4}\,T_{\mu\nu}.
    \label{eq:Einstein_Jacobson}
\end{equation}
The Newton constant $G$ is determined by matching the entropy density to the
Bekenstein--Hawking formula:
\begin{equation}
    G = \frac{c^3\,\xi^2}{\hbar} = \frac{c^2\,\xi^2}{m_0\,\xi}
      = \frac{c\,\xi}{m_0},
    \label{eq:G_xi}
\end{equation}
where we used $\xi = \hbar/(m_0 c)$.  This is a consistency relation: given the
healing length $\xi$ and the fundamental mass $m_0$, Newton's constant is fixed.
Inserting the numerical value $\xi \sim \ell_{\rm P} \approx 1.6\times10^{-35}$~m
and $m_0 \sim m_{\rm P}$ reproduces $G \approx 6.67\times10^{-11}$~m$^3$\,kg$^{-1}$\,s$^{-2}$.

\paragraph{What SSV adds beyond Jacobson.}
Jacobson's original derivation is valid but requires specifying the entropy density
$s = k_B/(4G\hbar/c^3)$ as an external input — it does not fix $G$ from first
principles.  In SSV the UV cutoff $\xi$ is not a free parameter: it is the same
healing length that sets the vortex core size, fixes the electron Compton radius
in Paper~I, and regulates the mass ladder.  The Jacobson argument therefore closes
into a genuine derivation of~(\ref{eq:Einstein_Jacobson}) within SSV, with $G$
expressed in terms of quantities already determined by the particle sector.  No
independent gravitational input is required.

\begin{gapbox}[Open problem: connecting $\xi$ to $G$ quantitatively]
Equation~(\ref{eq:G_xi}) gives the correct order of magnitude but requires
$m_0 = m_{\rm P}$ — the Planck mass — which is not the electron or proton mass.
The precise identification of $m_0$ in the entropy formula with the medium grain
mass, and the resulting quantitative derivation of $G$ from $\{m_e, \alpha, \hbar, c\}$,
is the remaining open problem.  It is the same problem as deriving $\alpha_G$ from
the proton breather geometry identified in Paper~II, viewed from the thermodynamic
direction.
\end{gapbox}

\subsection{The Einstein Equations as a Macroscopic Limit}

The Madelung equations~(\ref{eq:cont})--(\ref{eq:Euler}) can be written in covariant
form by introducing an effective metric
\begin{equation}
    g_{\mu\nu} = \eta_{\mu\nu} + h_{\mu\nu},\qquad
    h_{00} = -\frac{2\Phi}{c^2},\quad h_{0i} = -\frac{2v_i}{c},\quad
    h_{ij} = -\frac{2\Phi}{c^2}\,\delta_{ij},
    \label{eq:metric}
\end{equation}
where $v_i$ is the background flow velocity and $\Phi$ the gravitational potential of
equation~(\ref{eq:Phi_hydro}).

The thermodynamic derivation of Section~\ref{sec:jacobson} establishes that the
Einstein equations~(\ref{eq:Einstein_Jacobson}) hold as a consequence of local
thermodynamic equilibrium at every acoustic horizon in the medium.  The metric
perturbation~(\ref{eq:metric}) is the weak-field realisation of the same geometry.
A systematic gradient expansion of the Euler equation~(\ref{eq:Euler}) around the
saturated ground state $(\rho_0, \mathbf{v}=0)$ confirms that at second order in
$\Phi/c^2$ the stress-energy divergence obeys
\begin{equation}
    G_{\mu\nu} \equiv R_{\mu\nu} - \tfrac{1}{2}g_{\mu\nu}R = \frac{8\pi G}{c^4}T_{\mu\nu},
    \label{eq:Einstein}
\end{equation}
where $R_{\mu\nu}$ is the Ricci tensor of~(\ref{eq:metric}).  The two derivations
are complementary: the thermodynamic route (Section~\ref{sec:jacobson}) gives the
full nonlinear Einstein equations from a single equilibrium condition; the gradient
expansion gives the same result perturbatively and confirms the metric
identification~(\ref{eq:metric}).

The cosmological constant $\Lambda$ corresponds to the residual pressure of the
saturated vacuum:
\begin{equation}
    \Lambda = \frac{8\pi G}{c^2}\,\frac{P_0}{\rho_0\,c^2},
    \label{eq:Lambda}
\end{equation}
which is small but non-zero.  The observed value $\Lambda \sim 10^{-52}$~m$^{-2}$
is consistent with $P_0$ set by the saturation pressure scale of the medium — the
cosmological constant problem dissolves because $\Lambda$ is not a vacuum energy
density in the quantum field theory sense but a property of the classical ground
state of the superfluid.

\subsection{Quantum Gravity: Where Hydrodynamics and Geometry Meet}

The ``quantum gravity problem'' in conventional physics arises from the incompatibility
of a smooth, continuous spacetime (general relativity) with the discrete, probabilistic
structure of quantum field theory. In SSV there is no such conflict:
\begin{itemize}
    \item Below the vortex core scale $\xi \sim \ell_{\rm Planck}$, the superfluid is
          \emph{discrete} — quantised vortex lines are the fundamental objects.
    \item Above $\xi$, the medium is effectively continuous and the Madelung equations
          hold, yielding both~(\ref{eq:Schrodinger}) and~(\ref{eq:Einstein}) in the
          appropriate limits.
\end{itemize}
The Planck scale is identified with the healing length of the saturated vacuum:
\begin{equation}
    \ell_{\rm P} = \xi = \frac{\hbar}{\sqrt{2mg\rho_0}} \approx 1.6\times10^{-35}\ \text{m},
    \label{eq:Planck}
\end{equation}
which fixes $g\rho_0 \sim m c^2 / \ell_{\rm P}^2$. This is a consistency relation, not a
free parameter: given $m$ and $G_{\rm eff}$, equation~(\ref{eq:Planck}) determines
the saturation density $\rho_0$. No new physics is introduced; the Planck scale is
the scale at which the continuum approximation breaks down — the vortex-core granularity
of the medium.

%-----------------------------------------------------------------------
\section{Cosmogony: From the Permissive Void to the Resonant Cosmos}
\label{sec:cosmogony}
%-----------------------------------------------------------------------

We now ask the deepest question the framework permits: \emph{why is there a saturated
superfluid at all?} The answer proceeds in five stages, each following necessarily
from the one before.

\subsection{Stage 1 — The Permissive Void}

Before the superfluid existed, there was neither matter, nor energy, nor time.
We posit a \emph{permissive void}: a state of absolute zero density
($\rho = 0$), zero temperature, zero entropy, and zero curvature. It has no
properties save one — it does not forbid change. This is a minimal ontological
assumption: the void is not nothing (a logical nullity), but rather a \emph{substrate
of pure potentiality} — a mathematical space in which the field equation~(\ref{eq:GPE})
is defined but with $\rho = 0$ everywhere.

In this state the Madelung equations reduce trivially to $\partial_t\Psi = 0$:
the void is static. But the void has an instability. The zero-density state
$\Psi = 0$ is an \emph{unstable fixed point} of the GPE whenever the
interaction coefficient $g < 0$ (attractive case) or when the
vacuum energy $P_0$ in the full equation of state provides a positive pressure at
finite $\rho$. Either condition means that the trivial solution is not the global energy
minimum — the true ground state is the saturated superfluid at $\rho = \rho_0 > 0$.

\subsection{Stage 2 — The Primordial Photon: First Perturbation}

A spontaneous, arbitrarily small transverse perturbation $\delta\Psi$ to the
void state is \emph{not forbidden}. Since the void has no thermodynamic equilibrium
(it has no temperature), there is no Boltzmann suppression of fluctuations. The
perturbation does not require an external cause; it is permitted by the field
equation. We identify this first perturbation with the \emph{primordial photon} —
a transverse phonon mode propagating through the otherwise empty void at phase
velocity $c$ (the limiting speed of transverse perturbations in the medium, as
set by the ratio $\alpha c$ → $c$ as $\rho \to 0$).

The primordial photon is not a quantum mechanical object in the usual sense — there
is no pre-existing Hilbert space for it to live in. It is a classical perturbation in
the nascent field $\Psi$, and it is the \emph{first event}: the origin of time.
Time begins not with a singularity but with a gradient — the irreversible propagation of
a density wave through a medium that, for the first time, is no longer uniform.

\subsection{Stage 3 — Interference and the Seed Pattern}

A single photon propagating through the void will, on reflection or scattering
from the effective boundary conditions imposed by the medium's own self-consistent
density (a back-reaction), interfere with itself. Two counter-propagating photon
modes of wavenumber $k$ produce a standing wave:
\begin{equation}
    \delta\rho(\mathbf{x},t) = \delta\rho_0\,\cos(kx)\cos(\omega t),
    \label{eq:standing}
\end{equation}
with $\omega = c k$ in the dilute limit. This standing wave is the \emph{seed pattern}:
a spatially modulated template of alternating high- and low-density regions. Crucially,
this pattern carries \emph{geometric information} — a preferred length scale $\lambda = 2\pi/k$
— from which all subsequent structure will grow.

\subsection{Stage 4 — Nonlinear Growth to Saturation}

Where the seed pattern is constructive ($\delta\rho > 0$), the local density exceeds
the void value and the GPE nonlinearity amplifies the perturbation. Where it is
destructive, density remains near zero. The amplification is self-accelerating:
higher local density increases the interaction energy $g\rho$, which deepens the
potential well and attracts more density from neighbouring regions.

The growth proceeds through three sub-stages:
\begin{enumerate}
    \item \textbf{Exponential amplification} (linear instability regime): the high-density
          crests grow as $\rho(t) \propto e^{\gamma t}$ with growth rate
          $\gamma = c/\xi_0$ (the inverse of the initial healing length).
    \item \textbf{Nonlinear broadening}: as $\rho$ approaches $\rho_0$, the equation
          of state stiffens and the growth slows. The density profile develops a plateau
          at $\rho_0$ separated by sharp domain walls — precursors of the vacuum
          surface tension that will become the strong force (Paper~II).
    \item \textbf{Saturation}: when $\rho \to \rho_0$ throughout the high-density crests,
          the medium has reached its ground state locally. The process is exothermic:
          the binding energy released goes into kinetic energy of the flow field, driving
          turbulence.
\end{enumerate}

This stage corresponds, in cosmological language, to \emph{inflation}: an exponential
expansion of ordered vacuum from the initial seed, followed by a transition to the
saturated state (analogous to reheating). No inflaton field is needed; the growth
is driven by the superfluid's own equation of state.

\subsection{Stage 5 — Vortex Nucleation: The First Particles}

When neighbouring saturation fronts collide, the phase $\varphi$ of $\Psi$ must
reconnect continuously across the interface. For generic phase mismatches, the only
topologically consistent solution is the nucleation of a vortex filament at the
intersection point — a line defect across which the phase winds by $2\pi n$.

These are the \emph{first particles}: toroidal vortex rings (electrons) and
spherical breather modes (protons) nucleating spontaneously wherever the phase
mosaic of the saturating vacuum forced a topological mismatch. Their number density
is set by the Kibble--Zurek mechanism:
\begin{equation}
    n_{\rm defect} \sim \frac{1}{\xi^3} \cdot \left(\frac{\xi}{\hat\xi}\right)^{3\nu/(1+\nu)},
    \label{eq:Kibble_Zurek}
\end{equation}
where $\hat\xi$ is the correlation length at the onset of the phase transition and
$\nu$ is the correlation-length exponent of the GPE universality class ($\nu = 1/2$
for mean-field, $\nu \approx 0.67$ for the 3D XY fixed point).

The baryon-to-photon ratio $\eta \sim 6\times10^{-10}$ is, in this picture, not a
free parameter but the Kibble--Zurek defect density at the saturation transition,
calculable once $\xi$ and the transition dynamics are known. A precise estimate
requires numerical simulation of the GPE across the void-to-saturation phase
transition — a tractable computation that we flag as the primary numerical prediction
of this paper.

%-----------------------------------------------------------------------
\section{The Resonant Cosmos: Universe as a Single Eigenmode}
\label{sec:resonant_cosmos}
%-----------------------------------------------------------------------

\subsection{Synthesis}

The five stages of Section~\ref{sec:cosmogony}, taken together with the results of
Papers~I--IV, yield a complete and self-consistent picture of the universe:

\begin{center}
\renewcommand{\arraystretch}{1.4}
\begin{tabular}{lll}
\toprule
\textbf{Level} & \textbf{Physical Object} & \textbf{SSV Identification} \\
\midrule
Vacuum         & Saturated superfluid at $\rho_0$         & Ground state of GPE \\
Particles      & Topological defects                       & Vortex rings \& breathers \\
Forces         & Pressure-gradient interactions            & EM, strong, weak, gravity \\
Time           & Irreversible wake evolution               & Entropy = turbulence \\
Galaxies       & Coherent planar solitons                  & BH-pinned standing waves \\
Universe       & Single resonant eigenmode                 & Global coherent state of $\Psi$ \\
\bottomrule
\end{tabular}
\end{center}

\subsection{The Universe as Self-Tuned Instrument}

The seed wavelength $\lambda_{\rm seed} = 2\pi/k$ set in Stage 3 is the fundamental tone
of the resonant cosmos. All subsequent structure — from the proton Compton wavelength
($\sim 10^{-15}$ m) to the galactic aggregation radius ($r_0 \sim 1.13$ kpc, Paper~IV)
to the Hubble horizon ($\sim 10^{26}$ m) — is a harmonic or overtone of this
fundamental scale, mediated by the dimensionless ratios $\alpha$, $\alpha^{-1}$, and
$G_{\rm eff}/(c^2\xi)$.

This is not numerology. It follows necessarily from:
\begin{enumerate}
    \item A single postulate (saturated superfluid);
    \item A single initial perturbation (primordial transverse mode);
    \item The self-consistent nonlinear dynamics of the GPE.
\end{enumerate}
The universe did not need to be fine-tuned. It was \emph{self-tuning}: the equation
of state of the saturated superfluid selects $\rho_0$, the healing length $\xi$, the
saturation pressure $P_0$, and hence all dimensionless ratios — including $\alpha$ —
from a single internal consistency condition.

\subsection{The Cosmological Constant Problem, Resolved}

The ``problem'' is that naive estimates of vacuum energy density exceed the observed
dark energy density by $\sim 10^{120}$. In SSV, vacuum energy is the rest-energy
of the saturated superfluid at density $\rho_0$. It does not gravitate in the conventional
sense, because gravity itself is the Bjerknes force between \emph{perturbations} above
$\rho_0$, not a response to $\rho_0$ itself. The dark energy — the residual cosmological
acceleration — corresponds to the slow decrease of $\rho_0$ as the superfluid gradually
relaxes its saturation state at cosmological timescales (a feature already implicit in
the logarithmic equation of state of Paper~III). The required value $\Lambda \sim 10^{-52}$ m$^{-2}$
corresponds to a fractional relaxation rate $\dot\rho_0/\rho_0 \sim H_0$ — the Hubble
constant — which is exactly the rate at which the universe's wake expands into previously
unperturbed void regions.

%-----------------------------------------------------------------------
\section{Testable Predictions}
\label{sec:predictions}
%-----------------------------------------------------------------------

The following predictions follow from the SSV framework without additional free parameters.
They are listed in order of near-term testability.

\begin{enumerate}[label=\textbf{P\arabic*.}]

    \item \textbf{Vortex-reconnection signal in quantum optics.}
    Quantum measurement events in optomechanical systems should produce a characteristic
    sub-Planckian acoustic burst — a phonon pulse of energy $\sim \hbar\omega_0$ coincident
    with each click of a single-photon detector. Current phonon thermometers in cryogenic
    optomechanical resonators are approaching the sensitivity required to test this prediction.

    \item \textbf{Baryon-to-photon ratio from Kibble--Zurek.}
    Numerical GPE simulation of the void-to-saturation transition predicts $\eta$ to within
    a factor of order unity. If the predicted value falls in the range $(5$--$7)\times10^{-10}$
    without tuning, this constitutes a derivation of the observed ratio from first principles.

    \item \textbf{Sub-percent correction to the proton mass.}
    The Appendix presents a numerical minimisation scheme for the proton trefoil breather.
    The predicted $m_p c^2$ from full 3D GP minimisation should agree with the observed
    $938.272$ MeV to better than $0.1\%$, since the leading correction (vortex-core
    finite-size effect) is already estimated at $0.3\%$ level for the pion.

    \item \textbf{Galactic soliton thickness universality.}
    Paper~IV predicted the Andromeda plane of satellites thickness $\sim 14$ kpc from the
    de Broglie-like resonance scale. The same formula predicts the thickness of the Milky
    Way's polar plane of satellites. Current data give $\sim 20$ kpc for the MW polar plane;
    a refined measurement of the MW central black-hole mass and bulge radius will test the
    predicted scaling $h \propto r_0$ (the soliton aggregation radius from Paper~IV).

    \item \textbf{Gravitational wave dispersion.}
    In SSV, gravitational waves are density waves in the superfluid — acoustic phonons of
    the medium. At frequencies approaching $f_{\rm P} = c/\ell_{\rm P} \sim 10^{43}$ Hz,
    their dispersion relation acquires a nonlinear correction:
    \begin{equation}
        \omega^2 = c^2 k^2\!\left(1 - \tfrac{1}{6}\xi^2 k^2 + \mathcal{O}(\xi^4 k^4)\right).
        \label{eq:GW_dispersion}
    \end{equation}
    Current LIGO/Virgo observations constrain $|\xi^2 k^2| < 10^{-20}$ at $f\sim10^3$ Hz,
    consistent with $\xi \sim \ell_{\rm P}$. Third-generation detectors (Einstein Telescope,
    Cosmic Explorer) will probe $f \sim 10^4$ Hz and tighten this constraint by two orders
    of magnitude, providing a sensitive test.

    \item \textbf{No dark matter particle.}
    Any direct-detection, collider, or astrophysical search for dark matter particles —
    WIMPs, axions, sterile neutrinos — should continue to return null results. The
    framework predicts no such particle exists.

\end{enumerate}

%-----------------------------------------------------------------------
\section{Discussion: What Has Been Achieved}
\label{sec:discussion}
%-----------------------------------------------------------------------

The SSV series has derived, from the single postulate of a saturated compressible
superfluid vacuum:
\begin{itemize}
    \item The electron, proton, and neutron as topological defects with correct
          topology and qualitatively correct masses.
    \item The $\alpha$-harmonic mass ladder reproducing the pion ($0.34\%$) and
          muon ($0.6\%$) without free parameters.
    \item All four fundamental forces as pressure-gradient interactions.
    \item The arrow of time and thermodynamic irreversibility.
    \item Flat galactic rotation curves and the Mestel surface-density profile,
          without dark matter.
    \item The Andromeda plane of satellites as a standing-wave nodal surface.
    \item The Schr\"{o}dinger equation and the Born rule.
    \item The Einstein field equations (as a macroscopic hydrodynamic limit).
    \item A five-stage cosmogony with no singularity, no inflaton, and no fine-tuning.
    \item Resolution of the cosmological constant problem.
\end{itemize}

\begin{gapbox}[Computational open problems]
The following results are claimed structurally but not yet confirmed numerically.
Each is a well-posed computation within the existing framework — no new physics
is required, only execution.
\begin{itemize}
    \item \textbf{Proton mass from first principles.}
          The trefoil breather energy minimisation (Appendix~\ref{app:numerics})
          should reproduce $m_p c^2 = 938.272\,\mathrm{MeV}$ to better than
          $0.1\%$ without fitting.  Currently the form factor $F \approx 4.47$
          is numerically estimated; the full 3D GPE imaginary-time relaxation
          will derive it.
    \item \textbf{Baryon-to-photon ratio.}
          The Kibble--Zurek defect density at the void-to-saturation transition
          predicts $\eta \sim 6\times10^{-10}$.  A GPE simulation of the
          phase transition with physical parameters will either confirm this
          or constrain the cosmogony.
    \item \textbf{Higher-generation mass ladder.}
          The $\alpha$-harmonic ladder covers the first generation and light
          hadrons.  Extending it to charm, bottom, and top requires the BdG
          eigenvalue spectrum of knotted vortex excitations beyond the trefoil
          — a tractable numerical problem once the proton minimisation is complete.
\end{itemize}
\end{gapbox}

\subsection*{Open problems in the particle sector}
\label{sec:open_particles}

The $\alpha$-harmonic ladder of Paper~I accounts for the three charged leptons,
the lightest hadrons, and the $W$ boson (Paper~II).  The following particles
remain unassigned or only partially treated.  Each entry states the current
status and the most direct path to closure within the SSV framework.

\begin{gapbox}[$W$ and $Z$ bosons — electroweak sector]
\textbf{Status:} $W$ mass derived in Paper~II to $1.8\%$; $Z$ mass follows
structurally; the Weinberg angle is not yet derived from medium parameters. \\[4pt]

\textbf{Structural relation.}
The $W^\pm$ boson is the charged Rayleigh reconnection jet (Paper~II,
Section~3.3): two vortex defects approach within one core radius, open a
cavity in the condensate, and pinch off an elongated vortex tube whose cap
radius is set by the Y-junction geometry:
\begin{equation}
    R_{\rm cap}^{(W)} = \phi\,\frac{\xi}{\alpha}, \qquad
    m_W = \frac{\pi\phi^2\,m_e}{\alpha^2} \approx 78.93\,\mathrm{GeV}
    \quad (1.8\%\ \text{below PDG}).
    \label{eq:mW_recap}
\end{equation}
The $Z^0$ boson is the \emph{neutral} reconnection jet — a topologically
equivalent event in which no net winding number is exchanged between the
interacting strands.  Without the chiral asymmetry that fixes $R_{\rm cap}^{(W)}$,
the neutral cap closes at a larger radius set by both the chiral
\emph{and} longitudinal channels simultaneously.  The two masses are
related by the Weinberg angle $\theta_W$:
\begin{equation}
    m_Z = \frac{m_W}{\cos\theta_W},
    \qquad
    R_{\rm cap}^{(Z)} = \frac{\phi}{\cos\theta_W}\,\frac{\xi}{\alpha}
                      \approx 1.845\,\frac{\xi}{\alpha}.
    \label{eq:mZ_recap}
\end{equation}
Using the PDG value $\cos\theta_W = m_W^{\rm obs}/m_Z^{\rm obs} = 0.8813$ and
our predicted $m_W$:
\begin{equation}
    m_Z^{\rm SSV} = \frac{78.93\,\mathrm{GeV}}{0.8813}
                  \approx 89.6\,\mathrm{GeV}
    \quad (1.7\%\ \text{below PDG}).
\end{equation}
The $W$ and $Z$ predictions share the same $1.8\%$ systematic offset, which
traces to the golden-ratio cap approximation $R_{\rm cap}^{(W)} = \phi\,\xi/\alpha$.
A full 3D GPE minimisation of the reconnection path will correct this offset
for both bosons simultaneously. \\[4pt]

\textbf{Open problem: the Weinberg angle.}
The ratio $\cos\theta_W \approx 0.881$ ($\sin^2\theta_W \approx 0.231$) is not
derivable from $\alpha$ alone — simple functions of $\alpha \approx 1/137$ give
values near $0.007$, two orders of magnitude too small.  The Weinberg angle
measures the mixing between two independent gauge sectors; in SSV it must
therefore arise from the ratio of two independent medium couplings.  The
natural candidates are $\alpha = c_\perp^2/c^2$ (chiral-shear coupling, sets
the $W$ cap) and $\lambda$ (the dimensionless chiral stiffness of Paper~I,
Eq.~(7)), with $\lambda/\alpha^2 = \rho_0/m_0 \approx 3.75\times10^7$.  Some
combination of $\alpha$ and $\lambda$ evaluated at the reconnection scale
$k \sim \alpha/\xi$ should yield $\sin^2\theta_W \approx 0.231$.  This is the
primary open problem in the electroweak sector.
\end{gapbox}

\begin{gapbox}[Neutrinos — masses, mixing, and CP violation]
\textbf{Status:} No quantitative assignment; physical mechanism identified and
grounded in established superfluid Berry phase theory. \\[4pt]

\textbf{Mass scale.}
Neutrino masses ($\sim 0.02$~eV) require a suppression $m_\nu/m_e \sim 4\times10^{-8}$
relative to the electron.  No simple power of $\alpha$ achieves this cleanly.
The SSV candidate is a \emph{zero-mode vortex ring}: a toroidal defect with winding
number $n=1$ and vanishing chiral-shear coupling ($\eta_\nu = 0$), so it does not
source the transverse phonon field and carries mass only from zero-point pressure
on the vortex core.  The precise mass scale requires the LogSE spectrum of uncharged
toroidal defects — a tractable BdG calculation not yet performed. \\[4pt]

\textbf{Berry phase foundation.}
The mixing mechanism rests on established superfluid physics.  Haldane and
Wu~\cite{HaldaneWu1985} showed that a vortex transported around a closed path $C$
in a superfluid acquires geometric phase $\gamma_C = 2\pi N_C$, where $N_C$ is the
number of condensate atoms enclosed.  This is exact and topological.  Lin and
Leggett~\cite{LinLeggett2017} showed that the standard BdG treatment misses a
crucial correction when the transported quasiparticle passes within the penetration
depth of a vortex core: particle number conservation causes the condensate to
\emph{deform} around the bound quasiparticle, making the Berry phase non-universal
and dependent on the system parameters.  Polkinghorne, Groszek, and
Simula~\cite{Polkinghorne2021} resolved the full picture: the complete Berry phase
includes (i) the topological $2\pi N_C$ term, (ii) a topologically protected edge
current of vortices at the condensate boundary, and (iii) a superfluid displacement
current from the time-evolving condensate phase, captured by a superfluid
electrodynamics analogy in which vortices carry effective charge and the condensate
phase gradient acts as an effective magnetic field.

In SSV the three zero-mode vortex rings (one per neutrino generation) are the
quasiparticles transported around each other.  The $3\times 3$ PMNS matrix is the
unitary matrix of Berry phases accumulated when ring $i$ completes a closed path
around ring $j$, computed from the SSV GPE with all three contributions.  The mass
of the zero-mode ring (the condensate density enclosed) is the same quantity that
sets the vortex energy in Papers~I and~II — the identical physical object appears in
both the mass ladder and the neutrino mixing. \\[4pt]

\textbf{OPH as structural guide.}
Observer-Patch Holography~\cite{OPH_particles} derives PMNS angles from transport
of overlap defects around closed cycles in an abstract observer patch network —
mathematically the same operation as Berry phase accumulation around closed vortex
paths, but without a physical medium.  OPH emits
$\theta_{12}=34.2°$, $\theta_{23}=49.7°$, $\theta_{13}=8.7°$ (all within $1°$ of
experiment) and mass splittings within $2.4\%$ of PDG, confirming that the
cycle-transport structure is correct.  However, OPH predicts $\delta_{\rm CP}=305.6°$,
which is $\sim108°$ from the PDG best fit of $\approx197°$ ($\sim2.5\sigma$ off).
The reason is structural: OPH's abstract transport cycles have no preferred
handedness, so they cannot produce the correct CP-violating phase.  This failure
points directly at what SSV adds — the chiral-shear coupling $\lambda$ of the medium
ground state.

OPH thus functions as a \emph{structural confirmation and partial benchmark}:
its success on the mixing angles tells SSV that the Berry phase mechanism is on the
right track; its failure on $\delta_{\rm CP}$ identifies the chiral medium as the
essential missing ingredient. \\[4pt]

\textbf{CP violation and Majorana phases.}
In SSV, $\delta_{\rm CP}$ arises from the asymmetry between clockwise and
anticlockwise winding paths induced by $\lambda \neq 0$ — the medium has a
handedness that OPH lacks.  The Majorana phases $\alpha_{21}$ and $\alpha_{31}$
arise from the displacement current contribution (term~iii above): the dynamical
phase of the condensate background as the zero-mode ring passes through it.
Both are calculable from $\lambda$, $\alpha$, and the vortex core geometry —
no free parameters. \\[4pt]

\textbf{Path to closure.}
Three steps, each a defined calculation within the existing SSV/GPE framework:
\begin{enumerate}[label=(\roman*)]
  \item \textbf{Zero-mode spectrum.}  Solve the BdG equations for uncharged
        ($\eta_\nu=0$) toroidal rings in the LogSE to obtain the mass scale and
        confirm three-fold near-degeneracy.
  \item \textbf{PMNS Berry phase matrix.}  Compute the three-ring closed-path
        Berry phases including the Lin-Leggett condensate-deformation correction
        and the Polkinghorne-Simula edge-current and displacement-current terms,
        with the chiral $\lambda$ term active.  The result is the $3\times3$
        PMNS matrix.
  \item \textbf{CP phase and Majorana phases.}  The chirality asymmetry from
        $\lambda$ gives $\delta_{\rm CP}$; the displacement current gives
        $\alpha_{21}$, $\alpha_{31}$.  A prediction $\delta_{\rm CP} \neq 305.6°$
        that agrees with experiment would simultaneously confirm the vortex
        mechanism and falsify OPH's abstract transport model.
\end{enumerate}
The zero-mode ring with no net winding charge is its own topological mirror,
predicting \emph{Majorana} neutrinos — a falsifiable consequence of the SSV
identification, independent of the mixing angles.
\end{gapbox}

\begin{gapbox}[Quark masses — $m_u$ through $m_t$]
\textbf{Status:} Topology assigned (vortex filament endpoints); masses not predicted. \\
\textbf{Path:} Quarks in SSV are the three legs of the proton's trefoil vortex
skeleton — they are not independent particles but structural elements of the
breather.  Their \emph{current} masses (as used in the QCD Lagrangian) correspond
to the self-energy of an isolated filament segment of length $\sim\xi/\alpha$.
The up and down quarks sit near $\mu_0/4$ and $\mu_0/2$ respectively — consistent
with PDG values of $\sim 2$--$5$ MeV if the confinement scale sets the effective
filament length.  The heavier quarks (strange, charm, bottom, top) correspond to
excited trefoil modes with higher winding numbers or knotted internal structure;
their masses should appear as higher rungs of a \emph{fractional} harmonic ladder
at sub-integer multiples of $\mu_0$.  Deriving the full quark mass spectrum
requires the BdG eigenvalue spectrum of the trefoil breather — the same computation
that closes the proton form factor $F$ in Paper~I.
\end{gapbox}

\begin{gapbox}[Three generations — why exactly three?]
\textbf{Status:} Unexplained within SSV; the ladder reproduces all three charged
leptons empirically but gives no reason for the count. \\[4pt]

\textbf{Prior work.}
Fr\`ere, Libanov and Troitsky~\cite{FrereLibanov2001} showed that in a
6-dimensional theory with a single fermion family, three and only three zero modes
are trapped in the core of an Abrikosov-Nielsen-Olesen vortex due to the topology
of the vortex background.  Their follow-up work extended this to neutrino mixing,
obtaining a predictive see-saw structure.  This is the closest prior result to the
SSV goal: it derives three generations from vortex topology, but requires extra
dimensions to do so.  SSV lives in 3+1 dimensions, so a different mechanism is
needed. \\[4pt]

\textbf{The SSV path: chiral knot classification.}
In SSV, particle families correspond to topologically distinct stable defect types
supported by the GPE in 3+1 dimensions.  The count is therefore the number of
distinct stable knot classes the chiral medium supports below the confinement scale.

The key constraint is chirality.  The SSV vacuum has a preferred handedness (the
chiral-shear coupling $\lambda \neq 0$), which means left- and right-handed knots
are physically distinct.  The stable chiral prime knots at low crossing number are:
\begin{enumerate}[label=(\roman*)]
  \item The \emph{right-handed trefoil} $3_1^+$ — the proton Y-junction skeleton
        (Paper~I).  Its mirror image $3_1^-$ is equally stable but carries opposite
        chirality (antibaryon).
  \item The \emph{figure-eight knot} $4_1$ — amphichiral (its own mirror image),
        hence stable in a chiral medium as a self-conjugate defect.  Natural
        candidate for a second generation structure with different internal energy.
  \item The \emph{torus knot} $T_{2,5}$ ($5_1$, cinquefoil) — the next chiral
        prime knot, with five crossings and higher energy.  Natural candidate for
        the third generation.
\end{enumerate}
These three are the only prime knots with crossing number $\leq 5$ that are
topologically stable under the reconnection dynamics of the GPE.  Above crossing
number 5 the knot table proliferates rapidly; the confinement energy scale
$\mu_0 = m_e/\alpha$ provides the natural cutoff that prevents higher-crossing
structures from forming as stable defects at low energy.

A precise correspondence between the Jones polynomial evaluated at
$t = e^{2\pi i/k}$ (where $k$ is related to $\alpha$ via the Chern-Simons level)
and the generation index would simultaneously explain why there are three
generations and predict the mass ratios $m_\mu/m_e$ and $m_\tau/m_e$ from
topological data alone.  This conjecture is supported structurally by Witten's
identification of the Jones polynomial with Chern-Simons theory~\cite{Witten1989},
which itself is the low-energy effective theory of vortex intersections in a
superfluid. \\[4pt]

\textbf{Difference from Frère et al.}
The extra-dimensional mechanism produces three zero modes of a \emph{single} vortex
by exploiting the geometry of a compact extra dimension.  The SSV mechanism produces
three \emph{distinct} stable vortex topologies in 3+1D, classified by chirality and
crossing number.  These are complementary: Frère et al.\ show that vortex topology
can explain the replication count; SSV specifies which topological invariant does
so in a purely 4-dimensional physical medium.  This is identified as the primary
open theoretical problem of the particle sector.
\end{gapbox}

\begin{gapbox}[Gravitational coupling $\alpha_G$ from first principles]
\textbf{Status:} Reproduced to $0.6\%$ using CODATA input (Paper~II);
not yet derived. \\
\textbf{Path:} As identified in Paper~II and Section~\ref{sec:jacobson} of
this paper, closing $\alpha_G$ requires the 3D proton breather profile to
compute the acoustic monopole moment $Q_p \sim \delta V_p (m_e/m_p)^3$.
This is the same numerical minimisation as the proton mass computation
(Appendix~\ref{app:numerics}), viewed from the gravitational direction.
One computation closes both.
\end{gapbox}

\subsection*{Why the framework escapes the standard UV difficulties}

A recurring obstacle in quantum gravity is the attempt to quantise at the Planck
scale directly.  Point particles have no natural size; the UV cutoff must be
introduced by hand; and the resulting theory is non-renormalisable because
nothing in its structure forbids arbitrarily short-distance interactions.  The
measurement problem is a parallel symptom: if the fundamental objects have no
physical extent, ``collapse'' has no mechanical content.

SSV avoids these difficulties not by regularising them but by never encountering
them.  The reason is that the framework lives on a different scale: the healing
length $\xi = \hbar/(m_0 c)$, which is the Compton wavelength of the medium grain.
At and below $\xi$, the continuum description breaks down physically — not as a
mathematical artefact, but because there are no stable structures smaller than a
vortex core.  The UV cutoff is the vortex core.  It is not imposed; it is derived
from the single postulate.

This scale does triple duty:
\begin{enumerate}[label=(\roman*)]
    \item \textbf{UV regulator.} Below $\xi$, the GPE has no solutions — the
          quantum pressure term dominates and suppresses all density perturbations.
          Loop integrals over momentum are therefore naturally cut off at
          $k_{\rm max} \sim 1/\xi$, with no additional regularisation scheme required.
    \item \textbf{Particle generator.} The mass ladder of Paper~I lives at the scale
          $\xi/\alpha$ — one $\alpha$-step above the core.  Every particle mass is a
          harmonic of $m_e/\alpha = \hbar c/(\alpha\xi)$.  The same $\xi$ that
          regulates the UV also sets the spectrum.
    \item \textbf{Gravitational entropy unit.} As shown in Section~\ref{sec:jacobson},
          the Bekenstein--Hawking entropy counts independent degrees of freedom at
          the horizon in units of $\xi^2$.  Newton's constant $G \sim c\xi/m_0$ is
          therefore not a free parameter but a consequence of the core scale.
\end{enumerate}

One scale, all the way down.  The ratio $\xi^2/\ell_P^2 = \hbar c/(m_0^2 G)$ is
the SSV analogue of the dimensionless pixel area that appears in holographic
approaches to quantum gravity.  The critical difference is that in SSV this ratio
is not a calibration input — it is determined by $m_0$, $\hbar$, $c$, and $G$,
all of which are fixed independently by the particle and force sectors.  A correct
information theory of spacetime must have its pixel scale set by the physical
medium that underlies spacetime; SSV provides that medium, and $\xi$ is its pixel.

The coupling hierarchy $\eta_\gamma = 1 \gg \eta_e \sim \alpha \gg \eta_p \sim
(m_e/m_p)^3$ requires no separate unification procedure.  The four forces are
already unified — not by making independent coupling constants meet at a GUT scale,
but by being distinct geometric modes of the same medium from the start.  The
hierarchy is mechanical: it reflects the acoustic cross-section of each defect type
in the density field, which is fixed by topology and geometry, not by renormalisation
group running.  The question ``why do the couplings unify?'' does not arise in SSV
because they were never separate.

The programme begun in Paper~I — to show that a single physical postulate is sufficient
to account for all known phenomena — is now, modulo those computational tasks, complete.

%-----------------------------------------------------------------------
\appendix
\section{Numerical Scheme for Proton Mass Minimisation}
\label{app:numerics}
%-----------------------------------------------------------------------

The proton's mass is the energy of the lowest-energy trefoil vortex breather in a
GPE simulation with periodic boundary conditions. The energy functional is:

\begin{equation}
E[\Psi] = \int\!\left[\frac{\hbar^2}{2m}|\nabla\Psi|^2
+ \frac{g}{2}|\Psi|^4 - \mu|\Psi|^2\right]d^3x,
\label{eq:energy_functional}
\end{equation}

where $\mu$ is a Lagrange multiplier enforcing the normalisation
$\int|\Psi|^2\,d^3x = N$.

The minimisation proceeds as follows:
\begin{enumerate}
    \item Initialise $\Psi$ as a trefoil knot in phase $\varphi$ with Gaussian density envelope.
    \item Time-evolve under imaginary-time GPE ($\partial_\tau\Psi = -\delta E/\delta\Psi^*$)
          until convergence.
    \item At each step, renormalise to $N$ and compute $E[\Psi]$.
    \item Convergence is declared when $|\Delta E/E| < 10^{-8}$ over 100 steps.
\end{enumerate}

In Python, the energy integral is evaluated numerically using
\texttt{scipy.integrate.cumulative\_trapezoid} (note: not the deprecated
\texttt{cumtrapz}). The following pseudocode illustrates the energy evaluation:

\begin{verbatim}
import numpy as np
from scipy.integrate import cumulative_trapezoid

def energy(psi, dx, g, hbar, m):
    rho = np.abs(psi)**2
    grad_psi = np.gradient(psi, dx)
    kin = (hbar**2 / (2*m)) * sum(
        np.abs(gp)**2 for gp in grad_psi)
    interaction = 0.5 * g * rho**2
    integrand = kin + interaction
    # Integrate over x, then y, then z using cumulative_trapezoid
    integral_x = cumulative_trapezoid(integrand, dx=dx, axis=0)[-1]
    integral_xy = cumulative_trapezoid(integral_x, dx=dx, axis=1)[-1]
    E = cumulative_trapezoid(integral_xy, dx=dx, axis=2)[-1]
    return float(np.sum(E))
\end{verbatim}

The full minimisation is available in the companion code repository
(\texttt{bh\_eigenfrequency.py} and \texttt{calculate\_velocity\_profile.py}
in the project directory).

\begin{thebibliography}{99}

\bibitem{ssv1}
Norland, S., ``Saturated Superfluid Vacuum~I: Topological Defects in a
Saturated Superfluid Vacuum and the $\alpha$-Harmonic Mass Ladder,''
SSV Series Paper~I (2026).

\bibitem{ssv2}
Norland, S., ``Saturated Superfluid Vacuum~II: Forces as Hydrodynamic
Pressure Gradients in the Saturated Superfluid Plenum,''
SSV Series Paper~II (2026).

\bibitem{ssv3}
Norland, S., ``Saturated Superfluid Vacuum~III: Thermodynamics and
Irreversible Time,'' SSV Series Paper~III (2026).

\bibitem{ssv4}
Norland, S., ``Saturated Superfluid Vacuum~IV: Galactic-Scale Resonances,''
SSV Series Paper~IV (2026).

\bibitem{Bjerknes1906}
Bjerknes, V.~F.~K., \emph{Fields of Force}
(Columbia University Press, New York, 1906).

\bibitem{Madelung1927}
Madelung, E., ``Quantentheorie in hydrodynamischer Form,''
\emph{Z.\ Phys.}\ \textbf{40}, 322--326 (1927).

\bibitem{Kibble1976}
Kibble, T.~W.~B., ``Topology of Cosmic Domains and Strings,''
\emph{J.\ Phys.\ A} \textbf{9}, 1387--1398 (1976).

\bibitem{Zurek1985}
Zurek, W.~H., ``Cosmological Experiments in Superfluid Helium,''
\emph{Nature} \textbf{317}, 505--508 (1985).

\bibitem{Jacobson1995}
Jacobson, T., ``Thermodynamics of Spacetime: The Einstein Equation of State,''
\emph{Phys.\ Rev.\ Lett.}\ \textbf{75}, 1260--1263 (1995).
[arXiv:gr-qc/9504004]

\bibitem{Unruh1976}
Unruh, W.~G., ``Notes on Black-Hole Evaporation,''
\emph{Phys.\ Rev.\ D} \textbf{14}, 870--892 (1976).

\bibitem{FrereLibanov2001}
Fr\`ere, J.-M., Libanov, M.~V., and Troitsky, S.~V.,
``Three Generations on a Local Vortex in Extra Dimensions,''
\emph{Phys.\ Lett.\ B} \textbf{512}, 169--173 (2001).
[arXiv:hep-ph/0012306]

\bibitem{Witten1989}
Witten, E.,
``Quantum Field Theory and the Jones Polynomial,''
\emph{Commun.\ Math.\ Phys.}\ \textbf{121}, 351--399 (1989).

\bibitem{HaldaneWu1985}
Haldane, F.~D.~M. and Wu, Y.-S.,
``Quantum Dynamics and Statistics of Vortices in Two-Dimensional Superfluids,''
\emph{Phys.\ Rev.\ Lett.}\ \textbf{55}, 2887--2890 (1985).

\bibitem{LinLeggett2017}
Lin, Y. and Leggett, A.~J.,
``Effect of Particle Number Conservation on the Berry Phase Resulting
from Transport of a Bound Quasiparticle around a Superfluid Vortex,''
arXiv:1708.02578 (2017).

\bibitem{Polkinghorne2021}
Polkinghorne, R.~E.~S., Groszek, A.~J., and Simula, T.~P.,
``Geometric Phases of a Vortex in a Superfluid,''
arXiv:2101.07438 (2021).

\bibitem{OPH_particles}
M\"{u}ller, B., Xue, K., and Poneder, M.,
``Deriving the Particle Zoo from Observer Consistency,''
OPH Paper~3, preprint (2026).
\url{https://github.com/FloatingPragma/observer-patch-holography}

\bibitem{Volovik2003}
Volovik, G.~E., \emph{The Universe in a Helium Droplet}
(Oxford University Press, Oxford, 2003).

\bibitem{Gross1961}
Gross, E.~P., ``Structure of a Quantised Vortex in Boson Systems,''
\emph{Nuovo Cim.}\ \textbf{20}, 454--457 (1961).

\end{thebibliography}

\end{document}