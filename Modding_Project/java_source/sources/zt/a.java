package zt;

import android.os.Build;
import android.util.LruCache;
import android.util.Pair;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Collection;
import java.util.function.Consumer;
/* compiled from: BoundaryInterfaceReflectionUtil.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static LruCache<Pair<Method, ClassLoader>, Method> f72333a;

    /* renamed from: b  reason: collision with root package name */
    private static Consumer<Boolean> f72334b;

    /* compiled from: BoundaryInterfaceReflectionUtil.java */
    /* renamed from: zt.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    private static class C0993a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        private final Object f72335a;

        public C0993a(Object obj) {
            this.f72335a = obj;
        }

        public Object a() {
            return this.f72335a;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (obj instanceof C0993a) {
                return this.f72335a.equals(((C0993a) obj).f72335a);
            }
            return this.f72335a.equals(obj);
        }

        public int hashCode() {
            return this.f72335a.hashCode();
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                return a.d(method, this.f72335a.getClass().getClassLoader()).invoke(this.f72335a, objArr);
            } catch (InvocationTargetException e10) {
                throw e10.getTargetException();
            } catch (ReflectiveOperationException e11) {
                throw new RuntimeException("Reflection failed for method " + method, e11);
            }
        }
    }

    public static <T> T a(Class<T> cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(a.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    public static boolean b(Collection<String> collection, String str) {
        if (!collection.contains(str)) {
            if (f()) {
                if (collection.contains(str + ":dev")) {
                }
            }
            return false;
        }
        return true;
    }

    public static InvocationHandler c(Object obj) {
        if (obj == null) {
            return null;
        }
        return new C0993a(obj);
    }

    public static Method d(Method method, ClassLoader classLoader) throws ClassNotFoundException, NoSuchMethodException {
        boolean z10;
        LruCache<Pair<Method, ClassLoader>, Method> lruCache = f72333a;
        if (lruCache != null) {
            Method method2 = lruCache.get(new Pair<>(method, classLoader));
            Consumer<Boolean> consumer = f72334b;
            if (consumer != null) {
                if (method2 != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                consumer.accept(Boolean.valueOf(z10));
            }
            if (method2 != null) {
                return method2;
            }
        }
        Method declaredMethod = Class.forName(method.getDeclaringClass().getName(), true, classLoader).getDeclaredMethod(method.getName(), method.getParameterTypes());
        LruCache<Pair<Method, ClassLoader>, Method> lruCache2 = f72333a;
        if (lruCache2 != null) {
            lruCache2.put(new Pair<>(method, classLoader), declaredMethod);
        }
        return declaredMethod;
    }

    public static Object e(InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return ((C0993a) invocationHandler).a();
    }

    private static boolean f() {
        String str = Build.TYPE;
        if (!"eng".equals(str) && !"userdebug".equals(str)) {
            return false;
        }
        return true;
    }
}
