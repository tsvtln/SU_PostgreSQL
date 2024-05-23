create type type_mood as enum('happy', 'relaxed', 'stressed', 'sad');
alter table minions_info
add column mood type_mood;