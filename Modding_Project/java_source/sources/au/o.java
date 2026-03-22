package au;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.EventBusException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubscriberMethodFinder.java */
/* loaded from: classes8.dex */
public class o {

    /* renamed from: d  reason: collision with root package name */
    private static final Map<Class<?>, List<n>> f2114d = new ConcurrentHashMap();

    /* renamed from: e  reason: collision with root package name */
    private static final a[] f2115e = new a[4];

    /* renamed from: a  reason: collision with root package name */
    private List<cu.b> f2116a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f2117b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f2118c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SubscriberMethodFinder.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final List<n> f2119a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        final Map<Class, Object> f2120b = new HashMap();

        /* renamed from: c  reason: collision with root package name */
        final Map<String, Class> f2121c = new HashMap();

        /* renamed from: d  reason: collision with root package name */
        final StringBuilder f2122d = new StringBuilder(128);

        /* renamed from: e  reason: collision with root package name */
        Class<?> f2123e;

        /* renamed from: f  reason: collision with root package name */
        Class<?> f2124f;

        /* renamed from: g  reason: collision with root package name */
        boolean f2125g;

        a() {
        }

        private boolean b(Method method, Class<?> cls) {
            this.f2122d.setLength(0);
            this.f2122d.append(method.getName());
            StringBuilder sb2 = this.f2122d;
            sb2.append('>');
            sb2.append(cls.getName());
            String sb3 = this.f2122d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class put = this.f2121c.put(sb3, declaringClass);
            if (put != null && !put.isAssignableFrom(declaringClass)) {
                this.f2121c.put(sb3, put);
                return false;
            }
            return true;
        }

        boolean a(Method method, Class<?> cls) {
            Object put = this.f2120b.put(cls, method);
            if (put == null) {
                return true;
            }
            if (put instanceof Method) {
                if (b((Method) put, cls)) {
                    this.f2120b.put(cls, this);
                } else {
                    throw new IllegalStateException();
                }
            }
            return b(method, cls);
        }

        void c(Class<?> cls) {
            this.f2124f = cls;
            this.f2123e = cls;
            this.f2125g = false;
        }

        void d() {
            if (this.f2125g) {
                this.f2124f = null;
                return;
            }
            Class<? super Object> superclass = this.f2124f.getSuperclass();
            this.f2124f = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.") || name.startsWith("androidx.")) {
                this.f2124f = null;
            }
        }

        void e() {
            this.f2119a.clear();
            this.f2120b.clear();
            this.f2121c.clear();
            this.f2122d.setLength(0);
            this.f2123e = null;
            this.f2124f = null;
            this.f2125g = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(List<cu.b> list, boolean z10, boolean z11) {
        this.f2116a = list;
        this.f2117b = z10;
        this.f2118c = z11;
    }

    private List<n> b(Class<?> cls) {
        a g10 = g();
        g10.c(cls);
        while (g10.f2124f != null) {
            f(g10);
            d(g10);
            g10.d();
        }
        return e(g10);
    }

    private List<n> c(Class<?> cls) {
        a g10 = g();
        g10.c(cls);
        while (g10.f2124f != null) {
            d(g10);
            g10.d();
        }
        return e(g10);
    }

    private void d(a aVar) {
        String str;
        Method[] methods;
        try {
            try {
                methods = aVar.f2124f.getDeclaredMethods();
            } catch (Throwable unused) {
                methods = aVar.f2124f.getMethods();
                aVar.f2125g = true;
            }
            for (Method method : methods) {
                int modifiers = method.getModifiers();
                if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == 1) {
                        l lVar = (l) method.getAnnotation(l.class);
                        if (lVar != null) {
                            Class<?> cls = parameterTypes[0];
                            if (aVar.a(method, cls)) {
                                aVar.f2119a.add(new n(method, cls, lVar.threadMode(), lVar.priority(), lVar.sticky()));
                            }
                        }
                    } else if (this.f2117b && method.isAnnotationPresent(l.class)) {
                        throw new EventBusException("@Subscribe method " + (method.getDeclaringClass().getName() + "." + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                    }
                } else if (this.f2117b && method.isAnnotationPresent(l.class)) {
                    throw new EventBusException((method.getDeclaringClass().getName() + "." + method.getName()) + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
                }
            }
        } catch (LinkageError e10) {
            String str2 = "Could not inspect methods of " + aVar.f2124f.getName();
            if (this.f2118c) {
                str = str2 + ". Please consider using EventBus annotation processor to avoid reflection.";
            } else {
                str = str2 + ". Please make this class visible to EventBus annotation processor to avoid reflection.";
            }
            throw new EventBusException(str, e10);
        }
    }

    private List<n> e(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.f2119a);
        aVar.e();
        synchronized (f2115e) {
            int i10 = 0;
            while (true) {
                if (i10 >= 4) {
                    break;
                }
                try {
                    a[] aVarArr = f2115e;
                    if (aVarArr[i10] == null) {
                        aVarArr[i10] = aVar;
                        break;
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return arrayList;
    }

    private cu.a f(a aVar) {
        aVar.getClass();
        List<cu.b> list = this.f2116a;
        if (list != null) {
            for (cu.b bVar : list) {
                bVar.a(aVar.f2124f);
            }
            return null;
        }
        return null;
    }

    private a g() {
        synchronized (f2115e) {
            for (int i10 = 0; i10 < 4; i10++) {
                try {
                    a[] aVarArr = f2115e;
                    a aVar = aVarArr[i10];
                    if (aVar != null) {
                        aVarArr[i10] = null;
                        return aVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return new a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<n> a(Class<?> cls) {
        List<n> b10;
        Map<Class<?>, List<n>> map = f2114d;
        List<n> list = map.get(cls);
        if (list != null) {
            return list;
        }
        if (this.f2118c) {
            b10 = c(cls);
        } else {
            b10 = b(cls);
        }
        if (!b10.isEmpty()) {
            map.put(cls, b10);
            return b10;
        }
        throw new EventBusException("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
    }
}
