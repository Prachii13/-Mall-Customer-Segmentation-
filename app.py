import streamlit as st
import pandas as pd
import plotly.express as px

st.title("🛍️ Mall Customer Segmentation")

df = pd.read_csv("data/clustered_customers.csv")

fig = px.scatter(df, x="Annual Income (k$)", y="Spending Score (1-100)",
                 color="Cluster", hover_data=["CustomerID", "Age", "Gender"])
st.plotly_chart(fig)
