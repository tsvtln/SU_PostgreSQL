CREATE TABLE employees_projects(
	id SERIAL PRIMARY KEY,
	employee_id INTEGER,
	project_id INTEGER,

	FOREIGN KEY(employee_id) REFERENCES employees(id),
	FOREIGN KEY(project_id) REFERENCES projects(id)
);