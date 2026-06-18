
-- Change Y and N to Yes and No in "Sold as Vacant" Field
Select Distinct(SoldAsVacant), Count(SoldAsVacant)
from AprilSQLTutorial.dbo.NashvilleHousing
Group by SoldAsVacant
Order by 2

select SoldAsVacant
, CASE when SoldAsVacant = 'Y' THEN 'YES'
when SoldAsVacant = 'N' then 'NO'
else SoldAsVacant
END
from AprilSQLTutorial.dbo.NashvilleHousing


