# IM Vector Control Simulation — MATLAB

## Overview

This MATLAB simulation mirrors the embedded inverter/induction-motor (IM)
vector-control software in `PE1/src/`.  The goal is to provide a readable,
modular foundation for validating the specification and the embedded
software behaviour.

The simulation uses a **dual-rate loop** that matches the embedded timing:

| Rate   | Period | MATLAB function        | Embedded source                  |
|--------|--------|------------------------|----------------------------------|
| 1 ms   | 1 ms   | `fi_1ms_inv0_idqcom`   | `fi_1ms_inv0_idqcom.c`           |
| PWM    | 100 µs | `fi_pwm_inv0_encctrl`  | `fi_pwm_inv0_encctrl.c`          |
| PWM    | 100 µs | `fi_pwm_inv0_idqctrl`  | `fi_pwm_inv0_idqctrl.c`          |
| PWM    | 100 µs | `fi_pwm_inv0_svctrl`   | `fi_pwm_inv0_svctrl.c`           |

A simplified induction-motor plant model (`plant_model_im.m`) closes the
simulation loop.  **This has no embedded counterpart.**

---

## Directory structure

```
MATLAB/
  im_vector_control_sim.m   Entry script — run this to start
  params_inv0.m             All parameters from fim_user_inv0.h
  fi_1ms_inv0_idqcom.m      1 ms task: torque limits, current commands
  fi_pwm_inv0_encctrl.m     Encoder PLL, slip, angle integration
  fi_pwm_inv0_idqctrl.m     Current PI, FW, R1/R2 temp-comp, feedforward
  fi_pwm_inv0_svctrl.m      dq→αβ→UVW, SVPWM modulation
  plant_model_im.m          [SIMPLIFIED PLANT] IM state-space model
  map_tq_idq_get.m          Torque→id/iq bilinear interpolation map
  map_lm_1d_get.m           Lm(|id|) 1D saturation map
  map_tq_limit_get.m        Torque limit map (speed-dependent)
  README_simulation.md      This file
```

---

## How to run

1. Open MATLAB and add the `MATLAB/` directory to the path (or `cd` into it).
2. Run `im_vector_control_sim` from the command window or open the script
   and press **Run**.
3. The script produces four figure windows:
   - **Torque & Speed**: torque (reference, estimate, plant), rotor speed, slip/inverter frequency
   - **dq Currents**: d-axis and q-axis currents (reference vs. measured)
   - **dq Voltages**: dq voltage references and SVPWM modulation indices
   - **Lm**: magnetising inductance (Lm map output over time)

Edit the **Scenario** section near the top of `im_vector_control_sim.m` to
change the torque profile, simulation duration, load torque, or DC bus
voltage.

---

## Assumptions and simplifications

| Item | Embedded behaviour | Simulation approximation |
|------|--------------------|--------------------------|
| Encoder | Hardware encoder (RH850 GTM) | Rotor speed from plant mechanical integrator |
| ADC current sensing | ADC sampling with interrupt synchronisation | Plant dq currents used directly |
| Clarke+Park transform | Computed from three-phase currents | Not needed — plant gives dq directly |
| Vdc | Battery/capacitor bus dynamics | Constant value (ideal DC bus) |
| Dead-time compensation | Not implemented in embedded either | Not modelled |
| Temperature model | No thermal dynamics in embedded either | Motor temperature held constant |
| R1/R2 temp-comp flags | `ENABLE_INV0_R1_CMP = 0`, `ENABLE_INV0_R2_CMP = 0` | Same defaults (disabled) |
| Over-modulation | `k_modu` gain applied by embedded | Set to 1.0 in simulation |
| DC current estimation | LPF on `(vd*id + vq*iq)/Vdc` | Same formula implemented |
| Motor losses | Copper losses only | Iron losses, friction not modelled |
| Rotor inertia | Not in embedded (mechanical plant is real HW) | `J = 0.05 kg·m²` (user-adjustable) |

---

## Temperature compensation

Primary (R1) and secondary (R2) resistance temperature compensation is
implemented in `fi_pwm_inv0_idqctrl.m`:

```
R_cmp = R_base × (1 + 0.00393 × (T_now − T_ref))
```

Controlled by the flags `ENABLE_INV0_R1_CMP` and `ENABLE_INV0_R2_CMP`
(default `0` = disabled) in `params_inv0.m`.

**Note:** The embedded C source (`fi_pwm_inv0_idqctrl.c`) has a copy-paste
error in the comment block for the R2 compensation: the comment says
"一次抵抗温度補正演算" (primary resistance correction) for both R1 and R2.
The MATLAB code uses correct names throughout.

---

## Torque map scaling note

The torque map tables (`map_tq_idq_get.m`) contain raw values copied from
`mapdata_trq_inv0_map.c`.  The embedded header sets `SCALLING_A = 1.0`
and `SCALLING_B = 1.0`, meaning values are used as-is.  However, some map
entries exceed `IDQ_INV0_MAX = 17.32 A` (e.g., 680 at extreme conditions).
The current vector limiter in `fi_pwm_inv0_idqctrl.m` clips the commanded
current to `IDQ_INV0_MAX`, matching the embedded `fi_1ms_inv0_idqcom.c`
limiter.  If the motor has different scaling, update `SCALLING_A`/`B` and
`IDQ_INV0_MAX` in `params_inv0.m`.

---

## Extending the simulation

- To add temperature dynamics: update `s.tmp_mot_max` in the main loop
  using a thermal model (not present in embedded code).
- To test speed control: wrap `im_vector_control_sim.m` with a speed PI
  controller that drives `s.tq_ref_ext`.
- To validate step response: modify `TQ_PROFILE` in `im_vector_control_sim.m`.
