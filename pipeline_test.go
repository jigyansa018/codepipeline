func TestTerraformPipeline(t *testing.T) {
	terraformOptions := &terraform.Options{
		TerraformDir: "../",

		Vars: map[string]interface{}{
			"env": "dev",
		},
	}

	defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)

	// Check if pipeline exists
	pipelineName := terraform.Output(t, terraformOptions, "pipeline_name")
	assert.NotEmpty(t, pipelineName)
}
