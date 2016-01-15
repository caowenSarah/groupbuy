package org.cw.group.util;


import java.util.Iterator;
import java.util.List;

import org.cw.group.bean.OrderItem;


public class StringUtil {
	@SuppressWarnings("unchecked")
	public static boolean contains(List list,int id)
	{
		Iterator<OrderItem> it=list.iterator();
		System.out.println(list.size());
		System.out.println(id);
		while(it.hasNext())
		{
			OrderItem orderi=(OrderItem) it.next();
			if(orderi.getPro().getProId()==id) return true;
		}
		return false;
	}
	public static int indexOf(List<OrderItem> list,int id){
		
		Iterator<OrderItem> it=list.iterator();
		int i=0;
		System.out.println("aaaaa:"+id);
		while(it.hasNext()){
			OrderItem orderi=it.next();
			System.out.println("xy="+orderi.getPro().getProId());
			if(orderi.getPro().getProId()==id)
				return i;
			i++;
		}
		return -1;
	}
	
}
