-- Remove Duplicate

Select *
From AprilSQLTutorial.dbo.NashvilleHousing

ALTER TABLE AprilSQLTutorial.dbo.NashvilleHousing
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress


ALTER TABLE AprilSQLTutorial.dbo.NashvilleHousing
DROP COLUMN SaleDate
