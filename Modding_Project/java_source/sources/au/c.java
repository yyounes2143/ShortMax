package au;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import org.greenrobot.eventbus.EventBusException;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: EventBus.java */
/* loaded from: classes8.dex */
public class c {

    /* renamed from: s  reason: collision with root package name */
    static volatile c f2050s;

    /* renamed from: t  reason: collision with root package name */
    private static final d f2051t = new d();

    /* renamed from: u  reason: collision with root package name */
    private static final Map<Class<?>, List<Class<?>>> f2052u = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, CopyOnWriteArrayList<p>> f2053a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Object, List<Class<?>>> f2054b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, Object> f2055c;

    /* renamed from: d  reason: collision with root package name */
    private final ThreadLocal<C0074c> f2056d;

    /* renamed from: e  reason: collision with root package name */
    private final g f2057e;

    /* renamed from: f  reason: collision with root package name */
    private final k f2058f;

    /* renamed from: g  reason: collision with root package name */
    private final au.b f2059g;

    /* renamed from: h  reason: collision with root package name */
    private final au.a f2060h;

    /* renamed from: i  reason: collision with root package name */
    private final o f2061i;

    /* renamed from: j  reason: collision with root package name */
    private final ExecutorService f2062j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f2063k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f2064l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f2065m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f2066n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f2067o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f2068p;

    /* renamed from: q  reason: collision with root package name */
    private final int f2069q;

    /* renamed from: r  reason: collision with root package name */
    private final f f2070r;

    /* compiled from: EventBus.java */
    /* loaded from: classes8.dex */
    class a extends ThreadLocal<C0074c> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public C0074c initialValue() {
            return new C0074c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventBus.java */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2072a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f2072a = iArr;
            try {
                iArr[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2072a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2072a[ThreadMode.MAIN_ORDERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2072a[ThreadMode.BACKGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2072a[ThreadMode.ASYNC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventBus.java */
    /* renamed from: au.c$c  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0074c {

        /* renamed from: a  reason: collision with root package name */
        final List<Object> f2073a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        boolean f2074b;

        /* renamed from: c  reason: collision with root package name */
        boolean f2075c;

        /* renamed from: d  reason: collision with root package name */
        p f2076d;

        /* renamed from: e  reason: collision with root package name */
        Object f2077e;

        /* renamed from: f  reason: collision with root package name */
        boolean f2078f;

        C0074c() {
        }
    }

    public c() {
        this(f2051t);
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    public static d b() {
        return new d();
    }

    private void c(p pVar, Object obj) {
        if (obj != null) {
            o(pVar, obj, j());
        }
    }

    public static c d() {
        c cVar = f2050s;
        if (cVar == null) {
            synchronized (c.class) {
                try {
                    cVar = f2050s;
                    if (cVar == null) {
                        cVar = new c();
                        f2050s = cVar;
                    }
                } finally {
                }
            }
        }
        return cVar;
    }

    private void g(p pVar, Object obj, Throwable th2) {
        if (obj instanceof m) {
            if (this.f2064l) {
                f fVar = this.f2070r;
                Level level = Level.SEVERE;
                fVar.b(level, "SubscriberExceptionEvent subscriber " + pVar.f2126a.getClass() + " threw an exception", th2);
                m mVar = (m) obj;
                f fVar2 = this.f2070r;
                fVar2.b(level, "Initial event " + mVar.f2106c + " caused exception in " + mVar.f2107d, mVar.f2105b);
            }
        } else if (!this.f2063k) {
            if (this.f2064l) {
                f fVar3 = this.f2070r;
                Level level2 = Level.SEVERE;
                fVar3.b(level2, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + pVar.f2126a.getClass(), th2);
            }
            if (this.f2066n) {
                l(new m(this, th2, obj, pVar.f2126a));
            }
        } else {
            throw new EventBusException("Invoking subscriber failed", th2);
        }
    }

    private boolean j() {
        g gVar = this.f2057e;
        if (gVar != null && !gVar.a()) {
            return false;
        }
        return true;
    }

    private static List<Class<?>> k(Class<?> cls) {
        List<Class<?>> list;
        Map<Class<?>, List<Class<?>>> map = f2052u;
        synchronized (map) {
            try {
                list = map.get(cls);
                if (list == null) {
                    list = new ArrayList<>();
                    for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                        list.add(cls2);
                        a(list, cls2.getInterfaces());
                    }
                    f2052u.put(cls, list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return list;
    }

    private void m(Object obj, C0074c c0074c) throws Error {
        boolean n10;
        Class<?> cls = obj.getClass();
        if (this.f2068p) {
            List<Class<?>> k10 = k(cls);
            int size = k10.size();
            n10 = false;
            for (int i10 = 0; i10 < size; i10++) {
                n10 |= n(obj, c0074c, k10.get(i10));
            }
        } else {
            n10 = n(obj, c0074c, cls);
        }
        if (!n10) {
            if (this.f2065m) {
                this.f2070r.a(Level.FINE, "No subscribers registered for event " + cls);
            }
            if (this.f2067o && cls != h.class && cls != m.class) {
                l(new h(this, obj));
            }
        }
    }

    private boolean n(Object obj, C0074c c0074c, Class<?> cls) {
        CopyOnWriteArrayList<p> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f2053a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator<p> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            p next = it.next();
            c0074c.f2077e = obj;
            c0074c.f2076d = next;
            try {
                o(next, obj, c0074c.f2075c);
                if (c0074c.f2078f) {
                    return true;
                }
            } finally {
                c0074c.f2077e = null;
                c0074c.f2076d = null;
                c0074c.f2078f = false;
            }
        }
        return true;
    }

    private void o(p pVar, Object obj, boolean z10) {
        int i10 = b.f2072a[pVar.f2127b.f2109b.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 == 5) {
                            this.f2060h.a(pVar, obj);
                            return;
                        }
                        throw new IllegalStateException("Unknown thread mode: " + pVar.f2127b.f2109b);
                    } else if (z10) {
                        this.f2059g.a(pVar, obj);
                        return;
                    } else {
                        i(pVar, obj);
                        return;
                    }
                }
                k kVar = this.f2058f;
                if (kVar != null) {
                    kVar.a(pVar, obj);
                    return;
                } else {
                    i(pVar, obj);
                    return;
                }
            } else if (z10) {
                i(pVar, obj);
                return;
            } else {
                this.f2058f.a(pVar, obj);
                return;
            }
        }
        i(pVar, obj);
    }

    private void q(Object obj, n nVar) {
        Class<?> cls = nVar.f2110c;
        p pVar = new p(obj, nVar);
        CopyOnWriteArrayList<p> copyOnWriteArrayList = this.f2053a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f2053a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(pVar)) {
            throw new EventBusException("Subscriber " + obj.getClass() + " already registered to event " + cls);
        }
        int size = copyOnWriteArrayList.size();
        for (int i10 = 0; i10 <= size; i10++) {
            if (i10 == size || nVar.f2111d > copyOnWriteArrayList.get(i10).f2127b.f2111d) {
                copyOnWriteArrayList.add(i10, pVar);
                break;
            }
        }
        List<Class<?>> list = this.f2054b.get(obj);
        if (list == null) {
            list = new ArrayList<>();
            this.f2054b.put(obj, list);
        }
        list.add(cls);
        if (nVar.f2112e) {
            if (this.f2068p) {
                for (Map.Entry<Class<?>, Object> entry : this.f2055c.entrySet()) {
                    if (cls.isAssignableFrom(entry.getKey())) {
                        c(pVar, entry.getValue());
                    }
                }
                return;
            }
            c(pVar, this.f2055c.get(cls));
        }
    }

    private void s(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<p> copyOnWriteArrayList = this.f2053a.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i10 = 0;
            while (i10 < size) {
                p pVar = copyOnWriteArrayList.get(i10);
                if (pVar.f2126a == obj) {
                    pVar.f2128c = false;
                    copyOnWriteArrayList.remove(i10);
                    i10--;
                    size--;
                }
                i10++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExecutorService e() {
        return this.f2062j;
    }

    public f f() {
        return this.f2070r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(i iVar) {
        Object obj = iVar.f2099a;
        p pVar = iVar.f2100b;
        i.b(iVar);
        if (pVar.f2128c) {
            i(pVar, obj);
        }
    }

    void i(p pVar, Object obj) {
        try {
            pVar.f2127b.f2108a.invoke(pVar.f2126a, obj);
        } catch (IllegalAccessException e10) {
            throw new IllegalStateException("Unexpected exception", e10);
        } catch (InvocationTargetException e11) {
            g(pVar, obj, e11.getCause());
        }
    }

    public void l(Object obj) {
        C0074c c0074c = this.f2056d.get();
        List<Object> list = c0074c.f2073a;
        list.add(obj);
        if (!c0074c.f2074b) {
            c0074c.f2075c = j();
            c0074c.f2074b = true;
            if (c0074c.f2078f) {
                throw new EventBusException("Internal error. Abort state was not reset");
            }
            while (true) {
                try {
                    if (!list.isEmpty()) {
                        m(list.remove(0), c0074c);
                    } else {
                        return;
                    }
                } finally {
                    c0074c.f2074b = false;
                    c0074c.f2075c = false;
                }
            }
        }
    }

    public void p(Object obj) {
        if (bu.b.c() && !bu.b.a()) {
            throw new RuntimeException("It looks like you are using EventBus on Android, make sure to add the \"eventbus\" Android library to your dependencies.");
        }
        List<n> a10 = this.f2061i.a(obj.getClass());
        synchronized (this) {
            try {
                for (n nVar : a10) {
                    q(obj, nVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public synchronized void r(Object obj) {
        try {
            List<Class<?>> list = this.f2054b.get(obj);
            if (list != null) {
                for (Class<?> cls : list) {
                    s(obj, cls);
                }
                this.f2054b.remove(obj);
            } else {
                f fVar = this.f2070r;
                Level level = Level.WARNING;
                fVar.a(level, "Subscriber to unregister was not registered before: " + obj.getClass());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public String toString() {
        return "EventBus[indexCount=" + this.f2069q + ", eventInheritance=" + this.f2068p + "]";
    }

    c(d dVar) {
        this.f2056d = new a();
        this.f2070r = dVar.a();
        this.f2053a = new HashMap();
        this.f2054b = new HashMap();
        this.f2055c = new ConcurrentHashMap();
        g b10 = dVar.b();
        this.f2057e = b10;
        this.f2058f = b10 != null ? b10.b(this) : null;
        this.f2059g = new au.b(this);
        this.f2060h = new au.a(this);
        List<cu.b> list = dVar.f2089j;
        this.f2069q = list != null ? list.size() : 0;
        this.f2061i = new o(dVar.f2089j, dVar.f2087h, dVar.f2086g);
        this.f2064l = dVar.f2080a;
        this.f2065m = dVar.f2081b;
        this.f2066n = dVar.f2082c;
        this.f2067o = dVar.f2083d;
        this.f2063k = dVar.f2084e;
        this.f2068p = dVar.f2085f;
        this.f2062j = dVar.f2088i;
    }
}
