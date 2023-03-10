module "stdout_test" {
  source = "matti/resource/shell"
  command = "echo $USER | cut -c1-3"
}

output "stdout_test" {
  value = module.stdout_test.stdout
}