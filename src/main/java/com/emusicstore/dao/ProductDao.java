package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.List;

/**
 * Created by maro on 17/03/16.
 */
public interface ProductDao {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);

}
