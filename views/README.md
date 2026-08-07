# SQL Views

This directory contains reusable SQL views created for analytics and machine learning.

## Analytics Views

These views summarize competition performance and simplify reporting.

Included views:

- current_team_standings
- team_performance_summary
- match_team_stats_wide
- match_features_raw

## Machine Learning Views

These views generate engineered features used by the prediction models.

Included views:

- team_historical_performance
- ml_match_features
- ml_training_data
- ml_prediction_data

## Purpose

Using SQL views separates feature engineering from model training, making the pipeline easier to maintain and reproduce.
