package com.cuit.utils;

import com.cuit.pojo.Item;

import java.util.List;

/**
 * Create by Miracle
 */
public class StringUtils {
    /**
     * Create by Miracle
     * function: to add Ellipsis to String that size more than size;
     * @param str
     * @param begin
     * @param end
     * @param size
     */

    public  String addEllipsis(String str,int begin, int end, int size){
        if(begin >= str.length()){
            throw new RuntimeException("begin more than str.length()");
        }
        if(size >= str.length()){
            return str;
        }else {
            end = Math.min(this.classify(str,size), str.length());
            return str.substring(begin,end)+"...";
        }

    }
    /**
     * Create by Miracle
     * function: to add Ellipsis to String that size more than size;
     * @param item
     * @param begin
     * @param end
     * @param size
     */
    public Object SubString(Object item,int begin, int end, int size){
        if(item instanceof Item){
            Item item1 = ((Item) item);
            item1.setName(this.addEllipsis(item1.getName(),begin,end,size));
            return  item1;
        }else if(item instanceof Pager){
            Pager pager = (Pager) item;
            List<Item> list = (List<Item>) pager.getDatas();
            for (Item i : list){
                i.setName(this.addEllipsis(i.getName(),begin,end,size));
            }
            pager.setDatas(list);
            return pager;
        }else{
            List<Item> list = (List<Item>) item;
            for(Item i: list){
                i.setName(this.addEllipsis(i.getName(),begin,end,size));
            }
            return list;
        }

    }

    /**
     * Create by Miracle
     * function find out the number of ascii
     * @param str
     * @return
     */
    public int classify(String str, int size){
        char[] strArr = str.toCharArray();
        int num = 0;  //ascii字母
        for (int i = 0; i < size ; i++) {
            int ascii = (int)strArr[i];
            if( (48<= ascii && ascii <= 57) || (65<= ascii && ascii <= 90) || (97 <= ascii && ascii <=  122) || (ascii==32)){//数字
                num++;
            }
        }
        num = size + num - (int)num/3*2-1;
        return num;
    }

}
