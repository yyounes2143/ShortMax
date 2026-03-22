package com.mbridge.msdk.mbsignalcommon.mapping;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: Mapping.java */
/* loaded from: classes4.dex */
public class b {

    /* compiled from: Mapping.java */
    /* loaded from: classes4.dex */
    public static class a<C> {

        /* renamed from: a  reason: collision with root package name */
        protected Class<C> f28199a;

        public a(Class<C> cls) {
            this.f28199a = cls;
        }

        public C0397b a(String str, Class<?>... clsArr) throws com.mbridge.msdk.mbsignalcommon.mapping.a {
            return new C0397b(this.f28199a, str, clsArr, 0);
        }
    }

    public static <T> a<T> a(ClassLoader classLoader, String str) throws com.mbridge.msdk.mbsignalcommon.mapping.a {
        try {
            return new a<>(classLoader.loadClass(str));
        } catch (Exception e10) {
            b(new com.mbridge.msdk.mbsignalcommon.mapping.a(e10));
            return new a<>(null);
        }
    }

    /* compiled from: Mapping.java */
    /* renamed from: com.mbridge.msdk.mbsignalcommon.mapping.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0397b {

        /* renamed from: a  reason: collision with root package name */
        protected final Method f28200a;

        C0397b(Class<?> cls, String str, Class<?>[] clsArr, int i10) throws com.mbridge.msdk.mbsignalcommon.mapping.a {
            Method method = null;
            if (cls == null) {
                return;
            }
            while (cls != Object.class && cls != null) {
                try {
                    method = cls.getDeclaredMethod(str, clsArr);
                    break;
                } catch (NoSuchMethodException e10) {
                    if (MBridgeConstans.DEBUG && cls.getSuperclass() == Object.class) {
                        e10.printStackTrace();
                    }
                    cls = cls.getSuperclass();
                } catch (SecurityException e11) {
                    try {
                        if (MBridgeConstans.DEBUG && cls.getSuperclass() == Object.class) {
                            e11.printStackTrace();
                        }
                        cls = cls.getSuperclass();
                    } catch (Exception e12) {
                        com.mbridge.msdk.mbsignalcommon.mapping.a aVar = new com.mbridge.msdk.mbsignalcommon.mapping.a(e12);
                        aVar.a(cls);
                        aVar.a(str);
                        b.b(aVar);
                        return;
                    } finally {
                        this.f28200a = method;
                    }
                }
            }
            if (method != null) {
                if (i10 > 0 && (method.getModifiers() & i10) != i10) {
                    b.b(new com.mbridge.msdk.mbsignalcommon.mapping.a(method + " does not match modifiers: " + i10));
                }
                method.setAccessible(true);
            }
        }

        public Object a(Object obj, Object... objArr) throws IllegalArgumentException, InvocationTargetException {
            Method method = this.f28200a;
            if (method == null) {
                return null;
            }
            try {
                return method.invoke(obj, objArr);
            } catch (Exception e10) {
                p0.a("MappingedMethod", "invoke error:" + e10.getMessage());
                return null;
            }
        }

        public Method a() {
            return this.f28200a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.mbridge.msdk.mbsignalcommon.mapping.a aVar) throws com.mbridge.msdk.mbsignalcommon.mapping.a {
        throw aVar;
    }
}
