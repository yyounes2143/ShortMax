package d8;

import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import d8.p;
import e8.f0;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: UserMetadata.java */
/* loaded from: classes5.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final g f50260a;

    /* renamed from: b  reason: collision with root package name */
    private final CrashlyticsWorkers f50261b;

    /* renamed from: c  reason: collision with root package name */
    private String f50262c;

    /* renamed from: d  reason: collision with root package name */
    private final a f50263d = new a(false);

    /* renamed from: e  reason: collision with root package name */
    private final a f50264e = new a(true);

    /* renamed from: f  reason: collision with root package name */
    private final k f50265f = new k(128);

    /* renamed from: g  reason: collision with root package name */
    private final AtomicMarkableReference<String> f50266g = new AtomicMarkableReference<>(null, false);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UserMetadata.java */
    /* loaded from: classes5.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        final AtomicMarkableReference<e> f50267a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicReference<Runnable> f50268b = new AtomicReference<>(null);

        /* renamed from: c  reason: collision with root package name */
        private final boolean f50269c;

        public a(boolean z10) {
            int i10;
            this.f50269c = z10;
            if (z10) {
                i10 = 8192;
            } else {
                i10 = 1024;
            }
            this.f50267a = new AtomicMarkableReference<>(new e(64, i10), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            this.f50268b.set(null);
            e();
        }

        private void d() {
            Runnable runnable = new Runnable() { // from class: d8.o
                @Override // java.lang.Runnable
                public final void run() {
                    p.a.this.c();
                }
            };
            if (androidx.compose.animation.core.a.a(this.f50268b, null, runnable)) {
                p.this.f50261b.f20845b.f(runnable);
            }
        }

        private void e() {
            Map<String, String> map;
            synchronized (this) {
                try {
                    if (this.f50267a.isMarked()) {
                        map = this.f50267a.getReference().a();
                        AtomicMarkableReference<e> atomicMarkableReference = this.f50267a;
                        atomicMarkableReference.set(atomicMarkableReference.getReference(), false);
                    } else {
                        map = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (map != null) {
                p.this.f50260a.r(p.this.f50262c, map, this.f50269c);
            }
        }

        public Map<String, String> b() {
            return this.f50267a.getReference().a();
        }

        public boolean f(String str, String str2) {
            synchronized (this) {
                try {
                    if (!this.f50267a.getReference().d(str, str2)) {
                        return false;
                    }
                    AtomicMarkableReference<e> atomicMarkableReference = this.f50267a;
                    atomicMarkableReference.set(atomicMarkableReference.getReference(), true);
                    d();
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public p(String str, h8.g gVar, CrashlyticsWorkers crashlyticsWorkers) {
        this.f50262c = str;
        this.f50260a = new g(gVar);
        this.f50261b = crashlyticsWorkers;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(String str, Map map, List list) {
        if (j() != null) {
            this.f50260a.t(str, j());
        }
        if (!map.isEmpty()) {
            this.f50260a.q(str, map);
        }
        if (!list.isEmpty()) {
            this.f50260a.s(str, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(List list) {
        this.f50260a.s(this.f50262c, list);
    }

    public static p m(String str, h8.g gVar, CrashlyticsWorkers crashlyticsWorkers) {
        g gVar2 = new g(gVar);
        p pVar = new p(str, gVar, crashlyticsWorkers);
        pVar.f50263d.f50267a.getReference().e(gVar2.i(str, false));
        pVar.f50264e.f50267a.getReference().e(gVar2.i(str, true));
        pVar.f50266g.set(gVar2.k(str), false);
        pVar.f50265f.c(gVar2.j(str));
        return pVar;
    }

    @Nullable
    public static String n(String str, h8.g gVar) {
        return new g(gVar).k(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        boolean z10;
        String str;
        synchronized (this.f50266g) {
            try {
                z10 = false;
                if (this.f50266g.isMarked()) {
                    str = j();
                    this.f50266g.set(str, false);
                    z10 = true;
                } else {
                    str = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            this.f50260a.t(this.f50262c, str);
        }
    }

    public Map<String, String> g(Map<String, String> map) {
        if (map.isEmpty()) {
            return this.f50263d.b();
        }
        HashMap hashMap = new HashMap(this.f50263d.b());
        int i10 = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String c10 = e.c(entry.getKey(), 1024);
            if (hashMap.size() >= 64 && !hashMap.containsKey(c10)) {
                i10++;
            } else {
                hashMap.put(c10, e.c(entry.getValue(), 1024));
            }
        }
        if (i10 > 0) {
            z7.g f10 = z7.g.f();
            f10.k("Ignored " + i10 + " keys when adding event specific keys. Maximum allowable: 1024");
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public Map<String, String> h() {
        return this.f50264e.b();
    }

    public List<f0.e.d.AbstractC0734e> i() {
        return this.f50265f.a();
    }

    @Nullable
    public String j() {
        return this.f50266g.getReference();
    }

    public boolean p(String str, String str2) {
        return this.f50263d.f(str, str2);
    }

    public boolean q(String str, String str2) {
        return this.f50264e.f(str, str2);
    }

    public void r(final String str) {
        synchronized (this.f50262c) {
            this.f50262c = str;
            final Map<String, String> b10 = this.f50263d.b();
            final List<j> b11 = this.f50265f.b();
            this.f50261b.f20845b.f(new Runnable() { // from class: d8.l
                @Override // java.lang.Runnable
                public final void run() {
                    p.this.k(str, b10, b11);
                }
            });
        }
    }

    public void s(String str) {
        String c10 = e.c(str, 1024);
        synchronized (this.f50266g) {
            try {
                if (CommonUtils.z(c10, this.f50266g.getReference())) {
                    return;
                }
                this.f50266g.set(c10, true);
                this.f50261b.f20845b.f(new Runnable() { // from class: d8.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.this.o();
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public boolean t(List<j> list) {
        synchronized (this.f50265f) {
            try {
                if (!this.f50265f.c(list)) {
                    return false;
                }
                final List<j> b10 = this.f50265f.b();
                this.f50261b.f20845b.f(new Runnable() { // from class: d8.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        p.this.l(b10);
                    }
                });
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
