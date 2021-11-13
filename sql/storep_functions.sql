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
