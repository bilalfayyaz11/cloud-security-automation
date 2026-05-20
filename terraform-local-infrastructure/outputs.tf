output "generated_vagrantfile" {
  value = local_file.vagrantfile.filename
}

output "vm_private_ip" {
  value = "192.168.56.20"
}

output "validation_url" {
  value = "http://192.168.56.20"
}
