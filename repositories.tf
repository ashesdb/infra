resource "github_repository" "ashesdb" {
  name       = "ashesdb"
  visibility = "public"

  allow_merge_commit = true
  allow_rebase_merge = false
  allow_squash_merge = false

  delete_branch_on_merge = true

  has_discussions = false
  has_downloads   = false
  has_issues      = false
  has_projects    = false
  has_wiki        = false
}

resource "github_repository" "data" {
  name       = "data"
  visibility = "public"

  allow_merge_commit = true
  allow_rebase_merge = false
  allow_squash_merge = false

  delete_branch_on_merge = true

  has_discussions = false
  has_downloads   = false
  has_issues      = false
  has_projects    = false
  has_wiki        = false
}

resource "github_repository" "infra" {
  name       = "infra"
  visibility = "public"

  allow_merge_commit = true
  allow_rebase_merge = false
  allow_squash_merge = false

  delete_branch_on_merge = true

  has_discussions = false
  has_downloads   = false
  has_issues      = false
  has_projects    = false
  has_wiki        = false
}
