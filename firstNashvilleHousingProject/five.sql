select OwnerAddress
from AprilSQLTutorial.dbo.NashvilleHousing

select
PARSENAME(REPLACE(OwnerAddress,',', '.'), 3)
,PARSENAME(REPLACE(OwnerAddress,',', '.'), 2)
,PARSENAME(REPLACE(OwnerAddress,',', '.'), 1)
From AprilSQLTutorial.dbo.NashvilleHousing

