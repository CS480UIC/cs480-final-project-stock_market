SELECT * FROM stock_market.location
WHERE zip = 60111; 

SELECT * FROM stock_market.current_stock_info
WHERE open_price > 200;

SELECT * FROM stock_market.fundamental_analysis
WHERE dividend > 2.5;


USE stock_market;
SELECT fundamental_analysis.net_income, fundamental_analysis.balance_sheet, current_stock_info.name_stock, current_stock_info.open_price
FROM fundamental_analysis RIGHT OUTER JOIN current_stock_info
ON fundamental_analysis.CurrKey = current_stock_info.CurrKey;
