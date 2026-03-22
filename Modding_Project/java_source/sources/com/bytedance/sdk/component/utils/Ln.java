package com.bytedance.sdk.component.utils;

import android.content.Context;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class Ln {
    private static Map<String, Method> ZYk = new HashMap();
    public static final Class<?>[] oJ;
    private static final HashMap<Class<?>, Class<?>> tB;

    static {
        HashMap<Class<?>, Class<?>> hashMap = new HashMap<>();
        tB = hashMap;
        hashMap.put(Boolean.TYPE, Boolean.class);
        hashMap.put(Byte.TYPE, Byte.class);
        hashMap.put(Character.TYPE, Character.class);
        hashMap.put(Short.TYPE, Short.class);
        hashMap.put(Integer.TYPE, Integer.class);
        hashMap.put(Long.TYPE, Long.class);
        hashMap.put(Double.TYPE, Double.class);
        hashMap.put(Float.TYPE, Float.class);
        hashMap.put(Void.TYPE, Void.class);
        oJ = new Class[0];
    }

    public static int oJ(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int oJ(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }
}
