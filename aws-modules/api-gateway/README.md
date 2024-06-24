<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_deployment.deployment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment) | resource |
| [aws_api_gateway_integration.read_integration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration) | resource |
| [aws_api_gateway_integration.write_integration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration) | resource |
| [aws_api_gateway_method.read_method](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method) | resource |
| [aws_api_gateway_method.write_method](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method) | resource |
| [aws_api_gateway_resource.read_resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_resource) | resource |
| [aws_api_gateway_resource.write_resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_resource) | resource |
| [aws_api_gateway_rest_api.api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api) | resource |
| [aws_lambda_permission.read_permission](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |
| [aws_lambda_permission.write_permission](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_rlambda_invoke_arn"></a> [rlambda\_invoke\_arn](#input\_rlambda\_invoke\_arn) | read invoke arn | `string` | n/a | yes |
| <a name="input_rlambda_name"></a> [rlambda\_name](#input\_rlambda\_name) | read lambda name | `string` | n/a | yes |
| <a name="input_wlambda_invoke_arn"></a> [wlambda\_invoke\_arn](#input\_wlambda\_invoke\_arn) | write invoke arn | `string` | n/a | yes |
| <a name="input_wlambda_name"></a> [wlambda\_name](#input\_wlambda\_name) | write lambda name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_invoke_endpoint"></a> [invoke\_endpoint](#output\_invoke\_endpoint) | description |
<!-- END_TF_DOCS -->