
select OwnerAddress
from AprilSQLTutorial.dbo.NashvilleHousing

select
PARSENAME(REPLACE(OwnerAddress,',', '.'), 3)
,PARSENAME(REPLACE(OwnerAddress,',', '.'), 2)
,PARSENAME(REPLACE(OwnerAddress,',', '.'), 1)
From AprilSQLTutorial.dbo.NashvilleHousing
	
-- From this place is to update the separated data but the code is showing error
ALTER TABLE NashvilleHousing
Add OwnerSplitAddress Nvarchar(255);

UPDATE AprilSQLTutorial.dbo.NashvilleHousing
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress,',', '.'), 3)

ALTER TABLE NashvilleHousing
Add OwnerSplitAddress Nvarchar(255);

Update AprilSQLTutorial.dbo.NashvilleHousing
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress,',', '.'), 2)


ALTER TABLE NashvilleHousing
Add OwnerSplitState Nvarchar(255);

Update NashvilleHousing
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress,',', '.'), 1)

Select *
from AprilSQLTutorial.dbo.NashvilleHousing
