# A Computational Temporal Logic for Superconducting Accelerators

Superconducting logic offers the potential to perform com- putation at tremendous speeds and energy savings but a “se- mantic gap” lies between the level-driven logic traditional hardware designs accept as a foundation and the pulse-driven logic naturally supported by the most compelling supercon- ducting technologies. A pulse, unlike a level signal, will fire through a channel for only an instant. Arranging the network of superconducting components so that input pulses always arrive simultaneously to “logic gates” so one can maintain the illusion of Boolean-only evaluation is a significant en- gineering hurdle. In this paper, we explore computing in a new and more native tongue for superconducting logic: time of arrival. Building on recent work in delay-based compu- tations, we show that superconducting logic can naturally compute directly over temporal relationships between pulse arrivals, that the computational relationships between those pulse arrivals can be formalized through a functional exten- sion to a temporal predicate logic used in the verification community, and that the resulting architectures can operate asynchronously and describe real and useful computations. We verify our hypothesis through a combination of detailed analog circuit models, a formal analysis of our abstractions, and an evaluation in the context of several superconducting accelerators.

### Package Contents
* *Primitives/* RSFQ implementations of (and testbench files for) our primary temporal operators. 
* *Accelerators/* RSFQ implementations of (and testbench files for) our proof-of-concept accelerators.
* *Scripts/* Scripts to easily run our experiments.
 
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
