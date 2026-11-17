# Client Handover

## Delivered

- Oracle APEX application source in APEXLang format.
- Employee, department, job, career-history, and office-location screens and reports, including the Department Teams master-detail page and linked Employee Details page with office map.
- Page 4 Departments Overview with an employee reporting hierarchy based on employee and manager IDs.
- Page 1 workforce headcount, career-history trend, and office location visualizations.
- Screen captures for the executive overview, employee directory, department hierarchy, department teams, and employee details are included in [`docs/medias`](../medias/) and embedded in the [end-user guide](user-guide.md).
- Shared Iris theme styling, page navigation icons, and contextual form/action icons.
- Application-level access control and administrator reporting pages.
- Client-facing user guidance and technical runbooks linked from the [project README](../../README.md).
- Copyright notice: © 2026 Mamadou Moussa Balde. Review [project copyright terms](../COPYRIGHT.md) before redistribution.

The source declares APEXLang model version `26.2.0+3479`. This handover documents the application source; it does not certify that the application has been imported, configured, or accepted in a client environment.

## Client environment details to complete

Record these values in the client's approved environment inventory, not in public documentation:

| Item | Client value |
|---|---|
| APEX workspace and application alias/ID | |
| Target Oracle APEX and Database versions | |
| Parsing schema and HR schema owner | |
| Target URL and authentication entry point | |
| Initial Administrator account owner | |
| Gemini integration enabled and credential owner | |
| Push-notification credentials and supported devices | |
| Deployment, backup, and support contacts | |
| Release date and approved application export | |

## Release readiness

Before go-live:

1. Confirm the target APEX version supports this APEXLang source and that the required HR tables and `EMP_DETAILS_VIEW` exist.
2. Validate and import in a non-production environment, then complete the [acceptance checklist](../technical/acceptance-checklist.md).
3. Create and test an Administrator account before restricting access to the ACL.
4. Configure optional Gemini and push-notification credentials only if those capabilities are approved for use.
5. Confirm headcount definitions, compensation visibility, and report access with the client (see caveats below).
6. Arrange database and application-export backups, operational ownership, and log-retention policy.

## Known caveats requiring client review

- Employee headcount charts count employees by department and job. The career-history line counts `JOB_HISTORY` rows by the year of `START_DATE`; neither chart measures retention. Validate definitions with the client.
- Employee `SALARY` columns on Employee Directory and Centralized Directory, and `SALARY`/`COMMISSION_PCT` fields on the Employee form, use Administrator-only UI authorization. `COMMISSION_PCT` report columns and `MIN_SALARY`/`MAX_SALARY` job-range fields are not restricted to Administrators in the current source. Review and approve or change this policy before go-live; database grants, exports, and downstream systems need independent controls.
- The Department Teams page uses a department selector, an overview card (office city, manager, team size), and employee cards (name, role, email, phone); selecting a card opens the selected employee's read-only detail and office map. Validate the query behavior against the target HR schema.
- Employee Directory employee names/profile icons also open Page 13. Its Edit Employee action opens the existing Contributor-authorized form, and its compensation card is Administrator-only. Validate these navigation and authorization rules with Reader, Contributor, and Administrator accounts.
- The home location map has a city-to-coordinate lookup. A location with an unmapped city is omitted from that map.
- The Office Map uses generalized Natural Earth country polygons and currently includes only the United States, Canada, United Kingdom, and Germany. Add a polygon entry when employee locations are added in another country. It is not a survey-grade boundary map.
- The About page has general scope guidance; replace it with client-approved contact and support details before go-live.
- No target-specific APEXLang validation result, runtime acceptance result, or production deployment is evidenced by this source/documentation update.

## GitHub publication

This workspace did not have a Git repository or remote configured when these documents were prepared. The documentation is GitHub-ready but has not been pushed. Before publishing, review deployment metadata, credentials, application exports, employee data, and repository history. The repository has no supplied license; approve one before public distribution.
