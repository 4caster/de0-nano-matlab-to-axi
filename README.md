# de0-nano-matlab-to-axi

  - Quartus Prime Lite Edition v20.1 

### Setting up developing enviroment

1. Install [wls1](https://docs.microsoft.com/en-us/windows/wsl/install-win10) with Ubuntu 18.04
2. Install Quartus Prime Lite Edition v20.1 with device support for Cyclone IV
3. Procceed with [instruction](https://www.terasic.com.tw/wiki/Getting_Start_Install_Eclipse_IDE_into_Nios_EDS) taken from section 3.1 of the Nios II hanbook

### Setting up the project

All oh the instruction about creation of the project could be taken from [here](https://books.ifmo.ru/file/pdf/2513.pdf) with relate to platform specifics like memory size or UART-JTAG from [here](https://www.ti.com/lit/ug/tidu737/tidu737.pdf)

### Generating Matlab AXI Master IP Core
Use [this](https://uk.mathworks.com/help/supportpkg/alterafpgaboards/ug/setupaximasterforquartus.html) instruction of how to generate ip-core

In a nutshell, use command 
>setupAXIMasterForQuartus('path')

### Generating Matlab AXI Master IP Core

It's  has to be mentioned that Altera Interconnection Bus is Avalon, which could be different from AXI interface. But Platform Designer is still able to correctly recognize and solve component interconnections

Don't forget that Matlab generated IP core is not a standart one, so you have to look for it in a project-specific ip-core in Platform Designer

### Accessing memory from Matlab

[Here](https://uk.mathworks.com/help/supportpkg/alterafpgaboards/ug/aximaster.html) is a complite guide of matlab-jtag-fpga interaction. Use memory addresses which you previously assigned in Platform Designer in Address Map tab.


