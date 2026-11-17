# Application Design System

## Color and surfaces

- The application uses the Universal Theme **Iris** style as its shared palette. Keep this style as the source of primary, neutral, and chart colors so navigation, forms, reports, cards, and charts stay aligned.
- Use the Universal Theme `t-Region--accent1` treatment for home dashboard visuals and the Department Teams selector. Department employee cards use the shared Style B card treatment and theme colors; avoid introducing page-specific hex colors.
- Keep standard regions and forms on their neutral surface. Reserve strong emphasis for primary actions, and use the existing danger style only for destructive actions.
- Keep chart series on the Universal Theme palette. The home page combines the workforce bar/pie charts, career-history line, and office map; do not hard-code unrelated series colors.

## Icon usage

- Navigation icons identify page purpose: chart for the executive overview, address book for employee records, sitemap for departments, users for department teams, briefcase for jobs, history for career history, building for offices, map marker for the office map, and address card for the centralized directory.
- Form item icons describe the value being entered (person, email, phone, department, location, role, or compensation). Keep the text label visible; icons supplement labels and never replace them. The Hire Date field uses the date picker control without a custom leading icon.
- Use plus/user-plus for create, save for apply changes, trash for delete, and close for cancel. Keep delete visually dangerous and avoid applying the danger treatment to ordinary actions.
- Employee cards use initials rather than invented profile photos, with role and contact details as supporting information.

## Layout and accessibility

- Use the same floating-label form treatment, card surfaces, spacing, and icon placement across employee, department, job, and location workflows.
- Use icons with text labels for actions. Keep keyboard focus visible and test icon contrast and field readability at narrow widths and browser zoom.
- Use descriptive region titles and empty-state messages. Decorative icons must not carry information that is missing from the text.
