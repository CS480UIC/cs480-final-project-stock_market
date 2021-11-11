CREATE DATABASE stock_market;

USE stock_market;

CREATE TABLE current_stock_info (
    CurrKey TINYINT,
    open_price VARCHAR(50) UNIQUE,
    name_stock VARCHAR(30),
    todaydate VARCHAR(30),
    stock_tickle VARCHAR(30) NOT NULL,
    PRIMARY KEY (CurrKey)
    -- FOREIGN KEY (CurrKey) REFERENCES name_stock(CurrKey)
);
-- INSERT INTO cuurent_stock_info (CurrKey, open_price, name_stock, todaydate, stock_tickle) VALUES
-- (CurrKey, '146', 'Apple', '10/18','AAPL'),
-- (CurrKey, '220', 'Nvidia', '10/18','NVDA'),
-- (CurrKey, '3300', 'Amazon', '10/18','AMZN'),
-- (CurrKey, '880', 'Tesla', '10/18','TESL'),
-- (CurrKey, '330', 'Facebook', '10/18','FB');

CREATE TABLE technical_analysis (
    TechKey TINYINT,
    earning VARCHAR(50) NOT NULL,
    news VARCHAR(30),
    trend VARCHAR(30),
    CurrKey TINYINT,
    PRIMARY KEY (TechKey)
);
-- INSERT INTO technical_analysis (TechKey, earning, news, trend) VALUES
-- (TechKey, 'good', 'cnbc', 'uptrend');

CREATE TABLE fundamental_analysis (
    FundKey TINYINT,
    roi VARCHAR(50),
    net_income VARCHAR(30),
    balance_sheet VARCHAR(30),
    dividend VARCHAR(30) NOT NULL,
    CurrKey TINYINT,
    PRIMARY KEY (FundKey)
);
show tables;
describe current_stock_info;
-- INSERT INTO fundamental_analysis (FundKey, roi, net_income, balance_sheet, dividend) VALUES
-- (FundKey, '10.0', '100M', 'good', '0.16');

CREATE TABLE accounts (
    AccountKey TINYINT,
    name_of_account VARCHAR(50) NOT NULL,
    account_number VARCHAR(30) UNIQUE,
    balance VARCHAR(30),
    CurrKey TINYINT,
    PRIMARY KEY (AccountKey)
);
-- -- INSERT INTO AccountKey (AccountKey, name_of_account, account_number, balance) VALUES
-- -- (AccountKey, 'Meet Shah', 'xxxxx6969', '10M');

CREATE TABLE brokerage (
    BrokerageKey TINYINT,
    brokerage_name VARCHAR(50) UNIQUE,
    charges VARCHAR(50) NOT NULL,
    trade_id VARCHAR(30),
    AccountKey TINYINT,
    PRIMARY KEY (BrokerageKey)
);
-- INSERT INTO brokerage (BrokerageKey, brokerage_name, charges, trade_id) VALUES
-- (BrokerageKey, 'ROBINHOOD', '2', 'xxxxxxx2234');

CREATE TABLE login (
    username VARCHAR(50),
    login_password VARCHAR(30) UNIQUE, 
    email VARCHAR(30) NOT NULL,
    PRIMARY KEY (username)
);
-- INSERT INTO login (LoginKey, id, login_password, email) VALUES
-- (LoginKey, 'stock_market', 'stock_market6969', 'stock_market123@gmail.com');


CREATE TABLE location (
	locationKey TINYINT,
    state VARCHAR(50),
    city VARCHAR(50),
    street VARCHAR(30),
    zip VARCHAR(30),
    AccountKey TINYINT,
    PRIMARY KEY (locationKey)
);


ALTER TABLE technical_analysis
ADD FOREIGN KEY(CurrKey) REFERENCES current_stock_info(CurrKey);

ALTER TABLE fundamental_analysis
ADD FOREIGN KEY(CurrKey) REFERENCES current_stock_info (CurrKey);

ALTER TABLE accounts
ADD FOREIGN KEY(CurrKey) REFERENCES current_stock_info(CurrKey);

ALTER TABLE brokerage
ADD FOREIGN KEY(AccountKey) REFERENCES accounts(AccountKey);

ALTER TABLE location
ADD FOREIGN KEY(AccountKey) REFERENCES accounts(AccountKey);


INSERT INTO login VALUES
('alexalex', 'alex333664', 'alexalex33@gmail.com'),
('djaiswal', 'Project444', 'dhru123@gmail.com'),
('dhyeyp', 'dhyeyp33646', 'dhyeypd@gmail.com'),
('mshah', 'chicagoland11', 'msh@gmail.com'),
('hp', 'happy332', 'hp@gmail.com');


INSERT INTO current_stock_info VALUES
('1','120','Apple',	'10/18','APPL'),
('2','234','Roku',	'10/18','ROKU'),
('3','220','Nvidia', '10/18','NVDA'),
('4','3300','Amazon','10/18','AMZN'),
('5','330','Facebook','10/18','FB');


INSERT INTO technical_analysis VALUES
('21','Good','Positive','up','1'),
('22','Good','Positive','up','3'),
('23','Average','Negative','down','3'),
('24','Average','Negative','down','4'),
('25','Bad','Negative','sideways','5');


INSERT INTO fundamental_analysis VALUES
('11', '10', '100M'	, '300M', '1.2', '1'),
('12', '12', '250M'	, '840M', '2.4', '2'),
('13', '14', '4500M', '12000M', '2.1', '4'),
('14', '16', '3200M', '4500M', '3.6', '4'),
('15', '15', '840M'	, '2300M', '2.8', '2');


-- INSERT INTO brokerage VALUES
-- ('41','Robinhood','0.2','123456789','31');