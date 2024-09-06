SELECT 
    "districts"."name", "type", "exemplary", "per_pupil_expenditure"
FROM
    "districts"
LEFT JOIN
    "expenditures" ON "districts"."id" = "expenditures"."district_id"
LEFT JOIN
    "staff_evaluations" ON "districts"."id" = "staff_evaluations"."district_id"
WHERE
    "type" = 'Public School District'
AND
    "expenditures"."per_pupil_expenditure" > (
        SELECT AVG("per_pupil_expenditure") FROM "expenditures"
        )
AND
    exemplary > (
        SELECT AVG("exemplary") FROM "staff_evaluations"
        );