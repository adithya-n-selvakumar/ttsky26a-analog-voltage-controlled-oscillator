![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# 4-Stage Differential Ring VCO

A current-controlled 4-stage differential ring voltage-controlled oscillator (VCO) implemented in the SkyWater SKY130A 130nm CMOS process for the Tiny Tapeout TTSKY26a shuttle.

- [Read the project documentation](docs/info.md)

## Design Overview

The VCO consists of a bias generator (`vco_bias`) and a 4-stage differential ring core (`vco_core`). Each stage contains a differential pair with PFET active loads, an NFET tail current source, a MOS capacitor, and a two-inverter output buffer. The fourth-to-first feedback connection swaps differential polarity, creating 5 total inversions to satisfy the Barkhausen oscillation condition (135° per stage). This topology produces 8 buffered quadrature outputs with 45° phase spacing.

## Pinout

| Pin | Signal | Description |
|-----|--------|-------------|
| ua[0] | I_IN | Control current input (analog) |
| ua[1] | VB | Bias voltage monitor (analog) |
| uo[0] | VP0 | Stage 0 positive output (buffered digital) |
| uo[1] | VN0 | Stage 0 negative output (buffered digital) |
| uo[2] | VP1 | Stage 1 positive output (buffered digital) |
| uo[3] | VN1 | Stage 1 negative output (buffered digital) |
| uo[4] | VP2 | Stage 2 positive output (buffered digital) |
| uo[5] | VN2 | Stage 2 negative output (buffered digital) |
| uo[6] | VP3 | Stage 3 positive output (buffered digital) |
| uo[7] | VN3 | Stage 3 negative output (buffered digital) |

## How to Test

1. Apply 1.8V to VDPWR.
2. Inject a control current into ua[0] (I_IN), starting around 1–10 µA.
3. Observe oscillation on any digital output (uo[0]–uo[7]).
4. Adjacent pairs (e.g., uo[0]/uo[1]) are complementary; successive pairs are 45° phase-shifted.
5. Sweep the control current to characterize the tuning curve.
6. Optionally monitor ua[1] (VB) to observe the internally generated bias voltage.

## External Hardware

- Current source or resistor network to inject control current into ua[0]
- Oscilloscope or frequency counter to measure output frequency

## Resources

- [Tiny Tapeout](https://tinytapeout.com)
- [Analog specs](https://tinytapeout.com/specs/analog/)
- [FAQ](https://tinytapeout.com/faq/)
- [Join the community](https://tinytapeout.com/discord)
