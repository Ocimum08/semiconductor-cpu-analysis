
SELECT
    "Company",
    COUNT(*) AS total_products,
    COUNT(*) FILTER (
        WHERE "CPU cores" IS NULL
    ) AS missing_cpu_cores,
    COUNT(*) FILTER (
        WHERE "Boost clock (GHz)" IS NULL
    ) AS missing_boost_clock,
    COUNT(*) FILTER (
        WHERE "TDP (W)" IS NULL
    ) AS missing_tdp
FROM public.cpu_products_clean
WHERE "Company" IN ('AMD', 'Intel')
GROUP BY "Company"
ORDER BY "Company";
