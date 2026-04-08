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

