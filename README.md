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
