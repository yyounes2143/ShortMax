package com.facebook.cache.disk;

import androidx.annotation.VisibleForTesting;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.cache.disk.b;
import com.facebook.common.statfs.StatFsHelper;
import g2.f;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import k2.h;
/* compiled from: DiskStorageCache.java */
/* loaded from: classes3.dex */
public class c implements g2.e, h2.a {

    /* renamed from: r  reason: collision with root package name */
    private static final Class<?> f15250r = c.class;

    /* renamed from: s  reason: collision with root package name */
    private static final long f15251s = TimeUnit.HOURS.toMillis(2);

    /* renamed from: t  reason: collision with root package name */
    private static final long f15252t = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a  reason: collision with root package name */
    private final long f15253a;

    /* renamed from: b  reason: collision with root package name */
    private final long f15254b;

    /* renamed from: c  reason: collision with root package name */
    private final CountDownLatch f15255c;

    /* renamed from: d  reason: collision with root package name */
    private long f15256d;

    /* renamed from: e  reason: collision with root package name */
    private final CacheEventListener f15257e;
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    final Set<String> f15258f;

    /* renamed from: g  reason: collision with root package name */
    private long f15259g;

    /* renamed from: h  reason: collision with root package name */
    private final long f15260h;

    /* renamed from: i  reason: collision with root package name */
    private final StatFsHelper f15261i;

    /* renamed from: j  reason: collision with root package name */
    private final com.facebook.cache.disk.b f15262j;

    /* renamed from: k  reason: collision with root package name */
    private final g2.d f15263k;

    /* renamed from: l  reason: collision with root package name */
    private final CacheErrorLogger f15264l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f15265m;

    /* renamed from: n  reason: collision with root package name */
    private final b f15266n;

    /* renamed from: o  reason: collision with root package name */
    private final q2.a f15267o;

    /* renamed from: p  reason: collision with root package name */
    private final Object f15268p = new Object();

    /* renamed from: q  reason: collision with root package name */
    private boolean f15269q;

    /* compiled from: DiskStorageCache.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (c.this.f15268p) {
                c.this.o();
            }
            c.this.f15269q = true;
            c.this.f15255c.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskStorageCache.java */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f15271a = false;

        /* renamed from: b  reason: collision with root package name */
        private long f15272b = -1;

        /* renamed from: c  reason: collision with root package name */
        private long f15273c = -1;

        b() {
        }

        public synchronized long a() {
            return this.f15273c;
        }

        public synchronized long b() {
            return this.f15272b;
        }

        public synchronized void c(long j10, long j11) {
            if (this.f15271a) {
                this.f15272b += j10;
                this.f15273c += j11;
            }
        }

        public synchronized boolean d() {
            return this.f15271a;
        }

        public synchronized void e() {
            this.f15271a = false;
            this.f15273c = -1L;
            this.f15272b = -1L;
        }

        public synchronized void f(long j10, long j11) {
            this.f15273c = j11;
            this.f15272b = j10;
            this.f15271a = true;
        }
    }

    /* compiled from: DiskStorageCache.java */
    /* renamed from: com.facebook.cache.disk.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0259c {

        /* renamed from: a  reason: collision with root package name */
        public final long f15274a;

        /* renamed from: b  reason: collision with root package name */
        public final long f15275b;

        /* renamed from: c  reason: collision with root package name */
        public final long f15276c;

        public C0259c(long j10, long j11, long j12) {
            this.f15274a = j10;
            this.f15275b = j11;
            this.f15276c = j12;
        }
    }

    public c(com.facebook.cache.disk.b bVar, g2.d dVar, C0259c c0259c, CacheEventListener cacheEventListener, CacheErrorLogger cacheErrorLogger, h2.b bVar2, Executor executor, boolean z10) {
        this.f15253a = c0259c.f15275b;
        long j10 = c0259c.f15276c;
        this.f15254b = j10;
        this.f15256d = j10;
        this.f15261i = StatFsHelper.d();
        this.f15262j = bVar;
        this.f15263k = dVar;
        this.f15259g = -1L;
        this.f15257e = cacheEventListener;
        this.f15260h = c0259c.f15274a;
        this.f15264l = cacheErrorLogger;
        this.f15266n = new b();
        this.f15267o = q2.d.a();
        this.f15265m = z10;
        this.f15258f = new HashSet();
        if (bVar2 != null) {
            bVar2.a(this);
        }
        if (z10) {
            this.f15255c = new CountDownLatch(1);
            executor.execute(new a());
            return;
        }
        this.f15255c = new CountDownLatch(0);
    }

    private com.facebook.binaryresource.a k(b.InterfaceC0258b interfaceC0258b, f2.a aVar, String str) throws IOException {
        com.facebook.binaryresource.a B;
        synchronized (this.f15268p) {
            B = interfaceC0258b.B(aVar);
            this.f15258f.add(str);
            this.f15266n.c(B.size(), 1L);
        }
        return B;
    }

    private void l(long j10, CacheEventListener.EvictionReason evictionReason) throws IOException {
        try {
            Collection<b.a> m10 = m(this.f15262j.getEntries());
            long b10 = this.f15266n.b();
            long j11 = b10 - j10;
            int i10 = 0;
            long j12 = 0;
            for (b.a aVar : m10) {
                if (j12 > j11) {
                    break;
                }
                long a10 = this.f15262j.a(aVar);
                this.f15258f.remove(aVar.getId());
                if (a10 > 0) {
                    i10++;
                    j12 += a10;
                    f e10 = f.a().j(aVar.getId()).g(evictionReason).i(a10).f(b10 - j12).e(j10);
                    CacheEventListener cacheEventListener = this.f15257e;
                    if (cacheEventListener != null) {
                        cacheEventListener.c(e10);
                    }
                    e10.b();
                }
            }
            this.f15266n.c(-j12, -i10);
            this.f15262j.d();
        } catch (IOException e11) {
            CacheErrorLogger cacheErrorLogger = this.f15264l;
            CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.EVICTION;
            Class<?> cls = f15250r;
            cacheErrorLogger.a(cacheErrorCategory, cls, "evictAboveSize: " + e11.getMessage(), e11);
            throw e11;
        }
    }

    private Collection<b.a> m(Collection<b.a> collection) {
        long now = this.f15267o.now() + f15251s;
        ArrayList arrayList = new ArrayList(collection.size());
        ArrayList arrayList2 = new ArrayList(collection.size());
        for (b.a aVar : collection) {
            if (aVar.getTimestamp() > now) {
                arrayList.add(aVar);
            } else {
                arrayList2.add(aVar);
            }
        }
        Collections.sort(arrayList2, this.f15263k.get());
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    private void n() throws IOException {
        synchronized (this.f15268p) {
            try {
                boolean o10 = o();
                r();
                long b10 = this.f15266n.b();
                if (b10 > this.f15256d && !o10) {
                    this.f15266n.e();
                    o();
                }
                long j10 = this.f15256d;
                if (b10 > j10) {
                    l((j10 * 9) / 10, CacheEventListener.EvictionReason.CACHE_FULL);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        long now = this.f15267o.now();
        if (this.f15266n.d()) {
            long j10 = this.f15259g;
            if (j10 != -1 && now - j10 <= f15252t) {
                return false;
            }
        }
        return p();
    }

    private boolean p() {
        Set<String> set;
        long j10;
        long now = this.f15267o.now();
        long j11 = f15251s + now;
        if (this.f15265m && this.f15258f.isEmpty()) {
            set = this.f15258f;
        } else if (this.f15265m) {
            set = new HashSet<>();
        } else {
            set = null;
        }
        try {
            long j12 = 0;
            long j13 = -1;
            int i10 = 0;
            boolean z10 = false;
            int i11 = 0;
            int i12 = 0;
            for (b.a aVar : this.f15262j.getEntries()) {
                i11++;
                j12 += aVar.getSize();
                if (aVar.getTimestamp() > j11) {
                    i12++;
                    i10 = (int) (i10 + aVar.getSize());
                    j10 = j11;
                    j13 = Math.max(aVar.getTimestamp() - now, j13);
                    z10 = true;
                } else {
                    j10 = j11;
                    if (this.f15265m) {
                        h.g(set);
                        set.add(aVar.getId());
                    }
                }
                j11 = j10;
            }
            if (z10) {
                this.f15264l.a(CacheErrorLogger.CacheErrorCategory.READ_INVALID_ENTRY, f15250r, "Future timestamp found in " + i12 + " files , with a total size of " + i10 + " bytes, and a maximum time delta of " + j13 + "ms", null);
            }
            long j14 = i11;
            if (this.f15266n.a() != j14 || this.f15266n.b() != j12) {
                if (this.f15265m && this.f15258f != set) {
                    h.g(set);
                    this.f15258f.clear();
                    this.f15258f.addAll(set);
                }
                this.f15266n.f(j12, j14);
            }
            this.f15259g = now;
            return true;
        } catch (IOException e10) {
            this.f15264l.a(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, f15250r, "calcFileCacheSize: " + e10.getMessage(), e10);
            return false;
        }
    }

    private b.InterfaceC0258b q(String str, f2.a aVar) throws IOException {
        n();
        return this.f15262j.b(str, aVar);
    }

    private void r() {
        StatFsHelper.StorageType storageType;
        if (this.f15262j.isExternal()) {
            storageType = StatFsHelper.StorageType.EXTERNAL;
        } else {
            storageType = StatFsHelper.StorageType.INTERNAL;
        }
        if (this.f15261i.f(storageType, this.f15254b - this.f15266n.b())) {
            this.f15256d = this.f15253a;
        } else {
            this.f15256d = this.f15254b;
        }
    }

    @Override // g2.e
    public boolean a(f2.a aVar) {
        synchronized (this.f15268p) {
            try {
                List<String> b10 = f2.b.b(aVar);
                for (int i10 = 0; i10 < b10.size(); i10++) {
                    if (this.f15258f.contains(b10.get(i10))) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // g2.e
    public com.facebook.binaryresource.a b(f2.a aVar, f2.f fVar) throws IOException {
        String a10;
        f d10 = f.a().d(aVar);
        CacheEventListener cacheEventListener = this.f15257e;
        if (cacheEventListener != null) {
            cacheEventListener.b(d10);
        }
        synchronized (this.f15268p) {
            a10 = f2.b.a(aVar);
        }
        d10.j(a10);
        try {
            try {
                b.InterfaceC0258b q10 = q(a10, aVar);
                try {
                    q10.A(fVar, aVar);
                    com.facebook.binaryresource.a k10 = k(q10, aVar, a10);
                    d10.i(k10.size()).f(this.f15266n.b());
                    CacheEventListener cacheEventListener2 = this.f15257e;
                    if (cacheEventListener2 != null) {
                        cacheEventListener2.e(d10);
                    }
                    return k10;
                } finally {
                    if (!q10.z()) {
                        l2.a.e(f15250r, "Failed to delete temp file");
                    }
                }
            } catch (IOException e10) {
                d10.h(e10);
                CacheEventListener cacheEventListener3 = this.f15257e;
                if (cacheEventListener3 != null) {
                    cacheEventListener3.f(d10);
                }
                l2.a.f(f15250r, "Failed inserting a file into the cache", e10);
                throw e10;
            }
        } finally {
            d10.b();
        }
    }

    @Override // g2.e
    public com.facebook.binaryresource.a c(f2.a aVar) {
        com.facebook.binaryresource.a aVar2;
        f d10 = f.a().d(aVar);
        try {
            synchronized (this.f15268p) {
                try {
                    List<String> b10 = f2.b.b(aVar);
                    String str = null;
                    aVar2 = null;
                    for (int i10 = 0; i10 < b10.size(); i10++) {
                        str = b10.get(i10);
                        d10.j(str);
                        aVar2 = this.f15262j.f(str, aVar);
                        if (aVar2 != null) {
                            break;
                        }
                    }
                    if (aVar2 == null) {
                        CacheEventListener cacheEventListener = this.f15257e;
                        if (cacheEventListener != null) {
                            cacheEventListener.d(d10);
                        }
                        this.f15258f.remove(str);
                    } else {
                        h.g(str);
                        CacheEventListener cacheEventListener2 = this.f15257e;
                        if (cacheEventListener2 != null) {
                            cacheEventListener2.g(d10);
                        }
                        this.f15258f.add(str);
                    }
                } finally {
                }
            }
            return aVar2;
        } catch (IOException e10) {
            this.f15264l.a(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, f15250r, "getResource", e10);
            d10.h(e10);
            CacheEventListener cacheEventListener3 = this.f15257e;
            if (cacheEventListener3 != null) {
                cacheEventListener3.a(d10);
            }
            return null;
        } finally {
            d10.b();
        }
    }

    @Override // g2.e
    public void d(f2.a aVar) {
        synchronized (this.f15268p) {
            try {
                List<String> b10 = f2.b.b(aVar);
                for (int i10 = 0; i10 < b10.size(); i10++) {
                    String str = b10.get(i10);
                    this.f15262j.remove(str);
                    this.f15258f.remove(str);
                }
            } catch (IOException e10) {
                CacheErrorLogger cacheErrorLogger = this.f15264l;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.DELETE_FILE;
                Class<?> cls = f15250r;
                cacheErrorLogger.a(cacheErrorCategory, cls, "delete: " + e10.getMessage(), e10);
            }
        }
    }

    @Override // g2.e
    public boolean e(f2.a aVar) {
        String str;
        IOException e10;
        String str2 = null;
        try {
            try {
                synchronized (this.f15268p) {
                    try {
                        List<String> b10 = f2.b.b(aVar);
                        int i10 = 0;
                        while (i10 < b10.size()) {
                            String str3 = b10.get(i10);
                            if (this.f15262j.e(str3, aVar)) {
                                this.f15258f.add(str3);
                                return true;
                            }
                            i10++;
                            str2 = str3;
                        }
                        return false;
                    } catch (Throwable th2) {
                        str = str2;
                        th = th2;
                        try {
                            throw th;
                        } catch (IOException e11) {
                            e10 = e11;
                            f h10 = f.a().d(aVar).j(str).h(e10);
                            CacheEventListener cacheEventListener = this.f15257e;
                            if (cacheEventListener != null) {
                                cacheEventListener.a(h10);
                            }
                            h10.b();
                            return false;
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e12) {
            str = null;
            e10 = e12;
        }
    }

    @Override // g2.e
    public boolean f(f2.a aVar) {
        synchronized (this.f15268p) {
            if (a(aVar)) {
                return true;
            }
            try {
                List<String> b10 = f2.b.b(aVar);
                for (int i10 = 0; i10 < b10.size(); i10++) {
                    String str = b10.get(i10);
                    if (this.f15262j.c(str, aVar)) {
                        this.f15258f.add(str);
                        return true;
                    }
                }
                return false;
            } catch (IOException unused) {
                return false;
            }
        }
    }
}
