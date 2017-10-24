
 /* hang out list 프로시저 삭제 */
DROP PROCEDURE p_insert_hangout_info;
 /* hang out list 프로시저 시작  */
DELIMITER $$
CREATE PROCEDURE p_insert_hangout_info(IN loop_cnt int(1))
BEGIN
 DECLARE i INT DEFAULT 0;
 /* 만약 SQL에러라면 ROLLBACK 처리한다. */
 DECLARE exit handler for SQLEXCEPTION
   BEGIN
  ROLLBACK;        
 END;
 /* 트랜젝션 시작 */
 START TRANSACTION;
 WHILE (i <= loop_cnt) DO
        INSERT INTO hangout_info(
      hangoutcreator,
      hangoutname,
      hangoutcontent, 
      hangoutarea, 
      hangoutopendate,  
      hangoutclosedate, 
      hangoutdate,
      hangoutcategory,
      hangouttag)
        VALUES (1, concat('test', i), concat('test', i),concat('test', i), DATE_FORMAT(NOW(),'%Y%m%d'),DATE_FORMAT(NOW(),'%Y%m%d'),DATE_FORMAT(NOW(),'%Y%m%d'),concat('test', i),concat('test', i));        SET i = i + 1;
    END WHILE;
 /* 커밋 */
 COMMIT;
END
$$
delimiter ;
call p_insert_hangout_info(1000);
 /* hang out list 프로시저 끝 */

 /* user_info 테이블 생성 시작 */
CREATE	CREATE	user_info	CREATE TABLE `user_info` (
   `usernum` INT(11) NOT NULL AUTO_INCREMENT,
   `username` VARCHAR(30) NOT NULL,
   `userid` VARCHAR(30) NOT NULL,
   `userpwd` VARCHAR(30) NOT NULL,
   `useremail` VARCHAR(30) NOT NULL,
   `userphone` varchar(13) NOT NULL,
   `usergender` CHAR(2) NOT NULL,
   `userCountry` VARCHAR(30) NOT NULL,
   PRIMARY KEY (`usernum`)
);
 /* user_info 테이블 생성 끝 */

 /* hangout_info 테이블 생성 시작 */
CREATE	CREATE	hangout_info	CREATE TABLE `hangout_info` (
 `hangoutnum` INT(11) NOT NULL AUTO_INCREMENT,
 `hangoutcreator` INT(11) NOT NULL,
 `hangoutname` VARCHAR(30) NOT NULL,
 `hangoutcontent` TEXT NOT NULL,
 `hangoutarea` VARCHAR(50) NOT NULL,
 `hangoutopendate` VARCHAR(15) NOT NULL,
 `hangoutclosedate` VARCHAR(15) NOT NULL,
 `hangoutdate` VARCHAR(15) NOT NULL,
 `hangoutcategory` VARCHAR(30) NOT NULL,
 `hangouttag` VARCHAR(30) NOT NULL,
 PRIMARY KEY (`hangoutnum`)
);
/* hangout_info 테이블 생성 끝 */

