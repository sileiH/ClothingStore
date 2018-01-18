package test;

import java.util.LinkedList;
import java.util.List;

import com.design.entity.ShopProduct;

public class TestList {
	public static void main(String[] args) {
		List<ShopProduct> list = new LinkedList<ShopProduct>();
		list.add(new ShopProduct());
		list.add(new ShopProduct());
		System.out.println(list.size());
		list.remove(0);
		System.out.println(list.size());
	}
}
