create table if not exists url_status (
    url             text    primary key,
    is_ok           boolean,
    http_status     smallint,
    last_checked    timestamp without time zone
);


ALTER TABLE url_status SET (autovacuum_vacuum_scale_factor = 0.001);
ALTER TABLE url_status SET (autovacuum_vacuum_threshold = 10000);
ALTER TABLE url_status SET (autovacuum_analyze_scale_factor = 0.001);
ALTER TABLE url_status SET (autovacuum_analyze_threshold = 10000);
ALTER TABLE url_status SET (autovacuum_vacuum_cost_limit = 10000);
ALTER TABLE url_status SET (log_autovacuum_min_duration=0);