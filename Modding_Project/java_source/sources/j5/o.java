package j5;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import l5.a;
/* compiled from: Uploader.java */
/* loaded from: classes4.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private final Context f60185a;

    /* renamed from: b  reason: collision with root package name */
    private final d5.d f60186b;

    /* renamed from: c  reason: collision with root package name */
    private final k5.d f60187c;

    /* renamed from: d  reason: collision with root package name */
    private final u f60188d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f60189e;

    /* renamed from: f  reason: collision with root package name */
    private final l5.a f60190f;

    /* renamed from: g  reason: collision with root package name */
    private final m5.a f60191g;

    /* renamed from: h  reason: collision with root package name */
    private final m5.a f60192h;

    /* renamed from: i  reason: collision with root package name */
    private final k5.c f60193i;

    public o(Context context, d5.d dVar, k5.d dVar2, u uVar, Executor executor, l5.a aVar, m5.a aVar2, m5.a aVar3, k5.c cVar) {
        this.f60185a = context;
        this.f60186b = dVar;
        this.f60187c = dVar2;
        this.f60188d = uVar;
        this.f60189e = executor;
        this.f60190f = aVar;
        this.f60191g = aVar2;
        this.f60192h = aVar3;
        this.f60193i = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean l(c5.p pVar) {
        return Boolean.valueOf(this.f60187c.n(pVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Iterable m(c5.p pVar) {
        return this.f60187c.X(pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object n(Iterable iterable, c5.p pVar, long j10) {
        this.f60187c.k0(iterable);
        this.f60187c.v0(pVar, this.f60191g.getTime() + j10);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object o(Iterable iterable) {
        this.f60187c.O(iterable);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object p() {
        this.f60193i.d();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object q(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            this.f60193i.l(((Integer) entry.getValue()).intValue(), LogEventDropped.Reason.INVALID_PAYLOD, (String) entry.getKey());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(c5.p pVar, long j10) {
        this.f60187c.v0(pVar, this.f60191g.getTime() + j10);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object s(c5.p pVar, int i10) {
        this.f60188d.a(pVar, i10 + 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(final c5.p pVar, final int i10, Runnable runnable) {
        try {
            try {
                l5.a aVar = this.f60190f;
                final k5.d dVar = this.f60187c;
                Objects.requireNonNull(dVar);
                aVar.a(new a.InterfaceC0862a() { // from class: j5.f
                    @Override // l5.a.InterfaceC0862a
                    public final Object execute() {
                        return Integer.valueOf(k5.d.this.z());
                    }
                });
                if (!k()) {
                    this.f60190f.a(new a.InterfaceC0862a() { // from class: j5.g
                        @Override // l5.a.InterfaceC0862a
                        public final Object execute() {
                            Object s10;
                            s10 = o.this.s(pVar, i10);
                            return s10;
                        }
                    });
                } else {
                    u(pVar, i10);
                }
            } catch (SynchronizationException unused) {
                this.f60188d.a(pVar, i10 + 1);
            }
            runnable.run();
        } catch (Throwable th2) {
            runnable.run();
            throw th2;
        }
    }

    @VisibleForTesting
    public c5.i j(d5.k kVar) {
        l5.a aVar = this.f60190f;
        final k5.c cVar = this.f60193i;
        Objects.requireNonNull(cVar);
        return kVar.a(c5.i.a().i(this.f60191g.getTime()).o(this.f60192h.getTime()).n("GDT_CLIENT_METRICS").h(new c5.h(a5.c.b("proto"), ((f5.a) aVar.a(new a.InterfaceC0862a() { // from class: j5.e
            @Override // l5.a.InterfaceC0862a
            public final Object execute() {
                return k5.c.this.k();
            }
        })).f())).d());
    }

    boolean k() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f60185a.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public BackendResponse u(final c5.p pVar, int i10) {
        BackendResponse b10;
        d5.k kVar = this.f60186b.get(pVar.b());
        long j10 = 0;
        BackendResponse e10 = BackendResponse.e(0L);
        while (true) {
            final long j11 = j10;
            while (((Boolean) this.f60190f.a(new a.InterfaceC0862a() { // from class: j5.h
                @Override // l5.a.InterfaceC0862a
                public final Object execute() {
                    Boolean l10;
                    l10 = o.this.l(pVar);
                    return l10;
                }
            })).booleanValue()) {
                final Iterable<k5.k> iterable = (Iterable) this.f60190f.a(new a.InterfaceC0862a() { // from class: j5.i
                    @Override // l5.a.InterfaceC0862a
                    public final Object execute() {
                        Iterable m10;
                        m10 = o.this.m(pVar);
                        return m10;
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return e10;
                }
                if (kVar == null) {
                    g5.a.b("Uploader", "Unknown backend for %s, deleting event batch for it...", pVar);
                    b10 = BackendResponse.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (k5.k kVar2 : iterable) {
                        arrayList.add(kVar2.b());
                    }
                    if (pVar.e()) {
                        arrayList.add(j(kVar));
                    }
                    b10 = kVar.b(d5.e.a().b(arrayList).c(pVar.c()).a());
                }
                e10 = b10;
                if (e10.c() == BackendResponse.Status.TRANSIENT_ERROR) {
                    this.f60190f.a(new a.InterfaceC0862a() { // from class: j5.j
                        @Override // l5.a.InterfaceC0862a
                        public final Object execute() {
                            Object n10;
                            n10 = o.this.n(iterable, pVar, j11);
                            return n10;
                        }
                    });
                    this.f60188d.b(pVar, i10 + 1, true);
                    return e10;
                }
                this.f60190f.a(new a.InterfaceC0862a() { // from class: j5.k
                    @Override // l5.a.InterfaceC0862a
                    public final Object execute() {
                        Object o10;
                        o10 = o.this.o(iterable);
                        return o10;
                    }
                });
                if (e10.c() == BackendResponse.Status.OK) {
                    j10 = Math.max(j11, e10.b());
                    if (pVar.e()) {
                        this.f60190f.a(new a.InterfaceC0862a() { // from class: j5.l
                            @Override // l5.a.InterfaceC0862a
                            public final Object execute() {
                                Object p10;
                                p10 = o.this.p();
                                return p10;
                            }
                        });
                    }
                } else if (e10.c() == BackendResponse.Status.INVALID_PAYLOAD) {
                    final HashMap hashMap = new HashMap();
                    for (k5.k kVar3 : iterable) {
                        String n10 = kVar3.b().n();
                        if (!hashMap.containsKey(n10)) {
                            hashMap.put(n10, 1);
                        } else {
                            hashMap.put(n10, Integer.valueOf(((Integer) hashMap.get(n10)).intValue() + 1));
                        }
                    }
                    this.f60190f.a(new a.InterfaceC0862a() { // from class: j5.m
                        @Override // l5.a.InterfaceC0862a
                        public final Object execute() {
                            Object q10;
                            q10 = o.this.q(hashMap);
                            return q10;
                        }
                    });
                }
            }
            this.f60190f.a(new a.InterfaceC0862a() { // from class: j5.n
                @Override // l5.a.InterfaceC0862a
                public final Object execute() {
                    Object r10;
                    r10 = o.this.r(pVar, j11);
                    return r10;
                }
            });
            return e10;
        }
    }

    public void v(final c5.p pVar, final int i10, final Runnable runnable) {
        this.f60189e.execute(new Runnable() { // from class: j5.d
            @Override // java.lang.Runnable
            public final void run() {
                o.this.t(pVar, i10, runnable);
            }
        });
    }
}
