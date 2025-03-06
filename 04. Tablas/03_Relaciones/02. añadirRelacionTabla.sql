ALTER TABLE users
ADD company_id int,

ADD CONSTRAINT fk_company_id
FOREIGN KEY(company_id) REFERENCES companies(company_id);
