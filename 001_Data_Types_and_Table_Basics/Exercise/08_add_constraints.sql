alter table minions_info
	add constraint unique_containt unique (id, email),
	add constraint banana_check check (banana > 0);