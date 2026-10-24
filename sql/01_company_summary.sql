
SELECT
    "Company",
    COUNT(*) AS total_products,
    ROUND(AVG("CPU cores")::numeric, 2) AS avg_cpu_cores,
    ROUND(AVG("Base clock (GHz)")::numeric, 2) AS avg_base_clock_ghz,
    ROUND(AVG("Boost clock (GHz)")::numeric, 2) AS avg_boost_clock_ghz,
    ROUND(AVG("TDP (W)")::numeric, 2) AS avg_tdp_watts
FROM public.cpu_products_clean
WHERE "Company" IN ('AMD', 'Intel')
GROUP BY "Company"
ORDER BY "Company";
