# AML-analysis-
AML analysis using the IBM AMLSim EXample Dataset from Kaggle 

# Question 1: Which accounts send the most money overall
## Query: see question1
### Insight: The top sending accounts have both high total transaction values and consistent transfer sizes. However, similar patterns across many accounts suggest that these metrics alone do not indicate suspicious behavior, but instead provide a baseline for identifying accounts of interest. 

# Question 2: Which accounts receive money from the highest number of unique senders? (possible mule accounts)
## Query: see question2
### Insight: certain accounts receive funds from a large number of unique senders. This indicates that these accounts act as central aggregation points within the transaction network, receiving funds from many different sources rather than a small set of regular partners
### Business Impact: Accounts that receive funds from many unique senders may represent aggegation or collection points which serve as intermediary roles in financial networks. Identifiyng these accounts is important for AML efforts, as they may be used to merge funds from multiple sources before further distribution. This allows financial institutions to prioritize monitoring and investigate money trails more effectively. 

# Question 3: Do they quickly send the money out? (Pass-through behavior)
## Query: see question3
### Insight: several accounts transfer large amount of the funds they receive, with some accounts sending amounts exceeding their total incoming funds. This pattern suggests that these accounts may act as intermediaries, moving money rather than retaining it. Such behavior is consistent with pass-trhough activity, where funds are quickly redistributed to other accounts
### Business Impact: Identifying accounts that rapidly transfer out received funds is important for AML efforts, as these accounts may be used to obscure the origin of funds. By flagging such accounts, financial institutions can prioritize investigation, monitor transaction flows more closely, and reduce risk of illicit money movement through the network.

# Question 4: Do they receive small amounts and send out large ones?
## Query: see question4
### Insight: The analysis shows that a large number of accounts receive small amounts and sending signigicantly larger amouunts, with some accounts sending over 100 times what they receive. This indicates that this behavior is common in the dataset and is likely part of the normal synthetic activity rather than and indication of suspicious behavior. It highlights the importance of considering overall patterns when identifying anomalies. 
### Business Impact: Using simple rules such as "avg outgoing > avg incoming" can lead to false assumptions if applied without context. In practice, it is essential that financial institutions adjust detection thresholds and consider normal trnasaction patterns to focus more on truly unusual accounts. This helps reduce wasted resources and ensures more effective monitoring of high-risk activity. 

# Question 5: Identify chains of transactions (money trail across 2-3 hops)
## Query; see question5 
### Insight: This chain analysis reveales that certain accounts act as hubs, with one account (A) consistently sending the same amount to a central intermediary account (B), which then redistributes the same amount to multiple recipient accounts (C). While this creates reocurring A --> B --> C chains, the uniformity and repetition reflect the synthetic nature of the dataset rather than actual suspicious behavior. 
### Business Impact: Understanding these patterns is important because it highlights the significance between normal or systematic transaction patterns and truly unusual activity. Even thogh no anomalies were found in this simulation, it demonstrates how money flow chains can be traced to identify intermediaries and distribution points.

# Question 6: Which accounts have an extreme amount of outgoing funds?
## Query: see question6
### Insight: Multiple detection approaches, including transaction thresholds, average amount comparisons, and transaction chain analysis, consistently returned a large number of accounts. The transaction behavior seems to be uniform with many accoutns following very similar patterns. Consequently, simple rule-based methods are not effective in isolation truly unusual activity within this dataset. 
### Business Impact: this is a key challenge in AML systems: poorly calibrated or too simple detection rules can generate a high number of false positives. In real-world scenarios, this would significantly reduce efficiency, More advanced techniques, such as behavioral profiling, network analysis, or machine learning models, are often required to effectively differentiate suspicous activity from normal patterns. 

# Question 7: Which accounts send more more than the average account?
## Query: see question7
### Insight: this analysis identified 1876 accounts with total outgoing transaction values above the average across all accounts. This indicates that a large proportion of accounts have a higher-than average transaction activity and suggests that the transaction volumes are distributed relatively evenly within the dataset, rather than being concetrated among a small number of accounts. 
### Business Impact Since a significant number of accounts exceeded the average, using a simple average bases threshold will not help identify anomalies. In real world scenarios, relying solely on average comparisons would lead to high volume of alerts, reducing investigation efficiency. 

# Question 8: Are high-value or above-average senders also generating alerts?
## Query: see question8
### Insight: among above average sending accounts, the highest number of distinct alerts per account is relatively low (maximum 4). This indicates that while high-volume accounts are active, they are not disproportionately flagges by the AML system. This suggests that the alerts are spread across multiple accounts rather than concentrated in a few high-volume accounts. 
### Business Impact: Since above average accounts do not generate a significantly higher number of alerts, transactioon volume alone is not a strong indicator of suspicious behavior in this case. High activity does not necesseraly imply high risk. Therefore, AML monitoring should not rely solely on volume-based thresholds. Instead, combining alerts with other behavioral indicatiors would improve the detection of high-risk accounts. 
