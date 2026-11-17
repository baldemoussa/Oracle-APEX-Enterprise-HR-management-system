# Product Expansion Plan

## Current release boundary

This application currently supports employee, department, job, career-history, and location master data, directory/reporting, maps, and APEX administration. It is a foundation for an HR platform, not a complete HRIS. The current Oracle HR schema does not contain the data needed for leave, time, onboarding, recruiting, performance, benefits, or payroll workflows.

## Recommended delivery sequence

| Phase | Capability | Required records and workflow |
|---|---|---|
| 1 | Employee self-service and profile corrections | Employee identity mapping, editable-field policy, manager/HR approval queue, audit history |
| 2 | Leave management | Leave types, policy/year balances, requests, partial-day support, manager approvals, cancellation, audit trail |
| 3 | Onboarding and offboarding | Versioned checklists, assigned tasks, due dates, completion evidence, access-provisioning handoff |
| 4 | Time and attendance | Work schedules, time entries, corrections, manager approvals, timezone/pay-period rules |
| 5 | Performance management | Review cycles, goals, competencies, confidential feedback, review state transitions, retention policy |
| 6 | Recruiting | Requisitions, candidates, interview stages, restricted candidate data, consent and retention controls |
| Separate integration | Payroll and benefits | Use an approved payroll/benefits system of record and secure integration; do not treat an HR demo schema as a payroll engine |

## Design and data prerequisites

Before authoring new APEX pages, the business owner and database owner must approve a normalized schema, keys, constraints, retention, and data ownership. Keep workflow records separate from the seeded `HR` tables. At minimum, approval workflows need request status, requester, approver, timestamps, rejection/cancellation reasons, and immutable audit events. Define role-specific access for employee, manager, HR specialist, and administrator; the current Reader/Contributor/Administrator roles do not model these relationships.

Implement schema changes as reviewed database migrations in the client's normal database release process. Add synthetic fixtures and constraints for overlap, invalid state transitions, separation of duties, and employee/manager access. Add indexes and pagination for expected workforce sizes. Do not put secrets or real employee records in the application repository.

## Modern application experience

- Use a consistent employee profile with identity, employment, organization, manager, and contact sections; show only fields permitted to the current role.
- Add responsive layouts, clear empty/loading/error/success states, accessible labels and headings, keyboard navigation, visible focus, sufficient contrast, and usable zoom behavior.
- Use interactive reports with server-side filtering/pagination for large directories; verify search fields are indexed or otherwise performant.
- Make destructive actions explicit and auditable. Add effective dates and change history where business rules require them.
- Add dashboard cards only for metrics with an agreed definition, data owner, refresh cadence, and reconciliation procedure.

## Identity, privacy, and operations

Configure the client's approved SSO provider and MFA policy in the target APEX environment; the source currently uses APEX Accounts and cannot select a provider without client identity details. Map trusted identity claims to employee IDs and roles. Enforce access in APEX authorization and the database/view layer, including CSV/print exports and integrations. Current UI restrictions cover employee salary report columns and employee salary/commission form items; commission report columns and job salary ranges remain visible/editable according to their page access. Approve or correct that policy before production, then validate direct database access and all export paths independently.

Create a role/data classification matrix, retention schedule, audit review process, incident contact, backup/recovery objectives, and deployment promotion path. Treat Gemini and push notifications as optional integrations: keep them disabled unless credentials, permitted data, privacy terms, and operational owners are approved.

## Acceptance gates for each new module

Each module must have approved business rules, database migration, accessibility and responsive review, role-based negative tests, audit verification, concurrency tests where approvals can race, synthetic-data acceptance evidence, performance checks at expected scale, and owner sign-off before production import. Update the architecture, data model, user guide, and deployment checklist with the delivered behavior.
