# A Computational Temporal Logic for Superconducting Accelerators

Superconducting logic offers the potential to perform computation at tremendous speeds and energy savings but a “semantic gap” lies between the level-driven logic traditional hardware designs accept as a foundation and the pulse-driven logic naturally supported by the most compelling superconducting technologies. A pulse, unlike a level signal, will fire through a channel for only an instant. Arranging the network of superconducting components so that input pulses always arrive simultaneously to "logic gates" so one can maintain the illusion of Boolean-only evaluation is a significant engineering hurdle. 

Our goal in this work is to explore computing in a new and more native tongue for superconducting logic: *time of arrival*. Building on recent work in delay-based computations, we show that:
* superconducting logic can naturally compute directly over temporal relationships between pulse arrivals, 
* the computational relationships between those pulse arrivals can be formalized through a functional extension to a temporal predicate logic used in the verification community,
* the resulting architectures can operate asynchronously and describe real and useful computations. 

To verify and evaluate our idea we built and simulated RSFQ circuits for all our primitive operators as well as for various temporal accelerators found in literature.

For more information and a detailed description of this work please read our paper presented at ASPLOS2020.

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
[1] Georgios Tzimpragos, Dilip Vasudevan, Nestan Tsiskaridze, George Michelogiannakis, Advait Madhavan, Jennifer Volk, John Shalf, and Timothy Sherwood. A Computational Temporal Logic for Superconducting Accelerators Proceedings of the 25th International Conference on Architectural Support for Programming Languages and Operating Systems (ASPLOS) March 2020. Lausanne, Switzerland.

### Others:
Link to the Race Logic Github: https://github.com/UCSBarchlab/RaceLogic

### Contact:
For general questions feel free to reach out to [Archlab @ UCSB](https://www.arch.cs.ucsb.edu/).

For immediate help with Race Logic and PyRTL, contact George (gtzimpragos@ucsb.edu) and Jennifer (jevolk@ucsb.edu).
