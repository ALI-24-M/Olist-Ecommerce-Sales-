olist-ecommerce-analysis/
├── data/
│   └── .gitkeep                 # Don't upload huge raw CSVs; keep this for local data
├── sql/
│   ├── schema.sql               # CREATE TABLE statements & Primary/Foreign Keys
│   └── analysis_queries.sql     # Your JOIN and GROUP BY queries
├── notebooks/
│   └── visualization.ipynb      # Python/MATLAB/R notebook for data visualization
├── scripts/
│   └── data_loader.py           # Optional: Python script used to push CSVs to SQL
├── README.md                    # The main project documentation and final report
└── requirements.txt             # Python dependencies (e.g., pandas, matplotlib, psycopg2
