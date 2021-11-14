DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `avgopen_price`(OUT AVGopenprice INT UNSIGNED)
BEGIN
	SELECT AVG(open_price)
    INTO AVGopenprice
    FROM current_stock_info;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MINopen_price`(OUT MINopenprice INT UNSIGNED)
BEGIN
	SELECT MIN(open_price)
    INTO MINopenprice
    FROM current_stock_info;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `open_price`(OUT openprice INT UNSIGNED)
SELECT MAX(open_price)
    INTO openprice
    FROM current_stock_info$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `avgopen_price`() RETURNS int
    READS SQL DATA
BEGIN
	DECLARE avgopen_price INT;
    
    SELECT AVG(open_price)
    INTO avgopen_price
    FROM current_stock_info;
    
    
RETURN avgopen_price;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `maxopen_price`() RETURNS int
    READS SQL DATA
BEGIN
	DECLARE maxopen_price INT;
    
    SELECT MAX(open_price)
    INTO maxopen_price
    FROM current_stock_info;
    
    
RETURN maxopen_price;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `minopen_price`() RETURNS int
    READS SQL DATA
BEGIN
	DECLARE minopen_price INT;
    
    SELECT MIN(open_price)
    INTO minopen_price
    FROM current_stock_info;
    
    
RETURN minopen_price;
END$$
DELIMITER ;
