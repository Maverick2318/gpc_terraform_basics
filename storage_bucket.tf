resource "google_storage_bucket" "tf" {
  name          = "terraform-bucket-nsiddiq"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
  uniform_bucket_level_access = false
}

resource "google_storage_bucket_object" "picture" {
  name   = "gcplogo"
  source = "gcplogo.jpg"
  bucket = "${google_storage_bucket.tf.name}"
}