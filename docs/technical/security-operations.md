# Security and Operations

## Authentication and authorization

- Authentication is configured for Oracle APEX Accounts. An external SSO provider is not configured in this application source.
- The default application access scope is `ACL_ONLY`. An authenticated user must have an application ACL role unless an Administrator changes the scope to `ALL_USERS`.
- Readers can view reports. Contributors and Administrators can perform supported HR create/update/delete operations. Administration pages require the Administrator role.
- Compensation-related UI access in the current source is:

  | Data and screen | Current UI authorization |
  |---|---|
  | Employee salary columns in Employee Directory and Centralized Directory | Administrator-only |
  | Employee salary and commission fields on Employee form | Administrator-only |
  | Employee Details compensation card (salary and commission) | Administrator-only |
  | Commission percent columns in Employee Directory and Centralized Directory | Available to report users |
  | Minimum/maximum salary columns on Job Roles and fields on Job form | Available to users with report/form access |

  The data owner should approve or change this policy before production. These are APEX UI controls; enforce the approved policy at the database/view/export boundary too.
- Provision at least one tested Administrator before enforcing ACL-only access. Keep administrative access limited and periodically review role assignments.
- Oracle APEX Accounts users must also be provisioned as workspace end users; workspace administrators manage those identities and passwords.

## Credential and integration handling

- Gemini uses a workspace APEX Web Credential reference for the Google API key. The credential value must be entered and protected in the target workspace.
- PWA push notifications use a separate credential reference. Confirm key-pair setup, HTTPS, browser support, and device permission before enabling the feature for users.
- Do not commit passwords, API keys, private keys, SQLcl connection strings, deployment metadata, or production HR data.
- The Office Map uses a built-in OpenStreetMap Positron background; verify required browser access to the configured map background in the client network.

## HR data protection

The application displays employee personal/contact information and compensation data. The Page 13 employee profile and office map are read-only; the edit action routes through the existing Contributor-authorized Page 3 form. Salary and commission on Page 13 are queried in a separate Administrator-authorized region. Use least privilege for parsing-schema grants, enforce role-based page access, use HTTPS, and avoid using identifiable production records in non-production environments unless explicitly approved. Follow the client's privacy, retention, and audit requirements.

## Monitoring

Administrator-only pages expose APEX activity, page views, performance, errors, automation executions, and automation messages. These views are useful for triage but may contain usernames and error details. Restrict access to support staff and use the database/APEX platform's approved retention and purge settings.

Operational checks:

- Review application errors and recent activity after a release.
- Confirm user role membership and account lock state when access is denied.
- Check database object availability and grants when reports or forms fail.
- Confirm optional credential validity and browser/network access when Gemini or push/map features fail.
- Capture application export and database backup before upgrades; keep them separate from client-facing documents and public source control.

## GitHub handling

`.gitignore` excludes local `deployments/*.json` and generated `apex-exports/*.sql` files. This does not remove files already tracked in another repository or erase them from Git history. Before publication, inspect the index and history and rotate any credential or salt that may have been exposed.
