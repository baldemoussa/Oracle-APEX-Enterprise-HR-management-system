# Deployment Runbook

## Prerequisites

1. An Oracle APEX 26.2-compatible target environment. The source declares APEXLang model version `26.2.0+3479`.
2. An Oracle Database parsing schema with the HR tables and `EMP_DETAILS_VIEW` listed in the [data model](data-model.md).
3. APEX/SQLcl tooling capable of importing an APEXLang application directory.
4. A target APEX workspace, application owner, approved application ID/alias, and an Administrator account plan.
5. Optional workspace Web Credentials for Gemini and push notifications if those integrations are to be enabled.

Employee salary report columns, the Page 13 compensation card, and the employee form's salary/commission fields are Administrator-only in the UI. Commission report columns and job salary ranges are not role-restricted in the current source. Obtain data-owner approval or apply the approved restriction before production. Confirm database grants, views, exports, and integrations enforce the policy too. For SSO, configure the approved identity provider in the target APEX environment; the source currently uses APEX Accounts.

No schema installation, data seeding, or migration scripts are included. Prepare these separately through the client's approved database process.

## Pre-deployment

- Confirm target APEX/Database compatibility and required object grants.
- Review `application.apx`, `shared-components/`, and `workspace-components/` against the target environment.
- Provision the target workspace Web Credentials referenced by the application. Store API keys and private keys in APEX credential management; never put their values in the source tree.
- Confirm that the target app ID and existing application replacement/upgrade behavior are intentional.
- Back up the target database and export the current APEX application before replacement.
- Do not use `deployments/default.json` as a portable client configuration. It is environment-specific and is excluded from Git.

## Validate

Validation uses SQLcl without connecting to a database:

```text
apex validate -input "<path-to-enterprise-hr-management-system>"
```

The validator must report successful validation. Review all warnings/errors; do not rely only on the process exit code if using an older SQLcl wrapper.

## Import

In SQLcl, connect to the target database using the client's approved secure connection method, then import the application directory:

```text
apex import -input "<path-to-enterprise-hr-management-system>"
```

The installed deployment helper, when used, accepts an application directory and requires `SQLCL_BIN` and `SQLCL_CONNECTION_STRING`. Keep those values in a protected local environment or secret manager, not in the repository or shell history. Run imports first in a non-production environment and follow the client's normal change approval process.

## Post-import checks

1. Sign in as a provisioned application user and verify ACL behavior.
2. Confirm report and form access to HR objects; smoke-test the CRUD pages using approved test data.
3. Verify Employee Directory facets, Department Teams selection and both card regions, Page 1 charts and maps, and Office Map polygon counts.
4. Reconcile department/job counts and career-history rows by year against the report definitions and confirm labels before sign-off.
5. Test administration reports and user-management pages as an Administrator.
6. If enabled, test Gemini service availability and push subscription on a supported HTTPS/browser environment.
7. Record application version/export, target URL, import date, validation result, and acceptance evidence in the client release record.

## Rollback

If import or post-import checks fail, follow the client's APEX application restore and database recovery process. `apex-exports/` contains generated pre-import SQL snapshots, not HR data backups; use the approved database backup for data recovery.
