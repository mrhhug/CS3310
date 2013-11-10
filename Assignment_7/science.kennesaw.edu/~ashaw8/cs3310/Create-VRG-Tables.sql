/********************************************************************************/
/*																				*/
/*	Kroenke and Auer - Database Processing (12th Edition) Chapter 10			*/
/*																				*/
/*	The View Ridge Gallery (VRG) - Create Tables								*/
/*																				*/
/*	These are the Microsoft SQL Server 2008 R2/2011 SQL code solutions			*/
/*																				*/
/********************************************************************************/

Use VRG;

CREATE TABLE ARTIST (
	ArtistID 			Int 			NOT NULL IDENTITY(1,1),
	LastName			Char(25)		NOT NULL,
	FirstName			Char(25)		NOT NULL, 
	Nationality 		Char(30)		NULL,
	DateOfBirth 		Numeric(4)		NULL, 
	DateDeceased 		Numeric(4)		NULL,
	CONSTRAINT 	ArtistPK			PRIMARY KEY(ArtistID),
	CONSTRAINT 	ArtistAK1			UNIQUE(LastName, FirstName),	
	CONSTRAINT 	BirthValuesCheck 	CHECK (DateOfBirth < DateDeceased),
	CONSTRAINT 	ValidBirthYear 		CHECK
					(DateOfBirth LIKE '[1-2][0-9][0-9][0-9]'),
	CONSTRAINT 	ValidDeathYear 		CHECK
					(DateDeceased LIKE '[1-2][0-9][0-9][0-9]')
	);

CREATE TABLE WORK (
	WorkID 				Int 			NOT NULL IDENTITY(500,1),
	Title 				Char(35) 		NOT NULL,
	Copy 				Char(12)		NOT NULL,
	Medium 				Char(35) 		NULL,
	[Description] 		Varchar(1000) 	NULL DEFAULT 'Unknown provenance',
	ArtistID 			Int 			NOT NULL,
	CONSTRAINT 	WorkPK				PRIMARY KEY(WorkID),
	CONSTRAINT 	WorkAK1				UNIQUE(Title, Copy),
	CONSTRAINT 	ArtistFK			FOREIGN KEY(ArtistID)
						REFERENCES ARTIST(ArtistID)
 							ON UPDATE NO ACTION
							ON DELETE NO ACTION
	);

CREATE TABLE CUSTOMER (
	CustomerID 			Int 			NOT NULL IDENTITY(1000,1),
	LastName 			Char(25) 		NOT NULL,
	FirstName 			Char(25) 		NOT NULL,
	Street 				Char(30) 		NULL,
	City 				Char(35) 		NULL,
	[State] 			Char(2) 		NULL,
	ZipPostalCode		Char(9)			NULL, 
	Country				Char(50)		NULL,
	AreaCode 			Char(3)			NULL,
	PhoneNumber 		Char(8) 		NULL,
	Email				Varchar(100) 	NULL,
 	CONSTRAINT 	CustomerPK			PRIMARY KEY(CustomerID),
	CONSTRAINT 	EmailAK1			UNIQUE(Email)
	);

CREATE TABLE TRANS (
	TransactionID		Int 			NOT NULL IDENTITY(100,1),
	DateAcquired 		Datetime		NOT NULL, 
	AcquisitionPrice	Numeric(8,2)	NOT NULL,
	AskingPrice			Numeric(8,2)	NULL,
	DateSold			Datetime		NULL,
	SalesPrice 			Numeric(8,2)	NULL, 
	CustomerID			Int 			NULL,
	WorkID				Int 			NOT NULL,
	CONSTRAINT 	TransPK				PRIMARY KEY(TransactionID),
	CONSTRAINT 	TransWorkFK			FOREIGN KEY(WorkID)
						REFERENCES WORK(WorkID)
 							ON UPDATE NO ACTION
							ON DELETE NO ACTION,
	CONSTRAINT 	TransCustomerFK FOREIGN KEY(CustomerID)
						REFERENCES CUSTOMER(CustomerID)
 							ON UPDATE NO ACTION
							ON DELETE NO ACTION,
	CONSTRAINT 	SalesPriceRange 	CHECK
					((SalesPrice > 0) AND (SalesPrice <=500000)),
	CONSTRAINT	ValidTransDate 		CHECK (DateAcquired <= DateSold),
	);

CREATE TABLE CUSTOMER_ARTIST_INT(
	ArtistID 			Int 			NOT NULL, 
	CustomerID 			Int 			NOT NULL,
 	CONSTRAINT 	CAIntPK				PRIMARY KEY(ArtistID, CustomerID),
	CONSTRAINT 	CAInt_ArtistFK		FOREIGN KEY(ArtistID)
						REFERENCES ARTIST(ArtistID)
							ON UPDATE NO ACTION
							ON DELETE CASCADE,
	CONSTRAINT 	CAInt_CustomerFK FOREIGN KEY(CustomerID)
						REFERENCES CUSTOMER(CustomerID)
							on UPDATE NO ACTION
							ON DELETE CASCADE
	);


