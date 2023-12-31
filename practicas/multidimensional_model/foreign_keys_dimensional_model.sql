ALTER TABLE dimension_plan_antivirus
ADD CONSTRAINT uq_id_antivirus UNIQUE (id_antivirus);

alter table sales_fact_table
   add constraint FK_PLAN_ANTIVIRUS foreign key (id_antivirus)
      references dimension_plan_antivirus (id_antivirus)
      on delete restrict on update restrict;
	  
ALTER TABLE dimension_customer
ADD CONSTRAINT uq_id_customer UNIQUE (id_customer);

alter table sales_fact_table
   add constraint FK_CUSTOMER foreign key (ID_CUSTOMER)
      references DIMENSION_CUSTOMER (id_customer)
      on delete restrict on update restrict;
	  
ALTER TABLE dimension_time
ADD CONSTRAINT uq_id_time UNIQUE (id_time);

alter table sales_fact_table
   add constraint FK_TIME foreign key (ID_TIME)
      references DIMENSION_TIME (id_time)
      on delete restrict on update restrict;
	  