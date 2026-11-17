# Acceptance Checklist

Use this checklist in a non-production client environment with approved test data. No runtime acceptance results are implied by this document.

## Platform and import

- [ ] Confirm target Oracle APEX version is compatible with the APEXLang 26.2 source.
- [ ] Confirm the parsing schema can read/write the required HR objects and read `EMP_DETAILS_VIEW`.
- [ ] Validate the application directory and record the successful validator output.
- [ ] Import to the intended workspace/application ID and record the export/version.
- [ ] Confirm application navigation, theme, and login page render correctly.

## Access control

- [ ] Verify a Reader can view reports but cannot create, edit, or delete HR data.
- [ ] Verify a Contributor can perform approved CRUD operations and cannot open Administration pages.
- [ ] Verify an Administrator can manage ACL users and access administration reports.
- [ ] Verify an unassigned authenticated user is denied while `ACCESS_CONTROL_SCOPE` is `ACL_ONLY`.
- [ ] If `ALL_USERS` is selected, confirm the business owner has approved the broader access policy.
- [ ] Confirm the emergency Administrator account is usable and appropriately protected.

## Functional workflows

- [ ] Search employees by name/contact information and use Department and Job facets; clear with Reset.
- [ ] Open an employee detail from both an Employee Directory last-name link/profile icon and a Department Teams card; confirm the selected employee ID and details match each source record.
- [ ] Confirm Employee Details is read-only for all roles, the office map marker matches the employee's department location for supported cities, and unmapped cities still show the office in the profile.
- [ ] Confirm only Contributors and Administrators see the Edit Employee action, which opens the selected row in the existing Page 3 form.
- [ ] Create/edit/delete test employee, department, job, and location records where database constraints allow.
- [ ] Verify career-history and centralized-directory records against the underlying HR data.
- [ ] Verify home/workforce charts against approved report definitions.
- [ ] Reconcile employee counts by department and job, including departments/jobs with no employees, against approved definitions.
- [ ] Verify employee salary columns and employee salary/commission form items are hidden for Reader and Contributor users and available only to Administrators, including exports and downloads.
- [ ] Verify the Page 13 compensation card is Administrator-only and is not present for Reader or Contributor users.
- [ ] Review `COMMISSION_PCT` report visibility and `JOBS.MIN_SALARY`/`MAX_SALARY` visibility/editability against the approved compensation policy; test reports, forms, exports, and downloads.
- [ ] Verify employee counts on the home map and country counts/tooltips on the Office Map.
- [ ] Change the Page 11 department selector and verify the overview card, office map, and employee cards refresh together; verify the map marker, department manager, office city, team size, and employee details.
- [ ] Verify Page 1 career-history trend counts `JOB_HISTORY` rows by `START_DATE` year and does not label the measure as retention.
- [ ] Confirm how unmapped cities and countries without polygon entries should be handled.
- [ ] Verify the About page contains client-approved support and scope information.
- [ ] Verify keyboard-only operation, visible focus, labels, headings, contrast, zoom, and narrow-screen behavior on major workflows.

## Optional features and operations

- [ ] If enabled, validate Gemini credentials and service behavior without exposing the API key.
- [ ] If enabled, subscribe and unsubscribe push notifications on a supported HTTPS browser/device.
- [ ] Confirm the client can review APEX activity/error/automation logs and knows the retention policy.
- [ ] Capture application and database backups and test the agreed recovery procedure.
- [ ] Obtain business-owner sign-off for report definitions, security, and known limitations.

## Evidence to retain

Record the environment, browser, test account roles, test-data approach, validator/import result, observed behavior, open issues, approver, and date in the client's release record. Do not attach real employee data or credentials to a public pull request.
