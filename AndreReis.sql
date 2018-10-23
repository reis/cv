SELECT name, phone, email, linkedin, github FROM personal_data;

/*-[ RECORD 1 ]----------------------------------------
 name     | ANDRÉ LEITE REIS
 phone    | +44 07482 101626
 email    | andre.reis@gmail.com
 linkedin | http://www.linkedin.com/in/andreleitereis
 github   | http://www.github.com/reis
 summary  | - BSc in Computer Science, having expertise in software development, data 
          | analysis and databases.
          | - 20+ years of professional experience in IT working in different industries, 
          | using different methodologies and technologies.
          | - Experienced in business operations like Billing, CRM, sales pipeline, 
          | contact center management, e-commerce, provisioning data center services, 
          | VoIP, telecommunications, higher education and research market.
*/

SELECT topic, description FROM skills;
/*        Topic                              Description
---+-----------------------+---------------------------------------------------
 1 | Operating Systems     | Linux (Arch, Debian, Ubuntu, CentOS, Fedora), 
   |                       | Windows and OSX;
 2 | Networks              | Internet suite, Sockets, APIs, Webservices;
 3 | Programming Languages | PHP, Python, Shell Script, Java, JavaScript;
 4 | Data Science          | SQL, PL/pgSQL, Python_ and _R_;
 5 | Virtualization        | VirtualBox, VMWare, Xen, Cloudstack, Docker, 
   |                       | Vagrant;
*/

SELECT company, start_date, end_date, location, position, summary,
array_agg(p.descriction) as projects
FROM jobs j 
JOIN responsabilities r ON j.id = r.job_id
JOIN projects p ON j.id = p.job_id
GROUP BY 1, 2, 3, 4
ORDER BY start_date DESC;

/*-[ RECORD 1 ]---------------------------------------------------------------------------------------------------
company    | Telium Networks - São Paulo
start_date | 2006-01-01
end_date   | NULL
position   | Sr Developer and Team Leader
respons    | { * Leadership of coding, testing and deploying process., 
           |   * Definition of development architectures, technology and work plans.,
           |   * PostgreSQL administration.,
           |   * Dimensioning and training team members.,
           |   * Scrum master.}
projects   | { - Control Panel for management services (versions in CodeIgniter and Laravel/Eloquent/Bootstrap).,
           |   - Sales Pipeline (Code Igniter, PL / SQL, Laravel/Eloquent).,
           |   - Sales activities control (CodeIgniter).,
           |   - Event System for Contact Center (Symfony/Doctrine/ExtJS).,
           |   - Automation of services lifecyle (PHP).,
           |   - Updates on Billing System (Mojavi, Code Igniter).,
           |   - Integration of Billing system with proprietary ERP Protheus.,
           |   - Dashboards, reports and alerts to the board.,
           |   - Several migration of database, web and e email servers.}
-[ RECORD 2 ]---------------------------------------------------------------------------------------------------
company    | Telium Networks - São Paulo
start_date | 2004-01-01
end_date   | 2006-01-01
position   | Senior Systems Analyst
respons    | { * Mapping business processes.,
           |   * Development an integrated corporate intranet systems for Latin America.,
           |   * Architecture design leadership and development of Billing System using PHP.}
-[ RECORD 3 ]---------------------------------------------------------------------------------------------------
company    | IFX Networks - São Paulo
start_date | 2000-01-01
end_date   | 2003-01-01
position   | Junior Developer  (Visual Basic, ASP, MSSQL, IIS)
respons    | { * Development and implementation of Corporate Intranet (PHP) and Trouble Ticket System, workflow for Network Operations Center.,
           |   * Billing system maintenance, creating new processes to improve the collection activity.,
           |   * Management of database servers: Oracle, PostgreSQL and MS SQL.}                      
-[ RECORD 4 ]---------------------------------------------------------------------------------------------------
company    | Conex ISP - Porto Alegre
start_date | 2004-01-01
end_date   | 2006-01-01
position   | Intern
respons    | { * Administration of webhosting and database servers  (Microsoft IIS and MS SQL Server),
           |   * Leadership on system development of webtools using ASP.}
*/

SELECT start, end, name, institution, city  FROM main_education;
/*
   start   |   end    |     name      | institution | city
-----------+----------+---------------+-------------+---------------------------------------------------
2006       | 2006     | COBIT and ITIL classes            | USP/IPT                     | São Paulo
2001       | 2004     | Bachelor of Computer Science      | Universidade Paulista       | São Paulo
2000       | 2000     | Bachelorg of Informatics          | PUC-RS                      | Porto Alegre
1997       | 1998     | Technical expertise in Networking | UFRGS                       | Porto Alegre
1992       | 1996     | Data Processing Technician        | Escola Técnica Santo Inácio | Porto Alegre
*/

SELECT year, name, institution, city  FROM other_education;
/* 
 year     |                  name                 | institution | city
----------+---------------------------------------+-------------+---------------
 2009     | ITIL Foundations                      | ITXL        | São Paulo
 2009     | Training course PMP-PMI               | Euax        | São Paulo
 2008     | Agile Software Development Laboratory | IME-USP     | São Paulo
 2007     | RejectCode Ruby on Rails              | IME-USP     | São Paulo
 2003     | Java Course monitoring                | UNIP        | São Paulo
 1999     | MS SQL Server Administrator           | Microsoft   | Porto Alegre
 */

SELECT language FROM languages;
/*
 language
----------------------------------------------------------------------- 
Native Portuguese
Fluent English (Certified by University of Cambridge - FCE Certificate)
Basic Spanish
*/


SELECT location, description FROM jobs WHERE volunteer IS TRUE;
/*
     location        |                                     description
---------------------+------------------------------------------------------------------------------------------------------------------     
Israel and Palestine | Gardening, sports lessons and recreation activities for children in summer camps.
Ireland              | Sports lessons and recreation activities for children in a community center.
Cananéia, Brazil     | Logistic support for medical assistance and sports lessons and recreation activities for children in risky areas.
*/



