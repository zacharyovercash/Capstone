package com.hcl.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class Product {

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private long productId;
	private String productName;
	private String thumbnailUrl;
	private String productCondition;
	private double productPrice;
	private String prodcutGenre;
	private String productDescription;
	public long getProductId() {
		return productId;
	}
	public void setProductId(long productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getThumbnailUrl() {
		return thumbnailUrl;
	}
	public void setThumbnailUrl(String thumbnailUrl) {
		this.thumbnailUrl = thumbnailUrl;
	}
	public String getProductCondition() {
		return productCondition;
	}
	public void setProductCondition(String productCondition) {
		this.productCondition = productCondition;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	public String getProdcutGenre() {
		return prodcutGenre;
	}
	public void setProdcutGenre(String prodcutGenre) {
		this.prodcutGenre = prodcutGenre;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(long productId, String productName, String thumbnailUrl,
			String productCondition, double productPrice, String prodcutGenre, String productDescription) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.thumbnailUrl = thumbnailUrl;
		this.productCondition = productCondition;
		this.productPrice = productPrice;
		this.prodcutGenre = prodcutGenre;
		this.productDescription = productDescription;
	}
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", thumbnailUrl=" + thumbnailUrl + ", productCondition=" + productCondition
				+ ", productPrice=" + productPrice + ", prodcutGenre=" + prodcutGenre + ", productDescription="
				+ productDescription + "]";
	}
	
	
	
}
