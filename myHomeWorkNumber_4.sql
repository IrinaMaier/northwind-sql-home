USE 131224_Maier;

CREATE TABLE weather (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    day_temp INT CHECK (day_temp BETWEEN - 30 AND 30),
    night_temp INT CHECK (night_temp BETWEEN - 30 AND 30),
    wind_speed DECIMAL(4 , 2 ) CHECK (wind_speed >= 0)
);
INSERT INTO weather (date, day_temp, night_temp, wind_speed) VALUES
('2024-03-01', 10, 5, 3.5),
('2024-03-02', 12, 6, 2.0),
('2024-03-03', 8, 2, 4.7),
('2024-03-04', 5, -1, 1.2),
('2024-03-05', 7, 0, 5.0);

UPDATE weather
SET night_temp = night_temp + 1
WHERE wind_speed < 3;

CREATE VIEW weather_view AS
SELECT 
    id,
    date,
    day_temp,
    night_temp,
    wind_speed,
    (day_temp + night_temp) / 2 AS avg_temp,
    CASE
        WHEN wind_speed < 2 THEN 'штиль'
        WHEN wind_speed >= 2 AND wind_speed < 5 THEN 'умеренный ветер'
        ELSE 'сильный ветер'
    END AS wind_description
FROM weather;
SELECT * FROM weather_view;