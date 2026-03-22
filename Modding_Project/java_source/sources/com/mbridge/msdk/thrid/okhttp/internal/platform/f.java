package com.mbridge.msdk.thrid.okhttp.internal.platform;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: OptionalMethod.java */
/* loaded from: classes6.dex */
class f<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f29943a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29944b;

    /* renamed from: c  reason: collision with root package name */
    private final Class[] f29945c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Class<?> cls, String str, Class... clsArr) {
        this.f29943a = cls;
        this.f29944b = str;
        this.f29945c = clsArr;
    }

    public boolean a(T t10) {
        return a(t10.getClass()) != null;
    }

    public Object b(T t10, Object... objArr) throws InvocationTargetException {
        Method a10 = a(t10.getClass());
        if (a10 == null) {
            return null;
        }
        try {
            return a10.invoke(t10, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    public Object c(T t10, Object... objArr) {
        try {
            return b(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object d(T t10, Object... objArr) {
        try {
            return a(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object a(T t10, Object... objArr) throws InvocationTargetException {
        Method a10 = a(t10.getClass());
        if (a10 != null) {
            try {
                return a10.invoke(t10, objArr);
            } catch (IllegalAccessException e10) {
                AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + a10);
                assertionError.initCause(e10);
                throw assertionError;
            }
        }
        throw new AssertionError("Method " + this.f29944b + " not supported for object " + t10);
    }

    private Method a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f29944b;
        if (str != null) {
            Method a10 = a(cls, str, this.f29945c);
            if (a10 == null || (cls2 = this.f29943a) == null || cls2.isAssignableFrom(a10.getReturnType())) {
                return a10;
            }
            return null;
        }
        return null;
    }

    private static Method a(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
            } catch (NoSuchMethodException unused) {
            }
            return method;
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }
}
