# Contributing

## Source-of-truth

- Make application changes in the relevant `.apx` files.
- Treat `apex-exports/*.sql` as generated pre-import snapshots, not the maintained application source.
- Update the relevant documentation when a page, authorization rule, report definition, configuration dependency, or deployment prerequisite changes.

## Validation

Before proposing a change:

1. Validate the complete application directory with the APEXLang 26.2 validator:

   ```text
   apex validate -input "<path-to-enterprise-hr-management-system>"
   ```

2. For changes that affect SQL, forms, authentication, authorization, or integrations, import into a non-production APEX environment and exercise the affected flow.
3. Record what was validated and any environment or data assumptions in the pull request.

There is no application test suite or CI workflow in this source tree. Do not describe a change as runtime-tested unless it was exercised against a target APEX/database environment.

## Pull requests

- Keep changes focused and include the affected page IDs in the description.
- Describe data/query changes and permission changes explicitly.
- Include manual acceptance evidence for user-visible changes.
- Confirm that reporting labels match the values returned by their SQL sources.

## Sensitive and generated files

- Do not commit `deployments/*.json`, connection strings, passwords, API keys, private keys, employee data, or production exports.
- Do not commit generated `apex-exports/*.sql` snapshots unless a specific reviewed release process requires one.
- Provision APEX Web Credentials and workspace service credentials in the target environment; never put credential values in `.apx` files or documentation.
- Review repository history before publishing publicly. `.gitignore` prevents new additions of local deployment JSON and generated SQL snapshots; it does not remove files already tracked elsewhere.
