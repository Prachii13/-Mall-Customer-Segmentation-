
---

### 🔧 `cluster_analysis.py`
```python
import pandas as pd
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv("data/Mall_Customers.csv")

X = df[["Annual Income (k$)", "Spending Score (1-100)"]]

kmeans = KMeans(n_clusters=5)
df['Cluster'] = kmeans.fit_predict(X)

# Save clusters
df.to_csv("data/clustered_customers.csv", index=False)

# Plot
plt.figure(figsize=(8,5))
sns.scatterplot(data=df, x="Annual Income (k$)", y="Spending Score (1-100)", hue="Cluster", palette="Set1")
plt.title("Customer Segments")
plt.savefig("cluster_plot.png")
plt.show()
