

select DISTINCT (SUBSTR(content, INSTR(content, '@') + 1)) AS domain_name
FROM ElectronicMail
ORDER BY domain_name;