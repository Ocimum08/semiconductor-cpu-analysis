
SELECT
    "Company",
    COUNT(*) AS total_products,
    COUNT("Boost clock (GHz)") AS products_with_boost_data,
    ROUND(
        AVG("Boost clock (GHz)")::numeric, 2
    ) AS avg_boost_clock_ghz,
    MAX("Boost clock (GHz)") AS max_boost_clock_ghz
FROM public.cpu_products_clean
WHERE "Company" IN ('AMD', 'Intel')
GROUP BY "Company"
ORDER BY "Company";
