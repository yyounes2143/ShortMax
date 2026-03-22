package com.applovin.impl;

import android.os.Handler;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class a1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f7292a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f7293b;

    /* renamed from: c  reason: collision with root package name */
    private final Set f7294c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicInteger f7295d = new AtomicInteger();

    /* loaded from: classes2.dex */
    public interface b {
        void a();

        boolean b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f7296a;

        /* renamed from: b  reason: collision with root package name */
        private final b f7297b;

        /* renamed from: c  reason: collision with root package name */
        private final long f7298c;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            String str = this.f7296a;
            String str2 = ((c) obj).f7296a;
            if (str != null) {
                return str.equalsIgnoreCase(str2);
            }
            if (str2 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f7296a;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "CountdownProxy{identifier='" + this.f7296a + "', countdownStepMillis=" + this.f7298c + '}';
        }

        private c(String str, long j10, b bVar) {
            this.f7296a = str;
            this.f7298c = j10;
            this.f7297b = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public b a() {
            return this.f7297b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long b() {
            return this.f7298c;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String c() {
            return this.f7296a;
        }
    }

    public a1(Handler handler, com.applovin.impl.sdk.k kVar) {
        if (handler != null) {
            if (kVar != null) {
                this.f7293b = handler;
                this.f7292a = kVar.O();
                return;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No handler specified.");
    }

    public void b() {
        HashSet<c> hashSet = new HashSet(this.f7294c);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f7292a;
            oVar.a("CountdownManager", "Starting " + hashSet.size() + " countdowns...");
        }
        int incrementAndGet = this.f7295d.incrementAndGet();
        for (c cVar : hashSet) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7292a;
                oVar2.a("CountdownManager", "Starting countdown: " + cVar.c() + " for generation " + incrementAndGet + "...");
            }
            a(cVar, incrementAndGet);
        }
    }

    public void c() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f7292a.a("CountdownManager", "Stopping countdowns...");
        }
        this.f7295d.incrementAndGet();
        this.f7293b.removeCallbacksAndMessages(null);
    }

    public void a() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f7292a.a("CountdownManager", "Removing all countdowns...");
        }
        c();
        this.f7294c.clear();
    }

    public void a(String str, long j10, b bVar) {
        if (j10 > 0) {
            if (this.f7293b != null) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f7292a;
                    oVar.a("CountdownManager", "Adding countdown: " + str);
                }
                this.f7294c.add(new c(str, j10, bVar));
                return;
            }
            throw new IllegalArgumentException("No handler specified.");
        }
        throw new IllegalArgumentException("Invalid step specified.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(c cVar, int i10) {
        b a10 = cVar.a();
        if (a10.b()) {
            if (this.f7295d.get() == i10) {
                try {
                    a10.a();
                    a(cVar, i10);
                } catch (Throwable th2) {
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.f7292a;
                        oVar.a("CountdownManager", "Encountered error on countdown step for: " + cVar.c(), th2);
                    }
                    a();
                }
            } else if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7292a;
                oVar2.k("CountdownManager", "Killing duplicate countdown from previous generation: " + cVar.c());
            }
        } else if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar3 = this.f7292a;
            oVar3.a("CountdownManager", "Ending countdown for " + cVar.c());
        }
    }

    private void a(final c cVar, final int i10) {
        this.f7293b.postDelayed(new Runnable() { // from class: com.applovin.impl.o8
            @Override // java.lang.Runnable
            public final void run() {
                a1.this.b(cVar, i10);
            }
        }, cVar.b());
    }
}
