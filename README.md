# Innovative-approach-for-the-analysis-of-EMT-by-the-integration-of-distributed-energy-resources
Innovative approach for the analysis of electromagnetic transients generated by the integration of distributed energy resources in power systems

The paper associated with this work has been accepted for publication in IEEE Latin America Transactions (Submission ID: 9283).

This repository contains the simulation file and the necessary codes to process data from EMT simulations performed on a power system with the integration of distributed generation based on solar systems.

## Contents

- **`14NodesPV.pfd`**: Contains the simulation file with parameters and the environment ready to simulate the IEEE 14-node system with the integration of distributed generation based on solar systems.

- **`Import_without_DER.m`**: A MATLAB script to organize voltage and current data exported from the PowerFactory simulation without any distributed energy resource integration.

- **`Import_with_DER.m`**: A MATLAB script to organize voltage and current data exported from the PowerFactory simulation when a distributed energy resource is integrated.

- **`EMTSignalAnalyzer_Installer.exe`**: A program developed in MATLAB by the authors to facilitate EMT signal analysis. The input parameters for the program are `.mat` files obtained after using the "Import_with_DER" script. The program can easily display graphs and allows data export for future analyses.

- **`1 MW`**: A folder containing `.mat` files for different connection angles for a 1 MW distributed resource based on solar systems.

- **`Analyze_mat.ipynb`**: A Jupyter Notebook in Python that analyzes the `.mat` files. This program allows for displaying the results from the paper.

## Contact

For questions, suggestions, or requests, please contact:

- Jhonn Castro: [jhonn.castro@correounivalle.edu.co](mailto:jhonn.castro@correounivalle.edu.co)
- Julian Nieto: [nieto.julian@correounivalle.edu.co](mailto:nieto.julian@correounivalle.edu.co)
- Jacobo Ceballos: [jacobo.ceballos@correounivalle.edu.co](mailto:jacobo.ceballos@correounivalle.edu.co)