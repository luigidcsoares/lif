#!/usr/bin/env python3

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns

sns.set()
data = pd.read_csv("time.csv", skipinitialspace=True)

# CSV data is in nanoseconds, so we first transform it to microseconds:
data["Median"] = data["Median"] / 1000

# First: plot running time (median):
# Measure 1: a[i] == b[i]
measure1 = data[
    (data["Src"] == "measure1") &
    ((data["Type"] == "orig") | (data["Type"] == "isochr"))
]
measure1_opt = data[
    (data["Src"] == "measure1") &
    ((data["Type"] == "orig-opt") | (data["Type"] == "isochr-opt"))
]

# Measure 2: a[0] != b[0]
measure2 = data[
    (data["Src"] == "measure2") &
    ((data["Type"] == "orig") | (data["Type"] == "isochr"))
]
measure2_opt = data[
    (data["Src"] == "measure2") &
    ((data["Type"] == "orig-opt") | (data["Type"] == "isochr-opt"))
]

fig = plt.figure()
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212)

sns.scatterplot(
    x="N", y="Median", hue="Type",
    style="Type", data=measure1, ax=ax1
)

sns.scatterplot(
    x="N", y="Median", hue="Type",
    style="Type", data=measure1_opt, ax=ax2
)

# Set axis range:
step = 128
ax1.set(xlim=(0, 1024 + step/4), xticks=np.arange(0, 1024 + step, step))
ax2.set(xlim=(0, 1024 + step/4), xticks=np.arange(0, 1024 + step, step))
ax2.set(ylim=(1.1, 1.35), yticks=(1.15, 1.20, 1.25, 1.30))

# Hide axis labels (and xticks for the first plot):
ax1.set(xticks=[])
ax1.xaxis.label.set_visible(False)
ax1.yaxis.label.set_visible(False)
ax2.xaxis.label.set_visible(False)
ax2.yaxis.label.set_visible(False)

# Add common labels:
fig.text(0.5, 0.02, "# of cells of input arrays", ha="center", va="center")
fig.text(
    0.03, 0.5, "Median running time of 1,000 samples (μs)",
    ha="center", va="center", rotation="vertical"
)

# Move both legends to the same position:
ax1.legend(loc="upper left")
ax2.legend(loc="upper left")

# Finally, save the figure:
fig.savefig("time1.jpg", bbox_inches="tight")

# Now we repeat for the measure2 (a[0] != b[0]).
ax1.clear()
ax2.clear()

sns.scatterplot(
    x="N", y="Median", hue="Type",
    style="Type", data=measure2, ax=ax1
)

sns.scatterplot(
    x="N", y="Median", hue="Type",
    style="Type", data=measure2_opt, ax=ax2
)

ax1.set(xlim=(0, 1024 + step/4), xticks=np.arange(0, 1024 + step, step))
ax2.set(xlim=(0, 1024 + step/4), xticks=np.arange(0, 1024 + step, step))
ax2.set(ylim=(1.1, 1.35), yticks=(1.15, 1.20, 1.25, 1.30))
ax1.set(xticks=[])
ax1.xaxis.label.set_visible(False)
ax1.yaxis.label.set_visible(False)
ax2.xaxis.label.set_visible(False)
ax2.yaxis.label.set_visible(False)
ax1.legend(loc="upper left")
ax2.legend(loc="upper left")
fig.savefig("time2.jpg", bbox_inches="tight")

# Now, we plot the program size (in terms of llvm-ir instructions).
# In this case, the size is the same regardless of the inputs, so we only
# plot for measure1.
data = pd.read_csv("size.csv", skipinitialspace=True)
measure1 = data[
    (data["Src"] == "measure1") &
    ((data["Type"] == "orig") | (data["Type"] == "isochr"))
]
measure1_opt = data[
    (data["Src"] == "measure1") &
    ((data["Type"] == "orig-opt") | (data["Type"] == "isochr-opt"))
]

fig = plt.figure()
ax1 = fig.add_subplot(211)
ax2 = fig.add_subplot(212)

# Add common labels:
fig.text(0.5, 0.02, "# of cells of input arrays", ha="center", va="center")
fig.text(
    0.03, 0.5, "# of LLVM-IR instructions",
    ha="center", va="center", rotation="vertical"
)

sns.scatterplot(
    x="N", y="#LLVM-IR Instructions", hue="Type",
    style="Type", data=measure1, ax=ax1
)

sns.scatterplot(
    x="N", y="#LLVM-IR Instructions", hue="Type",
    style="Type", data=measure1_opt, ax=ax2
)

ax1.set(xlim=(0, 1024 + step/4), xticks=np.arange(0, 1024 + step, step))
ax2.set(xlim=(0, 1024 + step/4), xticks=np.arange(0, 1024 + step, step))
ax1.set_yscale("log", base=2)
ax2.set_yscale("log", base=2)
ax2.set(ylim=ax1.get_ylim())
ax1.set(xticks=[])
ax1.xaxis.label.set_visible(False)
ax1.yaxis.label.set_visible(False)
ax2.xaxis.label.set_visible(False)
ax2.yaxis.label.set_visible(False)
ax1.legend(loc="lower right")
ax2.legend(loc="lower right")
fig.savefig("size.jpg", bbox_inches="tight")
