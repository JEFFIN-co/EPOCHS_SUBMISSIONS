# Hotel Booking Demand - Dataset Exploration & Problem Framing

## Dataset Overview

This dataset contains hotel booking information for both a city hotel and a resort hotel. It includes booking dates, customer demographics, stay duration, cancellation status, special requests, room types, and many other booking-related attributes.

Dataset Source:
https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand

---

## Business Problems

### Problem 1: Predict Booking Cancellation
Hotels lose revenue when customers cancel at the last minute. Predicting cancellations helps hotels:
- Improve revenue management
- Optimize room allocation
- Reduce overbooking losses
- Offer targeted promotions

### Problem 2: Predict Customer Type
Hotels can classify customers based on booking behavior to improve marketing strategies.

### Problem 3: Customer Segmentation
Group customers based on booking patterns for personalized offers and loyalty programs.

---

## Machine Learning Problem Framing

### Primary ML Problem

**Classification**

Reason:
The target variable `is_canceled` contains two classes:
- 0 → Booking not cancelled
- 1 → Booking cancelled

The model predicts whether a booking will be cancelled.

---

## Target Variable

```
is_canceled
```

---

## Key Features

Some important features include:

- hotel
- lead_time
- arrival_date_month
- stays_in_weekend_nights
- stays_in_week_nights
- adults
- children
- babies
- meal
- country
- market_segment
- distribution_channel
- previous_cancellations
- previous_bookings_not_canceled
- reserved_room_type
- assigned_room_type
- booking_changes
- deposit_type
- customer_type
- adr
- total_of_special_requests

---

## Basic Dataset Exploration

Performed using Pandas:

- Dataset Shape
- Data Types
- Missing Values
- Summary Statistics

---

## Three Key Observations

### Observation 1

The dataset contains both numerical and categorical features, making it suitable for various ML algorithms after preprocessing.

### Observation 2

Several columns such as `company`, `agent`, and `country` contain missing values and require handling before model training.

### Observation 3

The dataset includes historical customer behavior (previous cancellations, booking changes, special requests), which can significantly improve cancellation prediction accuracy.

---

## Conclusion

This dataset is highly suitable for solving hotel revenue management problems using Classification techniques. Predicting booking cancellations can help hotels reduce revenue loss and improve operational efficiency.
