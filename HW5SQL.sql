-- Пример создания представления с произвольным SELECT-запросом:
CREATE VIEW employee_info AS
SELECT employees.employee_id, employees.first_name, employees.last_name, departments.department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id;

/* Данный метод называется employee_info и содержит данные из двух таблиц: employees и departments. 
Он выбирает ID, имя и фамилию сотрудников, а также название их отдела, соответствующее department_id в таблице employees. 
Теперь можно использовать это представление вместо выполнения этого запроса каждый раз, 
когда необходимо получить информацию о сотрудниках и отделах.
*/

-- Чтобы вывести данные из созданного представления employee_info, можно использовать следующий запрос:
SELECT * FROM employee_info;
/* Запрос выведет все колонки из представления employee_info, 
которое мы создали в прошлом ответе, включая employee_id, first_name, 
last_name и department_name для каждого сотрудника. Как и в представлении, 
данные будут взяты из таблиц employees и departments, объединенных по department_id.
*/

-- Чтобы удалить представление employee_info, созданное в прошлых ответах, можно использовать следующий запрос:
DROP VIEW employee_info;
/* Запрос удаляет представление employee_info и все его связанные метаданные.
После выполнения этого запроса представление больше не будет доступно для использования в запросах.
Обратите внимание, что при удалении представления данные в его базовых таблицах не будут затронуты.
*/
