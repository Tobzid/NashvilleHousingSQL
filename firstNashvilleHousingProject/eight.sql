-- Remove Duplicates

WITH RowNumCTE AS(
select *,
	ROW_NUMBER() OVER(
	PARTITION BY ParcelID,
				PropertyAddress,
				SalePrice,
				SaleDate,
				LegalReference
				ORDER BY
				UniqueID
				) row_num
from AprilSQLTutorial.dbo.NashvilleHousing
--order by ParcelID
)
SELECT *
From RowNumCTE
where row_num > 1
order by PropertyAddress

SELECT *
from AprilSQLTutorial.dbo.NashvilleHousing
