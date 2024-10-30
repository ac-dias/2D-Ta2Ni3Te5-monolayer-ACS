# 2D-Ta2Ni3Te5-monolayer-ACS
This repository contains raw data pertinent to the study titled "Raman Spectra and Excitonic effects in the novel narrow-gapped Ta2Ni3Te5 monolayer". It contains the input files and part of the output files.

## Manuscript Title

"Raman Spectra and Excitonic effects in the novel narrow-gapped Ta2Ni3Te5 monolayer."

## Contents Explanation

This README provides an overview of the data stored within the respective folders:

1. **stress-tensor**: Data from structural optimization conducted with VASP-PBE.
2. **phonons**: Data derived from phonon dispersion calculations using Quantum Espresso-PBE+Phonopy.
3. **dos**: Data representing the density of states calculated with VASP-PBE.
4. **bands**: Data concerning the electronic band structure computed with VASP-PBE.
5. **bands-soc**: Data on the electronic band structure, including spin-orbit coupling effects, calculated with VASP-PBE+SOC.
6. **hse06-wannier90**: Data obtained from HSE06 calculations utilizing VASP with Wannier90, facilitating the derivation of HSE06 MLWF-TB Hamiltonian (VASP-HSE06+SOC/Wannier90).
7. **raman**: Data contributing to the generation of Raman spectrum, derived from Quantum Espresso+QERAMAN-PBE calculations.
8. **TB**: Data for MLWF-TB optical properties at the IPA and BSE levels, employing WanTiBEXOS code (WanTiBEXOS/VASP HSE06 MLWF-TB Hamiltonian).
9. **tb-bse**: Data for MLWF-TB excitonic and optical properties at the BSE level, utilizing WanTiBEXOS code (WanTiBEXOS/VASP HSE06+SOC MLWF-TB Hamiltonian).
10. **IR** Data contributing for the generation of IR spectrum, obtained using VASP
11. **C11,C12,C22** Data contributing for the generation of the elastic constantes using Quantum Espresso PBE calculation.

For detailed information on WanTiBEXOS, refer to its documentation website: [WanTiBEXOS Documentation](https://wantibexos.readthedocs.io/en/latest/)
