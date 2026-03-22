package com.mbridge.msdk.advanced.common;

import java.util.HashMap;
import java.util.Map;
/* compiled from: MBNativeAdvancedWebViewCache.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, Boolean> f25746a = new HashMap();

    public static void a(String str, boolean z10) {
        f25746a.put(str, Boolean.valueOf(z10));
    }

    public static void b(String str) {
        f25746a.remove(str);
    }

    public static boolean a(String str) {
        if (f25746a.containsKey(str)) {
            return f25746a.get(str).booleanValue();
        }
        return false;
    }
}
