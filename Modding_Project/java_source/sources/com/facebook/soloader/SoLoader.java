package com.facebook.soloader;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.os.StrictMode;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes2.dex */
public class SoLoader {

    /* renamed from: b  reason: collision with root package name */
    static t f16818b;

    /* renamed from: m  reason: collision with root package name */
    private static int f16829m;

    /* renamed from: c  reason: collision with root package name */
    private static final ReentrantReadWriteLock f16819c = new ReentrantReadWriteLock();

    /* renamed from: d  reason: collision with root package name */
    static Context f16820d = null;

    /* renamed from: e  reason: collision with root package name */
    private static volatile w[] f16821e = null;

    /* renamed from: f  reason: collision with root package name */
    private static final AtomicInteger f16822f = new AtomicInteger(0);

    /* renamed from: g  reason: collision with root package name */
    private static y4.i f16823g = null;

    /* renamed from: h  reason: collision with root package name */
    private static final Set<String> f16824h = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: i  reason: collision with root package name */
    private static final Map<String, Object> f16825i = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    private static final Set<String> f16826j = Collections.newSetFromMap(new ConcurrentHashMap());

    /* renamed from: k  reason: collision with root package name */
    private static final Map<String, Object> f16827k = new HashMap();

    /* renamed from: l  reason: collision with root package name */
    private static boolean f16828l = true;

    /* renamed from: n  reason: collision with root package name */
    private static int f16830n = 0;

    /* renamed from: a  reason: collision with root package name */
    static final boolean f16817a = true;

    /* loaded from: classes2.dex */
    public static final class WrongAbiError extends UnsatisfiedLinkError {
        WrongAbiError(Throwable th2, String str) {
            super("APK was built for a different platform. Supported ABIs: " + Arrays.toString(SysUtil.j()) + " error: " + str);
            initCause(th2);
        }
    }

    private static int A(int i10) {
        if ((i10 & 2048) != 0) {
            return 1;
        }
        return 0;
    }

    @SuppressLint({"CatchGeneralException"})
    private static y4.h B(String str, UnsatisfiedLinkError unsatisfiedLinkError, y4.h hVar) {
        o.g("SoLoader", "Running a recovery step for " + str + " due to " + unsatisfiedLinkError.toString());
        ReentrantReadWriteLock reentrantReadWriteLock = f16819c;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (hVar == null) {
                try {
                    hVar = j();
                    if (hVar == null) {
                        o.g("SoLoader", "No recovery strategy");
                        throw unsatisfiedLinkError;
                    }
                } catch (NoBaseApkException e10) {
                    o.c("SoLoader", "Base APK not found during recovery", e10);
                    throw e10;
                } catch (Exception e11) {
                    o.c("SoLoader", "Got an exception during recovery, will throw the initial error instead", e11);
                    throw unsatisfiedLinkError;
                }
            }
            if (C(unsatisfiedLinkError, hVar)) {
                f16822f.getAndIncrement();
                reentrantReadWriteLock.writeLock().unlock();
                return hVar;
            }
            reentrantReadWriteLock.writeLock().unlock();
            o.g("SoLoader", "Failed to recover");
            throw unsatisfiedLinkError;
        } catch (Throwable th2) {
            f16819c.writeLock().unlock();
            throw th2;
        }
    }

    @SuppressLint({"CatchGeneralException", "EmptyCatchBlock"})
    private static boolean C(UnsatisfiedLinkError unsatisfiedLinkError, y4.h hVar) {
        x4.b.h(hVar);
        try {
            boolean a10 = hVar.a(unsatisfiedLinkError, f16821e);
            x4.b.g(null);
            return a10;
        } finally {
        }
    }

    private static void a(ArrayList<w> arrayList, int i10) {
        a aVar = new a(f16820d, i10);
        o.a("SoLoader", "Adding application source: " + aVar.toString());
        arrayList.add(0, aVar);
    }

    @SuppressLint({"CatchGeneralException"})
    private static void b(Context context, ArrayList<w> arrayList, boolean z10) throws IOException {
        if ((f16829m & 8) != 0) {
            return;
        }
        arrayList.add(0, new c(context, "lib-main", !z10));
    }

    private static void c(Context context, ArrayList<w> arrayList) {
        d dVar = new d(context);
        o.a("SoLoader", "validating/adding directApk source: " + dVar.toString());
        if (dVar.o()) {
            arrayList.add(0, dVar);
        }
    }

    private static void d(ArrayList<w> arrayList) {
        String str;
        if (SysUtil.k()) {
            str = "/system/lib64:/vendor/lib64";
        } else {
            str = "/system/lib:/vendor/lib";
        }
        String str2 = System.getenv("LD_LIBRARY_PATH");
        if (str2 != null && !str2.equals("")) {
            str = str2 + ":" + str;
        }
        for (String str3 : new HashSet(Arrays.asList(str.split(":")))) {
            o.a("SoLoader", "adding system library source: " + str3);
            arrayList.add(new f(new File(str3), 2));
        }
    }

    private static void e(Context context, ArrayList<w> arrayList) {
        x xVar = new x();
        o.a("SoLoader", "adding systemLoadWrapper source: " + xVar);
        arrayList.add(0, xVar);
    }

    private static void f() {
        if (q()) {
            return;
        }
        throw new IllegalStateException("SoLoader.init() not yet called");
    }

    private static void g(String str, String str2, int i10, StrictMode.ThreadPolicy threadPolicy) throws UnsatisfiedLinkError {
        boolean z10;
        ReentrantReadWriteLock reentrantReadWriteLock = f16819c;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f16821e != null) {
                reentrantReadWriteLock.readLock().unlock();
                if (threadPolicy == null) {
                    threadPolicy = StrictMode.allowThreadDiskReads();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (f16817a) {
                    if (str2 != null) {
                        Api18TraceUtils.a("SoLoader.loadLibrary[", str2, "]");
                    }
                    Api18TraceUtils.a("SoLoader.loadLibrary[", str, "]");
                }
                try {
                    reentrantReadWriteLock.readLock().lock();
                    try {
                        for (w wVar : f16821e) {
                            if (w(wVar, str, i10, threadPolicy)) {
                                if (z10) {
                                    return;
                                }
                                return;
                            }
                        }
                        throw SoLoaderDSONotFoundError.d(str, f16820d, f16821e);
                    } catch (IOException e10) {
                        SoLoaderULError soLoaderULError = new SoLoaderULError(str, e10.toString());
                        soLoaderULError.initCause(e10);
                        throw soLoaderULError;
                    }
                } finally {
                    if (f16817a) {
                        if (str2 != null) {
                            Api18TraceUtils.b();
                        }
                        Api18TraceUtils.b();
                    }
                    if (z10) {
                        StrictMode.setThreadPolicy(threadPolicy);
                    }
                }
            }
            o.b("SoLoader", "Could not load: " + str + " because SoLoader is not initialized");
            throw new UnsatisfiedLinkError("SoLoader not initialized, couldn't find DSO to load: " + str);
        } finally {
            f16819c.readLock().unlock();
        }
    }

    private static int h(Context context) {
        int i10 = f16830n;
        if (i10 != 0) {
            return i10;
        }
        int i11 = 1;
        if (context == null) {
            o.a("SoLoader", "context is null, fallback to THIRD_PARTY_APP appType");
            return 1;
        }
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        int i12 = applicationInfo.flags;
        if ((i12 & 1) != 0) {
            if ((i12 & 128) != 0) {
                i11 = 3;
            } else {
                i11 = 2;
            }
        }
        o.a("SoLoader", "ApplicationInfo.flags is: " + applicationInfo.flags + " appType is: " + i11);
        return i11;
    }

    private static int i() {
        int i10 = f16830n;
        if (i10 != 1) {
            if (i10 == 2 || i10 == 3) {
                return 1;
            }
            throw new RuntimeException("Unsupported app type, we should not reach here");
        }
        return 0;
    }

    public static void init(Context context, int i10) throws IOException {
        k(context, i10, null);
    }

    private static synchronized y4.h j() {
        y4.h hVar;
        synchronized (SoLoader.class) {
            y4.i iVar = f16823g;
            if (iVar == null) {
                hVar = null;
            } else {
                hVar = iVar.get();
            }
        }
        return hVar;
    }

    public static void k(Context context, int i10, t tVar) throws IOException {
        if (q()) {
            o.g("SoLoader", "SoLoader already initialized");
            return;
        }
        o.g("SoLoader", "Initializing SoLoader: " + i10);
        StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            boolean n10 = n(context);
            f16828l = n10;
            if (n10) {
                int h10 = h(context);
                f16830n = h10;
                if ((i10 & 128) == 0 && SysUtil.l(context, h10)) {
                    i10 |= 8;
                }
                o(context, tVar, i10);
                p(context, i10);
                o.f("SoLoader", "Init SoLoader delegate");
                w4.a.b(new r());
            } else {
                m();
                o.f("SoLoader", "Init System Loader delegate");
                w4.a.b(new w4.c());
            }
            o.g("SoLoader", "SoLoader initialized: " + i10);
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
        } catch (Throwable th2) {
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
            throw th2;
        }
    }

    public static void l(Context context, boolean z10) {
        try {
            k(context, z10 ? 1 : 0, null);
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static void m() {
        if (f16821e != null) {
            return;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f16819c;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (f16821e != null) {
                reentrantReadWriteLock.writeLock().unlock();
                return;
            }
            f16821e = new w[0];
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th2) {
            f16819c.writeLock().unlock();
            throw th2;
        }
    }

    private static boolean n(Context context) {
        String str;
        Bundle bundle = null;
        try {
            str = context.getPackageName();
        } catch (Exception e10) {
            e = e10;
            str = null;
        }
        try {
            bundle = context.getPackageManager().getApplicationInfo(str, 128).metaData;
        } catch (Exception e11) {
            e = e11;
            o.h("SoLoader", "Unexpected issue with package manager (" + str + ")", e);
            return bundle == null ? true : true;
        }
        if (bundle == null && !bundle.getBoolean("com.facebook.soloader.enabled", true)) {
            return false;
        }
    }

    private static synchronized void o(Context context, t tVar, int i10) {
        synchronized (SoLoader.class) {
            if (context != null) {
                try {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext == null) {
                        o.g("SoLoader", "context.getApplicationContext returned null, holding reference to original context.ApplicationSoSource fallbacks to: " + context.getApplicationInfo().nativeLibraryDir);
                    } else {
                        context = applicationContext;
                    }
                    f16820d = context;
                    f16823g = new y4.f(context, A(i10));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (tVar == null && f16818b != null) {
                return;
            }
            if (tVar != null) {
                f16818b = tVar;
            } else {
                f16818b = new n(new u());
            }
        }
    }

    private static void p(Context context, int i10) throws IOException {
        boolean z10;
        boolean z11;
        if (f16821e != null) {
            return;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f16819c;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (f16821e != null) {
                reentrantReadWriteLock.writeLock().unlock();
                return;
            }
            f16829m = i10;
            ArrayList arrayList = new ArrayList();
            boolean z12 = true;
            if ((i10 & 512) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if ((i10 & 1024) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10) {
                e(context, arrayList);
            } else if (z11) {
                d(arrayList);
                arrayList.add(0, new e("base"));
            } else {
                d(arrayList);
                if (context != null) {
                    if ((i10 & 1) != 0) {
                        a(arrayList, i());
                        o.a("SoLoader", "Adding exo package source: lib-main");
                        arrayList.add(0, new k(context, "lib-main"));
                    } else {
                        if (SysUtil.l(context, f16830n)) {
                            c(context, arrayList);
                        }
                        a(arrayList, i());
                        if ((i10 & 4096) == 0) {
                            z12 = false;
                        }
                        b(context, arrayList, z12);
                    }
                }
            }
            w[] wVarArr = (w[]) arrayList.toArray(new w[arrayList.size()]);
            int z13 = z();
            int length = wVarArr.length;
            while (true) {
                int i11 = length - 1;
                if (length > 0) {
                    o.d("SoLoader", "Preparing SO source: " + wVarArr[i11]);
                    boolean z14 = f16817a;
                    if (z14) {
                        Api18TraceUtils.a("SoLoader", "_", wVarArr[i11].getClass().getSimpleName());
                    }
                    wVarArr[i11].e(z13);
                    if (z14) {
                        Api18TraceUtils.b();
                    }
                    length = i11;
                } else {
                    f16821e = wVarArr;
                    f16822f.getAndIncrement();
                    o.d("SoLoader", "init finish: " + f16821e.length + " SO sources prepared");
                    f16819c.writeLock().unlock();
                    return;
                }
            }
        } catch (Throwable th2) {
            f16819c.writeLock().unlock();
            throw th2;
        }
    }

    public static boolean q() {
        boolean z10 = true;
        if (f16821e != null) {
            return true;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f16819c;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (f16821e == null) {
                z10 = false;
            }
            reentrantReadWriteLock.readLock().unlock();
            return z10;
        } catch (Throwable th2) {
            f16819c.readLock().unlock();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"CatchGeneralException", "EmptyCatchBlock"})
    public static void r(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        x4.b.d(str, i10);
        try {
            x4.b.c(null, v(str, null, null, i10 | 1, threadPolicy));
        } finally {
        }
    }

    public static boolean s(String str) {
        if (f16828l) {
            return t(str, 0);
        }
        return w4.a.d(str);
    }

    public static boolean t(String str, int i10) throws UnsatisfiedLinkError {
        Boolean y10 = y(str);
        if (y10 != null) {
            return y10.booleanValue();
        }
        if (!f16828l) {
            return w4.a.d(str);
        }
        if (f16830n != 2) {
        }
        return x(str, i10);
    }

    private static boolean u(String str, String str2, String str3, int i10, StrictMode.ThreadPolicy threadPolicy) {
        y4.h hVar = null;
        while (true) {
            try {
                return v(str, str2, str3, i10, threadPolicy);
            } catch (UnsatisfiedLinkError e10) {
                hVar = B(str, e10, hVar);
            }
        }
    }

    private static boolean v(String str, String str2, String str3, int i10, StrictMode.ThreadPolicy threadPolicy) {
        boolean z10;
        Object obj;
        Object obj2;
        if (!TextUtils.isEmpty(str2) && f16826j.contains(str2)) {
            return false;
        }
        Set<String> set = f16824h;
        if (set.contains(str) && str3 == null) {
            return false;
        }
        synchronized (SoLoader.class) {
            try {
                if (set.contains(str)) {
                    if (str3 == null) {
                        return false;
                    }
                    z10 = true;
                } else {
                    z10 = false;
                }
                Map<String, Object> map = f16825i;
                if (map.containsKey(str)) {
                    obj = map.get(str);
                } else {
                    Object obj3 = new Object();
                    map.put(str, obj3);
                    obj = obj3;
                }
                Map<String, Object> map2 = f16827k;
                if (map2.containsKey(str2)) {
                    obj2 = map2.get(str2);
                } else {
                    Object obj4 = new Object();
                    map2.put(str2, obj4);
                    obj2 = obj4;
                }
                ReentrantReadWriteLock reentrantReadWriteLock = f16819c;
                reentrantReadWriteLock.readLock().lock();
                try {
                    synchronized (obj) {
                        if (!z10) {
                            if (set.contains(str)) {
                                if (str3 == null) {
                                    reentrantReadWriteLock.readLock().unlock();
                                    return false;
                                }
                                z10 = true;
                            }
                            if (!z10) {
                                try {
                                    o.a("SoLoader", "About to load: " + str);
                                    g(str, str2, i10, threadPolicy);
                                    o.a("SoLoader", "Loaded: " + str);
                                    set.add(str);
                                } catch (UnsatisfiedLinkError e10) {
                                    String message = e10.getMessage();
                                    if (message != null && message.contains("unexpected e_machine:")) {
                                        throw new WrongAbiError(e10, message.substring(message.lastIndexOf("unexpected e_machine:")));
                                    }
                                    throw e10;
                                }
                            }
                        }
                        synchronized (obj2) {
                            if ((i10 & 16) == 0 && str3 != null && (TextUtils.isEmpty(str2) || !f16826j.contains(str2))) {
                                boolean z11 = f16817a;
                                if (z11) {
                                    Api18TraceUtils.a("MergedSoMapping.invokeJniOnload[", str2, "]");
                                }
                                try {
                                    try {
                                        o.a("SoLoader", "About to invoke JNI_OnLoad for merged library " + str2 + ", which was merged into " + str);
                                        q.a(str2);
                                        f16826j.add(str2);
                                        if (z11) {
                                            Api18TraceUtils.b();
                                        }
                                    } catch (UnsatisfiedLinkError e11) {
                                        throw new RuntimeException("Failed to call JNI_OnLoad from '" + str2 + "', which has been merged into '" + str + "'.  See comment for details.", e11);
                                    }
                                } catch (Throwable th2) {
                                    if (f16817a) {
                                        Api18TraceUtils.b();
                                    }
                                    throw th2;
                                }
                            }
                        }
                        reentrantReadWriteLock.readLock().unlock();
                        return !z10;
                    }
                } catch (Throwable th3) {
                    f16819c.readLock().unlock();
                    throw th3;
                }
            } finally {
            }
        }
    }

    @SuppressLint({"CatchGeneralException", "EmptyCatchBlock", "MissingSoLoaderLibrary"})
    private static boolean w(w wVar, String str, int i10, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        boolean z10;
        x4.b.l(wVar);
        try {
            if (wVar.d(str, i10, threadPolicy) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            x4.b.k(null);
            return z10;
        } finally {
        }
    }

    @SuppressLint({"CatchGeneralException", "EmptyCatchBlock"})
    private static boolean x(String str, int i10) {
        String str2;
        String b10 = q.b(str);
        if (b10 != null) {
            str2 = b10;
        } else {
            str2 = str;
        }
        x4.b.f(str, b10, i10);
        try {
            boolean u10 = u(System.mapLibraryName(str2), str, b10, i10, null);
            x4.b.e(null, u10);
            return u10;
        } finally {
        }
    }

    private static Boolean y(String str) {
        Boolean valueOf;
        if (f16821e == null) {
            ReentrantReadWriteLock reentrantReadWriteLock = f16819c;
            reentrantReadWriteLock.readLock().lock();
            try {
                if (f16821e == null) {
                    if ("http://www.android.com/".equals(System.getProperty("java.vendor.url"))) {
                        f();
                    } else {
                        synchronized (SoLoader.class) {
                            boolean contains = f16824h.contains(str);
                            boolean z10 = !contains;
                            if (!contains) {
                                System.loadLibrary(str);
                            }
                            valueOf = Boolean.valueOf(z10);
                        }
                        reentrantReadWriteLock.readLock().unlock();
                        return valueOf;
                    }
                }
                reentrantReadWriteLock.readLock().unlock();
                return null;
            } catch (Throwable th2) {
                f16819c.readLock().unlock();
                throw th2;
            }
        }
        return null;
    }

    private static int z() {
        int i10;
        ReentrantReadWriteLock reentrantReadWriteLock = f16819c;
        reentrantReadWriteLock.writeLock().lock();
        try {
            int i11 = f16829m;
            if ((i11 & 2) != 0) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            if ((i11 & 256) != 0) {
                i10 |= 4;
            }
            if ((i11 & 128) == 0) {
                i10 |= 8;
            }
            reentrantReadWriteLock.writeLock().unlock();
            return i10;
        } catch (Throwable th2) {
            f16819c.writeLock().unlock();
            throw th2;
        }
    }
}
