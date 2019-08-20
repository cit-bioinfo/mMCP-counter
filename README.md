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

See ?mMCPcounter.estimate for more details.


Citation
========
If you use MS.liverK in a scientific publication, please contact Florent Petitprez for citation info: florent[dot]petitprez[at]ligue-cancer[dot]net


License
========

MS.liverK is a free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
