resource "aws_db_instance" "aurora_dev_qa" {
  allocated_storage                     = var.aws_db_instance_aurora_dev_qa_allocated_storage
  availability_zone                     = var.aws_db_instance_aurora_dev_qa_availability_zone
  backup_retention_period               = var.aws_db_instance_aurora_dev_qa_backup_retention_period
  backup_window                         = var.aws_db_instance_aurora_dev_qa_backup_window
  ca_cert_identifier                    = var.aws_db_instance_aurora_dev_qa_ca_cert_identifier
  db_name                               = var.aws_db_instance_aurora_dev_qa_db_name
  db_subnet_group_name                  = var.aws_db_instance_aurora_dev_qa_db_subnet_group_name
  delete_automated_backups              = var.aws_db_instance_aurora_dev_qa_delete_automated_backups
  enabled_cloudwatch_logs_exports       = var.aws_db_instance_aurora_dev_qa_enabled_cloudwatch_logs_exports
  engine                                = var.aws_db_instance_aurora_dev_qa_engine
  engine_version                        = var.aws_db_instance_aurora_dev_qa_engine_version
  identifier                            = var.aws_db_instance_aurora_dev_qa_identifier
  instance_class                        = var.aws_db_instance_aurora_dev_qa_instance_class
  kms_key_id                            = var.aws_db_instance_aurora_dev_qa_kms_key_id
  license_model                         = var.aws_db_instance_aurora_dev_qa_license_model
  maintenance_window                    = var.aws_db_instance_aurora_dev_qa_maintenance_window
  monitoring_interval                   = var.aws_db_instance_aurora_dev_qa_monitoring_interval
  monitoring_role_arn                   = var.aws_db_instance_aurora_dev_qa_monitoring_role_arn
  option_group_name                     = var.aws_db_instance_aurora_dev_qa_option_group_name
  parameter_group_name                  = var.aws_db_instance_aurora_dev_qa_parameter_group_name
  performance_insights_enabled          = var.aws_db_instance_aurora_dev_qa_performance_insights_enabled
  performance_insights_kms_key_id       = var.aws_db_instance_aurora_dev_qa_performance_insights_kms_key_id
  performance_insights_retention_period = var.aws_db_instance_aurora_dev_qa_performance_insights_retention_period
  port                                  = var.aws_db_instance_aurora_dev_qa_port
  publicly_accessible                   = var.aws_db_instance_aurora_dev_qa_publicly_accessible
  skip_final_snapshot                   = var.aws_db_instance_aurora_dev_qa_skip_final_snapshot
  storage_encrypted                     = var.aws_db_instance_aurora_dev_qa_storage_encrypted
  username                              = var.aws_db_instance_aurora_dev_qa_username
  vpc_security_group_ids                = var.aws_db_instance_aurora_dev_qa_vpc_security_group_ids
}