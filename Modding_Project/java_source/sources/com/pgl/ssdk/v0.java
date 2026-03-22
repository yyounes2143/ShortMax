package com.pgl.ssdk;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes6.dex */
public final class v0 {

    /* renamed from: a  reason: collision with root package name */
    private static Method f36834a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f36835b;

    /* renamed from: c  reason: collision with root package name */
    private static Method f36836c;

    static {
        try {
            f36834a = Class.class.getDeclaredMethod("forName", String.class);
            f36835b = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            f36836c = Class.class.getDeclaredMethod("getDeclaredField", String.class);
        } catch (NoSuchMethodException | NullPointerException unused) {
        }
    }

    public static Object a(Object obj, Class cls, String str, Object obj2) {
        try {
            Field a10 = a(cls, str);
            if (a10 == null) {
                return obj2;
            }
            a10.setAccessible(true);
            return a10.get(obj);
        } catch (Throwable unused) {
            return obj2;
        }
    }

    public static Field a(Class cls, String str) {
        if (a()) {
            try {
                Field field = (Field) f36836c.invoke(cls, str);
                try {
                    field.setAccessible(true);
                } catch (Throwable unused) {
                }
                return field;
            } catch (Throwable unused2) {
                return null;
            }
        }
        return null;
    }

    public static Method a(Class cls, String str, Class[] clsArr) {
        if (a()) {
            try {
                Method method = (Method) f36835b.invoke(cls, str, clsArr);
                try {
                    method.setAccessible(true);
                } catch (Throwable unused) {
                }
                return method;
            } catch (Throwable unused2) {
                return null;
            }
        }
        return null;
    }

    public static Object a(Object obj, Class cls, String str, Class[] clsArr, Object... objArr) {
        try {
            Method a10 = a(cls, str, clsArr);
            if (a10 != null) {
                return a10.invoke(obj, objArr);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static boolean a() {
        return (f36834a == null || f36835b == null || f36836c == null) ? false : true;
    }
}
