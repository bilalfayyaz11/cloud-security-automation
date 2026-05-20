package cloud.deployments

import rego.v1

deny contains reason if {
    not input.resource.tags.environment
    reason := "Missing required tag: environment"
}

deny contains reason if {
    not input.resource.tags.owner
    reason := "Missing required tag: owner"
}
