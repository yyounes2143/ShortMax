package com.applovin.impl;

import com.applovin.impl.q4;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class q4 {

    /* renamed from: h  reason: collision with root package name */
    public static final Executor f9328h = new Executor() { // from class: com.applovin.impl.se
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            AppLovinSdkUtils.runOnUiThread(runnable);
        }
    };

    /* renamed from: i  reason: collision with root package name */
    public static final Executor f9329i = new androidx.credentials.a();

    /* renamed from: b  reason: collision with root package name */
    private final String f9331b;

    /* renamed from: f  reason: collision with root package name */
    private volatile Object f9335f;

    /* renamed from: g  reason: collision with root package name */
    private volatile Object f9336g;

    /* renamed from: a  reason: collision with root package name */
    private final Object f9330a = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final List f9332c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f9333d = false;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f9334e = false;

    /* loaded from: classes2.dex */
    public interface a {
        void a(Object obj);
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(boolean z10, Object obj, Object obj2);
    }

    public q4(String str) {
        this.f9331b = str;
    }

    public String toString() {
        String str;
        if (!this.f9333d) {
            str = "Waiting";
        } else if (this.f9334e) {
            str = "Success -> " + this.f9335f;
        } else {
            str = "Failed -> " + this.f9336g;
        }
        return "Promise(" + b() + ": " + str + ")";
    }

    public static q4 a(String str, Object obj) {
        return new q4(str).b(obj);
    }

    public q4 b(Object obj) {
        a(true, obj, (Object) null);
        return this;
    }

    public boolean c() {
        return this.f9333d;
    }

    public boolean d() {
        return this.f9333d && !this.f9334e;
    }

    private Runnable c(final Executor executor, final b bVar) {
        return new Runnable() { // from class: com.applovin.impl.ue
            @Override // java.lang.Runnable
            public final void run() {
                q4.this.b(executor, bVar);
            }
        };
    }

    public q4 a(Object obj) {
        a(false, (Object) null, obj);
        return this;
    }

    public String b() {
        String str = this.f9331b;
        return str != null ? str : super.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Executor executor, final b bVar) {
        try {
            executor.execute(new Runnable() { // from class: com.applovin.impl.qe
                @Override // java.lang.Runnable
                public final void run() {
                    q4.this.a(bVar);
                }
            });
        } catch (Throwable th2) {
            a(th2);
        }
    }

    public void a(Executor executor, final Runnable runnable) {
        a(executor, new b() { // from class: com.applovin.impl.te
            @Override // com.applovin.impl.q4.b
            public final void a(boolean z10, Object obj, Object obj2) {
                q4.a(runnable, z10, obj, obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Runnable runnable, boolean z10, Object obj, Object obj2) {
        if (z10) {
            runnable.run();
        }
    }

    public void a(Executor executor, final a aVar) {
        a(executor, new b() { // from class: com.applovin.impl.re
            @Override // com.applovin.impl.q4.b
            public final void a(boolean z10, Object obj, Object obj2) {
                q4.a(q4.a.this, z10, obj, obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(a aVar, boolean z10, Object obj, Object obj2) {
        if (z10) {
            return;
        }
        aVar.a(obj2);
    }

    public void a(Executor executor, b bVar) {
        Runnable c10 = c(executor, bVar);
        synchronized (this.f9330a) {
            try {
                if (!this.f9333d) {
                    this.f9332c.add(c10);
                } else {
                    c10.run();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public Object a() {
        k1.a(d());
        return this.f9336g;
    }

    private void a(boolean z10, Object obj, Object obj2) {
        synchronized (this.f9330a) {
            try {
                if (this.f9333d) {
                    return;
                }
                this.f9335f = obj;
                this.f9336g = obj2;
                this.f9334e = z10;
                this.f9333d = true;
                for (Runnable runnable : this.f9332c) {
                    runnable.run();
                }
                this.f9332c.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(b bVar) {
        try {
            bVar.a(this.f9334e, this.f9335f, this.f9336g);
        } catch (Throwable th2) {
            a(th2);
        }
    }

    private void a(Throwable th2) {
        k1.a(th2);
        com.applovin.impl.sdk.k kVar = com.applovin.impl.sdk.k.D0;
        if (kVar != null) {
            q1 E = kVar.E();
            E.a("Promise", "PromiseCallback: " + b(), th2);
        }
    }
}
