Release v1.0.0 [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5270300.svg)](https://doi.org/10.5281/zenodo.5270300)


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
    mMCPcounter.estimate(expressionData, features = c("Gene.Symbol","ENSEMBL.ID","Probes")[1])

For more details, please refer to:

    ?mMCPcounter::mMCPcounter.estimate


Citation
========
If you use mMCP-counter in a scientific publication, please cite:

Petitprez, F., Lévy, S., Sun, C.-M., Meylan, M., Linhard, C., Becht, E., Elarouci, N., Tavel, D., Roumenina, L.T., Ayadi, M., Sautès-Fridman, C., Fridman, W.H. and de Reyniès, A. The murine Microenvironment Cell Population counter method to estimate abundance of tissue-infiltrating immune and stromal cell populations in murine samples using gene expression. Genome Med 12, 86 (2020). https://doi.org/10.1186/s13073-020-00783-w


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
