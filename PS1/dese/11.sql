SELECT
    "schools"."name" AS "School Name",
    "expenditures"."per_pupil_expenditure" AS "Expenditure per Pupil",
    "graduation_rates"."graduated" AS "Graduation Rates"
FROM
    "schools"
JOIN
    "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
JOIN
    "expenditures" ON "schools"."district_id" = "expenditures"."district_id";
-- ORDER BY
--     "expenditures"."per_pupil_expenditure" DESC, 
--     "graduation_rates"."graduated" DESC
-- LIMIT 20;
