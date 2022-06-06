package com.devsuperior.dstools.dto;

import com.devsuperior.dstools.entities.Category;
import com.devsuperior.dstools.entities.Product;

import javax.persistence.Column;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class ProductDTO {

    private Long id;

    @Size(min = 3, max = 60, message = "Deve ter entre 3 e 60 caracteres")
    @NotBlank(message = "Campo obrigatório")
    private String name;

    @Column(columnDefinition = "TEXT")
    private String description;

    @Positive(message = "preço deve ser positivo")
    private Double fullPrice;
    @Positive(message = "preço deve ser positivo")
    private Double promoPrice;
    @NotBlank(message = "Campo obrigatório")
    private String financePrice;
    private String imgUrl;

    @NotEmpty(message = "Produto sem categoria não é permitido")
    private List<CategoryDTO> categories = new ArrayList<>();


    public ProductDTO() {
    }

    public ProductDTO(Long id, String name, String description, Double fullPrice, Double promoPrice, String financePrice, String imgUrl) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.fullPrice = fullPrice;
        this.promoPrice = promoPrice;
        this.financePrice = financePrice;
        this.imgUrl = imgUrl;
    }

    public ProductDTO(Product entity) {
        this.id = entity.getId();
        this.name = entity.getName();
        this.description = entity.getDescription();
        this.fullPrice = entity.getFullPrice();
        this.promoPrice = entity.getPromoPrice();
        this.financePrice = entity.getFinancePrice();
        this.imgUrl = entity.getImgUrl();
    }

    public ProductDTO(Product entity, Set<Category> categories) {
        this(entity);
        categories.forEach(cat -> this.categories.add(new CategoryDTO(cat)));
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getFullPrice() {
        return fullPrice;
    }

    public void setFullPrice(Double fullPrice) {
        this.fullPrice = fullPrice;
    }

    public Double getPromoPrice() {
        return promoPrice;
    }

    public void setPromoPrice(Double promoPrice) {
        this.promoPrice = promoPrice;
    }

    public String getFinancePrice() {
        return financePrice;
    }

    public void setFinancePrice(String financePrice) {
        this.financePrice = financePrice;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public List<CategoryDTO> getCategories() {
        return categories;
    }

}
