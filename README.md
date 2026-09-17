# Healthcare Management: Patient Readmission Analysis

## 📌 Project Overview

This project analyzes healthcare patient data to understand factors associated with patient readmissions, hospital stays, medical procedures, medications, and patient demographics.

The project follows an end-to-end data analytics workflow using:

**Dataset → Excel → MySQL → Python → Tableau → Business Insights**

The primary objective is to identify patterns related to patient readmission within 30 days after discharge, helping healthcare providers improve patient care and reduce healthcare costs. :contentReference[oaicite:3]{index=3}

---

## 🎯 Business Problem

Hospital readmissions increase healthcare costs and may indicate gaps in patient care.

This project aims to:

- Analyze patient demographics
- Study readmission patterns
- Examine diagnoses and procedures
- Understand medication usage
- Explore hospital stay duration
- Identify factors associated with patient readmissions

These insights can help healthcare organizations take proactive actions to improve patient outcomes. :contentReference[oaicite:4]{index=4}

---

## 📂 Dataset

Dataset Used:
- `diabetic_data.csv`

The dataset contains information related to:

### Patient Information
- Age
- Gender
- Race
- Admission Type
- Discharge Disposition
- Admission Source

### Clinical Information
- Diagnoses
- Procedures
- Lab Procedures
- Medications
- Emergency Visits
- Inpatient Visits
- Time in Hospital

### Readmission Information
- Readmission Status
- Payer Code
- Medication Changes

Each record represents a patient encounter. :contentReference[oaicite:5]{index=5}

---

## 🛠️ Tools & Technologies

- **Excel** – Data exploration and summaries
- **MySQL** – Data querying and business analysis
- **Python (Pandas, NumPy, Matplotlib, Seaborn)** – Exploratory Data Analysis
- **Tableau** – Dashboard development

---

## 📊 Excel Analysis

Excel was used for:

- Statistical summaries
- Readmission analysis by age and gender
- Race distribution analysis
- Readmission category analysis

Excel helped in understanding the dataset before advanced analysis. :contentReference[oaicite:6]{index=6}

---

## 🗄️ MySQL Analysis

The dataset was imported into MySQL for structured querying.

SQL analysis included:

- Total patient encounters
- Top diagnoses
- Average hospital stay
- Readmission percentages
- Age distribution
- Common procedures
- Medication analysis
- Readmission by payer code

SQL helped transform raw healthcare data into actionable insights. :contentReference[oaicite:7]{index=7}

---

## 🐍 Python Analysis (EDA)

Python was used for:

- Descriptive statistics
- Race and gender distributions
- Readmission analysis by age
- Correlation analysis
- Medication analysis
- Diagnoses categorization
- Admission and discharge analysis
- Outlier detection

Visualization techniques used:

- Bar Charts
- Histograms
- Box Plots
- Correlation Heatmaps
- Stacked Charts

EDA helped identify patterns and trends within healthcare data. :contentReference[oaicite:8]{index=8}

---

## 📈 Tableau Dashboard

Interactive Tableau dashboards were created to visualize:

- Readmission counts
- Diagnoses
- Emergency cases
- Age group analysis
- Medication usage
- Procedures
- Time in hospital
- Bubble charts for diagnoses and medications

The dashboard provides a visual understanding of patient characteristics and readmission trends. :contentReference[oaicite:9]{index=9}

---

## 🔍 Key Business Questions

- Which age groups have higher readmission rates?
- What are the most common diagnoses?
- Which procedures are performed most frequently?
- How long do patients stay in hospitals?
- How do medications vary by age group?
- What factors influence readmissions?
- Which patient segments require more attention?

---

## 📁 Repository Structure

```text
Healthcare-Analysis/
│
├── README.md
│
├── Dataset/
│   └── diabetic_data.csv
│
├── Excel/
│   └── Healthcare Analysis.xlsx
│
├── MySQL/
│   └── Healthcare Analysis.sql
│
├── Python/
│   └── Healthcare Analysis.ipynb
│
└── Tableau/
    ├── Healthcare Analysis.twbx
    └── Dashboard.png
```

---

## 💡 Business Impact

This analysis can help healthcare providers:

- Reduce patient readmissions
- Improve patient care
- Optimize treatment strategies
- Identify high-risk patients
- Support data-driven healthcare decisions

---

## 🧰 Skills Demonstrated

- Data Cleaning
- Data Analysis
- Excel
- MySQL
- SQL
- Python
- Pandas
- NumPy
- Data Visualization
- Tableau
- Exploratory Data Analysis
- Healthcare Analytics
- Dashboard Design

---

## 👩‍💻 Author

**Greeshma K.G.**

Data Analytics Portfolio Project
