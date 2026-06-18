
-- Breaking out Address into individual columns (Address, city, state)
select PropertyAddress
from AprilSQLTutorial.dbo.NashvilleHousing
--where PropertyAddress is null
--order by ParcelID

SELECT
SUBSTRING(PropertyAddress,1, CHARINDEX(',', PropertyAddress) - 1) as Address
, SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) + 1 , LEN(PropertyAddress)) as Address
From AprilSQLTutorial.dbo.NashvilleHousing

ALTER TABLE AprilSQLTutorial.dbo.NashvilleHousing
Add PropertySplitAddress Nvarchar(255);

Update AprilSQLTutorial.dbo.NashvilleHousing
SET PropertySplitAddress = SUBSTRING(PropertyAddress,1, CHARINDEX(',', PropertyAddress) - 1) as Address

ALTER TABLE AprilSQLTutorial.dbo.NashvilleHousing
Add PropertySplitCity Nvarchar(255);

Update AprilSQLTutorial.dbo.NashvilleHousing
SET PropertySplitCity = SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) + 1 , LEN(PropertyAddress)) as Address

SELECT SaleDate, SaleDateConverted 
FROM AprilSQLTutorial.dbo.NashvilleHousing;

--

select *
from AprilSQLTutorial.dbo.NashvilleHousing
