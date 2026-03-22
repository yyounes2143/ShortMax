package com.bytedance.vcloud.cacheModule.utils;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class UriUtils {
    private static String TruncateUrlPage(String str) {
        String str2;
        String trim = str.trim();
        String[] split = trim.split("[?]");
        if (trim.length() <= 1 || split.length <= 1 || (str2 = split[1]) == null) {
            return null;
        }
        return str2;
    }

    public static Map<String, String> parseQuery(String str) {
        HashMap hashMap = new HashMap();
        for (String str2 : str.split("[&]")) {
            String[] split = str2.split("[=]");
            if (split.length > 1) {
                hashMap.put(split[0], split[1]);
            } else if (!split[0].equals("")) {
                hashMap.put(split[0], "");
            }
        }
        return hashMap;
    }

    public static Map<String, String> parseURLParam(String str) {
        String TruncateUrlPage = TruncateUrlPage(str);
        if (TruncateUrlPage == null) {
            return new HashMap();
        }
        return parseQuery(TruncateUrlPage);
    }
}
