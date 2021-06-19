package com.cuit.pojo;

import java.util.List;

/**
 * 一级类目和二级类目列表
 * */
public class CategoryDto {
    private ItemCategory father;

    private List<ItemCategory>childrens;

    public CategoryDto(ItemCategory father, List<ItemCategory> childrens) {
        this.father = father;
        this.childrens = childrens;
    }

    public CategoryDto() {
    }
    @Override
    public String toString() {
        return "CategoryDto{" +
                "father=" + father +
                ", childrens=" + childrens +
                '}';
    }

    public ItemCategory getFather() {
        return father;
    }

    public void setFather(ItemCategory father) {
        this.father = father;
    }

    public List<ItemCategory> getChildrens() {
        return childrens;
    }

    public void setChildrens(List<ItemCategory> childrens) {
        this.childrens = childrens;
    }

}
