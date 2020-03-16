# A Computational Temporal Logic for Superconducting Accelerators

Description

### Package Contents
* *primitives/* RSFQ implementations of (and testbench files for) our primary temporal operators. 
* *accelerators/* RSFQ implementations of (and testbench files for) our proof-of-concept accelerators.
* *scripts/* Scripts to easily run our experiments.

### Dependencies
 
### Example Usage
Install WRCAD xictools package (http://www.wrcad.com/).

Run WRSPICE with -m flag:

```export wrspice=/usr/local/xictools/wrspice/bin/wrspice
$wrspice -m /usr/local/xictools/wrspice.current/devkit/examples/jj/module_dist/jj.so
```
or, for a particular circuit (for example, primitives/delay.cir), run the command
```
$wrspice -m /usr/local/xictools/wrspice.current/devkit/examples/jj/module_dist/jj.so ~/primitives/delay.cir
```

followed by the commands listed in scripts/command_list.txt under the respective circuit; for delay.cir, the following commands are pertinent and should be typed in succession within the WRSPICE command terminal:
```
run

plot v(JTL1) v(JTL2) v(JTL3) v(JTL4)
```


### References:
Georgios Tzimpragos, Dilip Vasudevan, Nestan Tsiskaridze, George Michelogiannakis, Advait Madhavan, Jennifer Volk, John Shalf, and Timothy Sherwood. A Computational Temporal Logic for Superconducting Accelerators Proceedings of the 25th International Conference on Architectural Support for Programming Languages and Operating Systems (ASPLOS) March 2020. Lausanne, Switzerland.

### Others:
Link to the Race Logic Github: https://github.com/UCSBarchlab/RaceLogic

### Contact:
For general questions feel free to reach out to [Archlab @ UCSB](https://www.arch.cs.ucsb.edu/).

For immediate help with Race Logic and PyRTL, contact George (gtzimpragos@ucsb.edu) and Jennifer (jevolk@ucsb.edu).
