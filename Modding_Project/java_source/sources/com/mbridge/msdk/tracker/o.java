package com.mbridge.msdk.tracker;

import android.util.Log;
import com.mbridge.msdk.tracker.network.b0;
import com.mbridge.msdk.tracker.network.t;
import com.mbridge.msdk.tracker.network.v;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Network.java */
/* loaded from: classes6.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private r f30395a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30396b;

    /* renamed from: c  reason: collision with root package name */
    private final p f30397c;

    /* renamed from: d  reason: collision with root package name */
    private final w f30398d;

    /* renamed from: e  reason: collision with root package name */
    private final int f30399e;

    /* renamed from: f  reason: collision with root package name */
    private com.mbridge.msdk.tracker.network.u f30400f;

    /* renamed from: g  reason: collision with root package name */
    private final Executor f30401g;

    /* compiled from: Network.java */
    /* loaded from: classes6.dex */
    class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "MBridgeReportResponseThread");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Network.java */
    /* loaded from: classes6.dex */
    public static final class b implements v.a {

        /* renamed from: a  reason: collision with root package name */
        private final r f30403a;

        /* renamed from: b  reason: collision with root package name */
        private final t f30404b;

        public b(r rVar, t tVar) {
            this.f30403a = rVar;
            this.f30404b = tVar;
        }

        @Override // com.mbridge.msdk.tracker.network.v.a
        public void a(b0 b0Var) {
            int a10;
            int b10;
            String message;
            if (y.a(this.f30403a)) {
                if (b0Var == null) {
                    message = "";
                    a10 = 0;
                    b10 = 0;
                } else {
                    try {
                        a10 = b0Var.a();
                        b10 = b0Var.b();
                        message = b0Var.getMessage();
                    } catch (Exception e10) {
                        if (com.mbridge.msdk.tracker.a.f30196a) {
                            Log.e("TrackManager", "onErrorResponse error", e10);
                            return;
                        }
                        return;
                    }
                }
                this.f30403a.a(this.f30404b, 0, String.format("volleyError:%s,responseCode:%s,errorMessage:%s", Integer.valueOf(a10), Integer.valueOf(b10), message));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Network.java */
    /* loaded from: classes6.dex */
    public static final class c implements v.b {

        /* renamed from: a  reason: collision with root package name */
        private final r f30405a;

        /* renamed from: b  reason: collision with root package name */
        private final t f30406b;

        public c(r rVar, t tVar) {
            this.f30405a = rVar;
            this.f30406b = tVar;
        }

        @Override // com.mbridge.msdk.tracker.network.v.b
        public void a(Object obj) {
            if (y.a(this.f30405a)) {
                try {
                    this.f30405a.a(this.f30406b);
                } catch (Exception e10) {
                    if (com.mbridge.msdk.tracker.a.f30196a) {
                        Log.e("TrackManager", "onResponse error", e10);
                    }
                }
            }
        }
    }

    public o(int i10, p pVar, w wVar, int i11) {
        this.f30396b = i10;
        this.f30397c = pVar;
        this.f30398d = wVar;
        this.f30399e = i11;
        this.f30401g = new ThreadPoolExecutor(i10, i10, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
    }

    public void a(r rVar) {
        this.f30395a = rVar;
    }

    public void b(t tVar, Map<String, String> map, boolean z10) {
        if (y.b(map)) {
            r rVar = this.f30395a;
            if (rVar != null) {
                try {
                    rVar.a(tVar, 0, "params is null");
                    return;
                } catch (Exception e10) {
                    if (com.mbridge.msdk.tracker.a.f30196a) {
                        Log.e("TrackManager", "send error", e10);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        try {
            a();
            this.f30400f.a(a(tVar, map, z10));
        } catch (Exception e11) {
            if (com.mbridge.msdk.tracker.a.f30196a) {
                Log.e("TrackManager", "send error", e11);
            }
            if (y.a(this.f30395a)) {
                this.f30395a.a(tVar, 0, e11.getMessage());
            }
        }
    }

    private v<Object> a(t tVar, Map<String, String> map, boolean z10) {
        v<Object> vVar;
        if (this.f30399e == 1) {
            vVar = new v<>(this.f30397c.c(), 1, this.f30397c.a());
        } else {
            vVar = new v<>(this.f30397c.c(), 1);
        }
        vVar.a(map);
        vVar.a(false);
        vVar.c(true);
        vVar.b(true);
        vVar.a(this.f30398d);
        vVar.a(z10 ? t.a.HIGH : t.a.NORMAL);
        vVar.a((v.b<Object>) new c(this.f30395a, tVar));
        vVar.a((v.a) new b(this.f30395a, tVar));
        return vVar;
    }

    private void a() {
        if (y.a(this.f30400f)) {
            return;
        }
        com.mbridge.msdk.tracker.network.u a10 = com.mbridge.msdk.tracker.network.toolbox.o.a(new com.mbridge.msdk.tracker.network.toolbox.b(this.f30397c.b()), new com.mbridge.msdk.tracker.network.f(this.f30401g), this.f30396b, null);
        this.f30400f = a10;
        a10.b();
    }
}
