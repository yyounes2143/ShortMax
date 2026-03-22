package com.bytedance.bdtracker;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class a5 {

    /* renamed from: a  reason: collision with root package name */
    public static final z4 f11872a = new z4();

    /* renamed from: b  reason: collision with root package name */
    public static final Map<String, String> f11873b = new ConcurrentHashMap();

    public static String a(String str) {
        Map<String, String> map = f11873b;
        String str2 = map.get(str);
        if (str2 != null) {
            return str2;
        }
        String a10 = f11872a.a(str);
        if (a10 != null) {
            map.put(str, a10);
        }
        return a10;
    }
}
