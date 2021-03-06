SELECT Bike.id, M.name, M.version, M.msrp, B.name, B.country, B.websiteUrl, C.name, T.name, S.name
FROM Model M
INNER JOIN Brand B ON (M.brandId = B.id)
INNER JOIN Bike ON (M.id = Bike.modelId)
INNER JOIN Color C ON (Bike.colorId = C.id)
INNER JOIN "Type" T ON (M.typeId = T.id)
INNER JOIN Subtype S ON (M.subtypeId = S.id)
ORDER BY M.name
