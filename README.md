# mMCP-counter
Murine version of MCP-counter, a tool to estimate the immune and stromal composition of heterogeneous tissue, from transcriptomic data. It is distributed as a R package.

Installation
========
In a R session, install from the GitHub repository using devtools:

    install.packages("devtools")
    library(devtools)
    devtools::install_github("cit-bioinfo/mMCP-counter")

Usage
========
The mMCP-counter package exports one function, mMCPcounter.estimate. To use it:

    library("mMCPcounter")
    mMCPcounter.estimate(expressionData)

For more details, please refer to:

    ?mMCPcounter::mMCPcounter.estimate


Citation
========
If you use mMCP-counter in a scientific publication, please contact cite:

Petitprez, F., Lévy, S., Sun, C.-M., Meylan, M., Linhard, C., Becht, E., Elarouci, N., Roumenina, L.T., Ayadi, M., Sautès-Fridman, C., Fridman, W.H. and de Reyniès, A. (2020). The murine Microenvironment Cell Population counter method to estimate abundance of tissue-infiltrating immune and stromal cell populations in murine samples using gene expression. BioRxiv 2020.03.10.985176.


License
========

mMCP-counter is a free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
