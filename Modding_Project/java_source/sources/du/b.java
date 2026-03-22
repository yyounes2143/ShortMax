package du;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import org.slf4j.ILoggerFactory;
import org.slf4j.helpers.c;
import org.slf4j.helpers.d;
import org.slf4j.impl.StaticLoggerBinder;
/* compiled from: LoggerFactory.java */
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static volatile int f50604a;

    /* renamed from: b  reason: collision with root package name */
    static final c f50605b = new c();

    /* renamed from: c  reason: collision with root package name */
    static final org.slf4j.helpers.a f50606c = new org.slf4j.helpers.a();

    /* renamed from: d  reason: collision with root package name */
    static boolean f50607d = d.f("slf4j.detectLoggerNameMismatch");

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f50608e = {"1.6", "1.7"};

    /* renamed from: f  reason: collision with root package name */
    private static String f50609f = "org/slf4j/impl/StaticLoggerBinder.class";

    private b() {
    }

    private static final void a() {
        Set<URL> set;
        try {
            try {
                if (!l()) {
                    set = f();
                    t(set);
                } else {
                    set = null;
                }
                StaticLoggerBinder.getSingleton();
                f50604a = 3;
                s(set);
            } catch (Exception e10) {
                e(e10);
                throw new IllegalStateException("Unexpected initialization failure", e10);
            } catch (NoClassDefFoundError e11) {
                if (m(e11.getMessage())) {
                    f50604a = 4;
                    d.c("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
                    d.c("Defaulting to no-operation (NOP) logger implementation");
                    d.c("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
                } else {
                    e(e11);
                    throw e11;
                }
            } catch (NoSuchMethodError e12) {
                String message = e12.getMessage();
                if (message != null && message.contains("org.slf4j.impl.StaticLoggerBinder.getSingleton()")) {
                    f50604a = 2;
                    d.c("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                    d.c("Your binding is version 1.5.5 or earlier.");
                    d.c("Upgrade your binding to version 1.6.x.");
                }
                throw e12;
            }
            p();
        } catch (Throwable th2) {
            p();
            throw th2;
        }
    }

    private static void b(eu.c cVar, int i10) {
        if (cVar.a().e()) {
            c(i10);
        } else if (!cVar.a().f()) {
            d();
        }
    }

    private static void c(int i10) {
        d.c("A number (" + i10 + ") of logging calls during the initialization phase have been intercepted and are");
        d.c("now being replayed. These are subject to the filtering rules of the underlying logging system.");
        d.c("See also http://www.slf4j.org/codes.html#replay");
    }

    private static void d() {
        d.c("The following set of substitute loggers may have been accessed");
        d.c("during the initialization phase. Logging calls during this");
        d.c("phase were not honored. However, subsequent logging calls to these");
        d.c("loggers will work as normally expected.");
        d.c("See also http://www.slf4j.org/codes.html#substituteLogger");
    }

    static void e(Throwable th2) {
        f50604a = 2;
        d.d("Failed to instantiate SLF4J LoggerFactory", th2);
    }

    static Set<URL> f() {
        Enumeration<URL> resources;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = b.class.getClassLoader();
            if (classLoader == null) {
                resources = ClassLoader.getSystemResources(f50609f);
            } else {
                resources = classLoader.getResources(f50609f);
            }
            while (resources.hasMoreElements()) {
                linkedHashSet.add(resources.nextElement());
            }
        } catch (IOException e10) {
            d.d("Error getting resources from path", e10);
        }
        return linkedHashSet;
    }

    private static void g() {
        c cVar = f50605b;
        synchronized (cVar) {
            try {
                cVar.e();
                for (org.slf4j.helpers.b bVar : cVar.d()) {
                    bVar.i(j(bVar.getName()));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static ILoggerFactory h() {
        if (f50604a == 0) {
            synchronized (b.class) {
                try {
                    if (f50604a == 0) {
                        f50604a = 1;
                        o();
                    }
                } finally {
                }
            }
        }
        int i10 = f50604a;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4) {
                        return f50606c;
                    }
                    throw new IllegalStateException("Unreachable code");
                }
                return StaticLoggerBinder.getSingleton().getLoggerFactory();
            }
            throw new IllegalStateException("org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
        }
        return f50605b;
    }

    public static a i(Class<?> cls) {
        Class<?> a10;
        a j10 = j(cls.getName());
        if (f50607d && (a10 = d.a()) != null && n(cls, a10)) {
            d.c(String.format("Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\".", j10.getName(), a10.getName()));
            d.c("See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
        }
        return j10;
    }

    public static a j(String str) {
        return h().a(str);
    }

    private static boolean k(Set<URL> set) {
        if (set.size() > 1) {
            return true;
        }
        return false;
    }

    private static boolean l() {
        String g10 = d.g("java.vendor.url");
        if (g10 == null) {
            return false;
        }
        return g10.toLowerCase().contains("android");
    }

    private static boolean m(String str) {
        if (str == null) {
            return false;
        }
        if (!str.contains("org/slf4j/impl/StaticLoggerBinder") && !str.contains("org.slf4j.impl.StaticLoggerBinder")) {
            return false;
        }
        return true;
    }

    private static boolean n(Class<?> cls, Class<?> cls2) {
        return !cls2.isAssignableFrom(cls);
    }

    private static final void o() {
        a();
        if (f50604a == 3) {
            u();
        }
    }

    private static void p() {
        g();
        q();
        f50605b.b();
    }

    private static void q() {
        LinkedBlockingQueue<eu.c> c10 = f50605b.c();
        int size = c10.size();
        ArrayList<eu.c> arrayList = new ArrayList(128);
        int i10 = 0;
        while (c10.drainTo(arrayList, 128) != 0) {
            for (eu.c cVar : arrayList) {
                r(cVar);
                int i11 = i10 + 1;
                if (i10 == 0) {
                    b(cVar, size);
                }
                i10 = i11;
            }
            arrayList.clear();
        }
    }

    private static void r(eu.c cVar) {
        if (cVar == null) {
            return;
        }
        org.slf4j.helpers.b a10 = cVar.a();
        String name = a10.getName();
        if (!a10.g()) {
            if (!a10.f()) {
                if (a10.e()) {
                    a10.h(cVar);
                    return;
                } else {
                    d.c(name);
                    return;
                }
            }
            return;
        }
        throw new IllegalStateException("Delegate logger cannot be null at this state.");
    }

    private static void s(Set<URL> set) {
        if (set != null && k(set)) {
            d.c("Actual binding is of type [" + StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr() + "]");
        }
    }

    private static void t(Set<URL> set) {
        if (k(set)) {
            d.c("Class path contains multiple SLF4J bindings.");
            Iterator<URL> it = set.iterator();
            while (it.hasNext()) {
                d.c("Found binding in [" + it.next() + "]");
            }
            d.c("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    private static final void u() {
        try {
            String str = StaticLoggerBinder.REQUESTED_API_VERSION;
            boolean z10 = false;
            for (String str2 : f50608e) {
                if (str.startsWith(str2)) {
                    z10 = true;
                }
            }
            if (!z10) {
                d.c("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(f50608e).toString());
                d.c("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
            }
        } catch (NoSuchFieldError unused) {
        } catch (Throwable th2) {
            d.d("Unexpected problem occured during version sanity check", th2);
        }
    }
}
