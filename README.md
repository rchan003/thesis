# Thesis

Investigating the representational capacity of advanced time series models via data simulation.

## Set Up

1. Open terminal in project directory and enter: `make all` to create virtual environment and install all dependencies.
2. Activate the virtual environement, named `.venv` as appropriate for your OS.

## TODO

* Create `reproduce_all.sh` script
* Create run_simulation.py, run_experiment.py, process_data.py
* look into [simulated annealing library](https://pypi.org/project/hcmioptim)

## Project Structure

```text
thesis/
├── config/                 # All configuration files (YAML)
│   ├── simulation.yaml     # Config-driven simulation definitions
│   └── paths.yaml          # Centralized filesystem paths
│
├── data/
│   ├── raw/                # Immutable raw or simulated data
│   ├── cleaned/            # Cleaned data
│   ├── intermediate/       # Cached or partial artifacts
│   └── metadata/           # Data schemas, hashes, statistics
│
├── src/                    # Core library code (no experiment logic)
│   ├── simulation/         # Data generation and simulators
│   └── utils/              # Utility methods
│
├── experiments/            # Reproducible experiment entry points
│
├── results/                # Thesis-ready outputs only
│
├── scripts/                # CLI wrappers (simulation, cleaning)
│   ├── run_simulation.py
│   └── clean_data.py
│
├── Makefile                # One-command reproducibility
├── requirements.txt        # Python dependencies
└── README.md
```
