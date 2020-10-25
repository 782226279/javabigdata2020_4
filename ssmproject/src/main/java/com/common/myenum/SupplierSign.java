package com.common.myenum;

import java.util.HashMap;
import java.util.Map;

public class SupplierSign {

    static Map<Integer, String> map = new HashMap<>();

    static {
        map.put(0, "刚注册供货商");
        map.put(1, "注册审核不通过");
        map.put(2, "注册审核通过，等待财务交保证金审核");
        map.put(3, "财务审核不通过");
        map.put(4, "财务审核通过，已经是供货商");
        map.put(5, "黑名单企业");
    }


    public static String getSing(int sign) {
        return map.get(sign);
    }

}
