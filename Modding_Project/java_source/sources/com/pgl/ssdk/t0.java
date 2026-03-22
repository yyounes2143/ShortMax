package com.pgl.ssdk;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class t0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f36820a;

    /* loaded from: classes6.dex */
    public static class a<T> {

        /* renamed from: a  reason: collision with root package name */
        public final Class<? extends T> f36821a;

        /* renamed from: b  reason: collision with root package name */
        public final T f36822b;
    }

    static {
        HashMap hashMap = new HashMap();
        f36820a = hashMap;
        Class cls = Boolean.TYPE;
        hashMap.put(Boolean.class, cls);
        Class cls2 = Byte.TYPE;
        hashMap.put(Byte.class, cls2);
        Class cls3 = Character.TYPE;
        hashMap.put(Character.class, cls3);
        Class cls4 = Short.TYPE;
        hashMap.put(Short.class, cls4);
        Class cls5 = Integer.TYPE;
        hashMap.put(Integer.class, cls5);
        Class cls6 = Float.TYPE;
        hashMap.put(Float.class, cls6);
        Class cls7 = Long.TYPE;
        hashMap.put(Long.class, cls7);
        Class cls8 = Double.TYPE;
        hashMap.put(Double.class, cls8);
        hashMap.put(cls, cls);
        hashMap.put(cls2, cls2);
        hashMap.put(cls3, cls3);
        hashMap.put(cls4, cls4);
        hashMap.put(cls5, cls5);
        hashMap.put(cls6, cls6);
        hashMap.put(cls7, cls7);
        hashMap.put(cls8, cls8);
    }

    public static void a(String str, String str2, Object... objArr) {
        try {
            a(Class.forName(str), str2, objArr);
        } catch (Exception unused) {
        }
    }

    private static Object[] b(Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            Object[] objArr2 = new Object[objArr.length];
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Object obj = objArr[i10];
                if (obj != null && (obj instanceof a)) {
                    objArr2[i10] = ((a) obj).f36822b;
                } else {
                    objArr2[i10] = obj;
                }
            }
            return objArr2;
        }
        return null;
    }

    private static Method a(Class<?> cls, String str, Class... clsArr) throws NoSuchMethodException, SecurityException {
        Method a10 = a(cls.getDeclaredMethods(), str, clsArr);
        if (a10 == null) {
            if (cls.getSuperclass() != null) {
                return a((Class<?>) cls.getSuperclass(), str, clsArr);
            }
            throw new NoSuchMethodException();
        }
        a10.setAccessible(true);
        return a10;
    }

    private static Method a(Method[] methodArr, String str, Class<?>[] clsArr) {
        if (str != null) {
            for (Method method : methodArr) {
                if (method.getName().equals(str) && a(method.getParameterTypes(), clsArr)) {
                    return method;
                }
            }
            return null;
        }
        throw new NullPointerException("Method name must not be null.");
    }

    private static boolean a(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr == null) {
            return clsArr2 == null || clsArr2.length == 0;
        } else if (clsArr2 == null) {
            return clsArr.length == 0;
        } else if (clsArr.length != clsArr2.length) {
            return false;
        } else {
            for (int i10 = 0; i10 < clsArr.length; i10++) {
                if (!clsArr[i10].isAssignableFrom(clsArr2[i10])) {
                    Map<Class<?>, Class<?>> map = f36820a;
                    if (!map.containsKey(clsArr[i10]) || !map.get(clsArr[i10]).equals(map.get(clsArr2[i10]))) {
                        return false;
                    }
                }
            }
            return true;
        }
    }

    public static void a(Class<?> cls, String str, Object... objArr) throws SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        a(cls, str, (Class[]) a(objArr)).invoke(null, b(objArr));
    }

    private static Class<?>[] a(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return null;
        }
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            if (obj != null && (obj instanceof a)) {
                clsArr[i10] = ((a) obj).f36821a;
            } else {
                clsArr[i10] = obj == null ? null : obj.getClass();
            }
        }
        return clsArr;
    }
}
