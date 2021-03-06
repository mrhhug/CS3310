﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Data.EntityClient;
using System.ComponentModel;
using System.Xml.Serialization;
using System.Runtime.Serialization;

[assembly: EdmSchemaAttribute()]

namespace ShoppingCartV2.Models
{
    #region Contexts
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    public partial class ShoppingCartDBEntities1 : ObjectContext
    {
        #region Constructors
    
        /// <summary>
        /// Initializes a new ShoppingCartDBEntities1 object using the connection string found in the 'ShoppingCartDBEntities1' section of the application configuration file.
        /// </summary>
        public ShoppingCartDBEntities1() : base("name=ShoppingCartDBEntities1", "ShoppingCartDBEntities1")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new ShoppingCartDBEntities1 object.
        /// </summary>
        public ShoppingCartDBEntities1(string connectionString) : base(connectionString, "ShoppingCartDBEntities1")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new ShoppingCartDBEntities1 object.
        /// </summary>
        public ShoppingCartDBEntities1(EntityConnection connection) : base(connection, "ShoppingCartDBEntities1")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        #endregion
    
        #region Partial Methods
    
        partial void OnContextCreated();
    
        #endregion
    
        #region ObjectSet Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Product> Products
        {
            get
            {
                if ((_Products == null))
                {
                    _Products = base.CreateObjectSet<Product>("Products");
                }
                return _Products;
            }
        }
        private ObjectSet<Product> _Products;

        #endregion
        #region AddTo Methods
    
        /// <summary>
        /// Deprecated Method for adding a new object to the Products EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToProducts(Product product)
        {
            base.AddObject("Products", product);
        }

        #endregion
    }
    

    #endregion
    
    #region Entities
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="ShoppingCartDBModel", Name="Product")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Product : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Product object.
        /// </summary>
        /// <param name="productID">Initial value of the ProductID property.</param>
        /// <param name="productType">Initial value of the ProductType property.</param>
        /// <param name="unitPrice">Initial value of the UnitPrice property.</param>
        /// <param name="maxAmount">Initial value of the MaxAmount property.</param>
        /// <param name="defaultAmount">Initial value of the DefaultAmount property.</param>
        public static Product CreateProduct(global::System.Int32 productID, global::System.String productType, global::System.Decimal unitPrice, global::System.Int32 maxAmount, global::System.Int32 defaultAmount)
        {
            Product product = new Product();
            product.ProductID = productID;
            product.ProductType = productType;
            product.UnitPrice = unitPrice;
            product.MaxAmount = maxAmount;
            product.DefaultAmount = defaultAmount;
            return product;
        }

        #endregion
        #region Primitive Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 ProductID
        {
            get
            {
                return _ProductID;
            }
            set
            {
                if (_ProductID != value)
                {
                    OnProductIDChanging(value);
                    ReportPropertyChanging("ProductID");
                    _ProductID = StructuralObject.SetValidValue(value);
                    ReportPropertyChanged("ProductID");
                    OnProductIDChanged();
                }
            }
        }
        private global::System.Int32 _ProductID;
        partial void OnProductIDChanging(global::System.Int32 value);
        partial void OnProductIDChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.String ProductType
        {
            get
            {
                return _ProductType;
            }
            set
            {
                OnProductTypeChanging(value);
                ReportPropertyChanging("ProductType");
                _ProductType = StructuralObject.SetValidValue(value, false);
                ReportPropertyChanged("ProductType");
                OnProductTypeChanged();
            }
        }
        private global::System.String _ProductType;
        partial void OnProductTypeChanging(global::System.String value);
        partial void OnProductTypeChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String ProductName
        {
            get
            {
                return _ProductName;
            }
            set
            {
                OnProductNameChanging(value);
                ReportPropertyChanging("ProductName");
                _ProductName = StructuralObject.SetValidValue(value, true);
                ReportPropertyChanged("ProductName");
                OnProductNameChanged();
            }
        }
        private global::System.String _ProductName;
        partial void OnProductNameChanging(global::System.String value);
        partial void OnProductNameChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String ImageFile
        {
            get
            {
                return _ImageFile;
            }
            set
            {
                OnImageFileChanging(value);
                ReportPropertyChanging("ImageFile");
                _ImageFile = StructuralObject.SetValidValue(value, true);
                ReportPropertyChanged("ImageFile");
                OnImageFileChanged();
            }
        }
        private global::System.String _ImageFile;
        partial void OnImageFileChanging(global::System.String value);
        partial void OnImageFileChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Decimal UnitPrice
        {
            get
            {
                return _UnitPrice;
            }
            set
            {
                OnUnitPriceChanging(value);
                ReportPropertyChanging("UnitPrice");
                _UnitPrice = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("UnitPrice");
                OnUnitPriceChanged();
            }
        }
        private global::System.Decimal _UnitPrice;
        partial void OnUnitPriceChanging(global::System.Decimal value);
        partial void OnUnitPriceChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 MaxAmount
        {
            get
            {
                return _MaxAmount;
            }
            set
            {
                OnMaxAmountChanging(value);
                ReportPropertyChanging("MaxAmount");
                _MaxAmount = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("MaxAmount");
                OnMaxAmountChanged();
            }
        }
        private global::System.Int32 _MaxAmount;
        partial void OnMaxAmountChanging(global::System.Int32 value);
        partial void OnMaxAmountChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 DefaultAmount
        {
            get
            {
                return _DefaultAmount;
            }
            set
            {
                OnDefaultAmountChanging(value);
                ReportPropertyChanging("DefaultAmount");
                _DefaultAmount = StructuralObject.SetValidValue(value);
                ReportPropertyChanged("DefaultAmount");
                OnDefaultAmountChanged();
            }
        }
        private global::System.Int32 _DefaultAmount;
        partial void OnDefaultAmountChanging(global::System.Int32 value);
        partial void OnDefaultAmountChanged();

        #endregion
    
    }

    #endregion
    
}
