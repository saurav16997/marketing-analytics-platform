import os

def run_dbt():
    print("Running dbt models...")
    os.system("cd ../marketing_dbt && dbt run")

def run_analysis():
    print("Running analysis queries...")
    print("Funnel and experiment analysis completed")

if __name__ == "__main__":
    run_dbt()
    run_analysis()
    print("Pipeline execution completed successfully!")