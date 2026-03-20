# 📊 Marketing Analytics & Segmentation Platform

An end-to-end marketing analytics system built on event-level user behavior data to analyze conversion funnels, segment users, and simulate experiment-driven optimization using modern data stack tools.

---

## 🚀 Project Overview

This project replicates how modern data teams analyze user behavior and optimize marketing performance by building a scalable analytics workflow on top of clickstream data.

The system transforms raw event logs into structured analytical models, enabling:

* Funnel analysis across user journeys
* Audience segmentation by behavior and device
* Experiment-driven evaluation of conversion improvements
* Pipeline orchestration simulating production workflows

---

## 🧱 Tech Stack

* **Warehouse:** BigQuery
* **Transformation:** dbt (staging → intermediate → marts)
* **Language:** SQL, Python
* **Orchestration:** DAG-style pipeline simulation
* **Analytics:** Funnel modeling, segmentation, experimentation

---

## 🏗️ Architecture

```
Raw Event Data (BigQuery)
        ↓
dbt Staging Models (cleaned events)
        ↓
Intermediate Models (user journeys)
        ↓
Mart Models (funnel, segmentation, experiment)
        ↓
Pipeline Orchestration (Python DAG)
```

---

## 📊 Key Features

### 1. Event-Level Data Modeling

* Transformed raw clickstream data into structured staging, intermediate, and fact tables using dbt
* Built reusable analytics models following modern data stack best practices

---

### 2. Funnel Analysis

* Designed user-level funnel progression across key stages:
  `page_view → view_item → add_to_cart → checkout → purchase`
* Identified ~80% drop-off at the product decision stage (view → cart)

---

### 3. Segmentation Analysis

* Segmented users by device type (desktop, mobile, tablet)
* Uncovered device-based performance differences impacting conversion rates

---

### 4. Experimentation Framework

* Simulated A/B testing by assigning users to control and treatment groups
* Evaluated conversion metrics to assess potential impact of product changes
* Applied experiment-driven thinking to guide optimization decisions

---

### 5. Pipeline Orchestration

* Built DAG-style workflow to automate dbt transformations and analysis steps
* Simulated production-grade data pipeline execution

---

## 📈 Key Insights

* Only ~23% of users progressed from page view to product view
* ~80% drop-off observed between product view and add-to-cart stage
* Desktop users showed slightly higher conversion compared to mobile users
* Simulated experiment showed no meaningful difference between control and treatment groups

---

## 🧠 What This Project Demonstrates

* End-to-end analytics pipeline design
* Marketing funnel and segmentation analysis
* Experiment-driven product thinking
* Data modeling using dbt
* Understanding of modern data stack workflows

---

## ▶️ How to Run

```bash
# Run dbt models
cd marketing_dbt
dbt run

# Run pipeline
cd ../data_pipeline
python run_pipeline.py
```

---

## 💡 Future Improvements

* Implement real A/B testing dataset with statistical significance testing
* Add dashboard layer (Tableau / Looker)
* Introduce scheduling via Airflow
* Extend segmentation (geography, traffic source)

---

## 📬 Contact

Feel free to reach out if you'd like to discuss this project or collaborate!
