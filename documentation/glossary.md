
# Entity:

Entity Name: technical_analysis  
Synonyms: occurrence, situation
Description: A technical aspect of stock which can fluctuate the price of a specific/multiple stocks in specific time frame.
Dependent on accounts enitity.
As for super/sub types - none of them exist in this scenario

Entity Name: current_stock_info  
Synonyms: stock_info
Description: Any information that is related to a specific stock. Can be regarded as the details about a given stock.
Independent, as stock values are not affected by any entities given here.
As for super/sub types - none of them exist in this scenario

Entity Name: fundamantal_analysis  
Synonyms: study, review  
Description: It regards to things related to specific monetary aspects of a company such as balance sheets, profit & loss and net income.
Dependent on current stock info as the analysis is dependent on a particular information of stock.
As for super/sub types - none of them exist in this scenario

Entity Name: brokerage
Synonyms: N/A  
Description: It is the "middleman" for any stock transaction to happen.
Dependent on account, as account information is required for trading.
As for super/sub types - none of them exist in this scenario

Entity Name: account  
Synonyms: portfolio   
Description: A trade account that a given user buys and sells their shares through.
Independent entity, as the values are of users
As for super/sub types - none of them exist in this scenario

Entity Name: login  
Synonyms: sign-in, credentials  
Description: Login is the username and password for any user that lets them in their account to then carry out transactions.
Independent entity.
As for super/sub types - none of them exist in this scenario

# Relationship:
trade M(M)    
has M(M)   
contains M(M)   

# Attribute:
time 1(1)      
earning 1(1)   
news M(1)    
trend 1(1)   
date 1(1)    
highest 1(1)   
lowest 1(1)   
open_price 1(1)    
current_price 1(1)   
name 1(1)   
stock_tickle 1(1)    
charge M(M)    
trade_id 1(1)    
name 1(M)   
account_number 1(1)    
balance 1(1)    
id 1(1)   
password 1(1)    
email 1(1)    
roi 1(1)    
pe 1(1)   
net_income 1(1)   
balance_sheet 1(1)    
eps 1(1)   
dividend_history 1(1)   
profit_statement 1(1)    
id 1(1)   
price 1(M)  
number 1(M)  
date 1(1)  


