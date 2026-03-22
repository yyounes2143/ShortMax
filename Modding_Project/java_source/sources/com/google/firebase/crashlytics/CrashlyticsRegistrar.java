package com.google.firebase.crashlytics;

import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.crashlytics.CrashlyticsRegistrar;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.f;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import e9.h;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import o7.a;
import o7.b;
import o7.c;
import w7.a0;
import w7.d;
import w7.q;
import x8.e;
import z7.g;
/* loaded from: classes5.dex */
public class CrashlyticsRegistrar implements ComponentRegistrar {

    /* renamed from: a  reason: collision with root package name */
    private final a0<ExecutorService> f20668a = a0.a(a.class, ExecutorService.class);

    /* renamed from: b  reason: collision with root package name */
    private final a0<ExecutorService> f20669b = a0.a(b.class, ExecutorService.class);

    /* renamed from: c  reason: collision with root package name */
    private final a0<ExecutorService> f20670c = a0.a(c.class, ExecutorService.class);

    static {
        FirebaseSessionsDependencies.a(SessionSubscriber.Name.CRASHLYTICS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FirebaseCrashlytics b(d dVar) {
        CrashlyticsWorkers.f(false);
        long currentTimeMillis = System.currentTimeMillis();
        FirebaseCrashlytics b10 = FirebaseCrashlytics.b((f) dVar.a(f.class), (e) dVar.a(e.class), dVar.i(z7.a.class), dVar.i(n7.a.class), dVar.i(h9.a.class), (ExecutorService) dVar.h(this.f20668a), (ExecutorService) dVar.h(this.f20669b), (ExecutorService) dVar.h(this.f20670c));
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (currentTimeMillis2 > 16) {
            g f10 = g.f();
            f10.b("Initializing Crashlytics blocked main for " + currentTimeMillis2 + " ms");
        }
        return b10;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<w7.c<?>> getComponents() {
        return Arrays.asList(w7.c.c(FirebaseCrashlytics.class).h("fire-cls").b(q.k(f.class)).b(q.k(e.class)).b(q.l(this.f20668a)).b(q.l(this.f20669b)).b(q.l(this.f20670c)).b(q.a(z7.a.class)).b(q.a(n7.a.class)).b(q.a(h9.a.class)).f(new w7.g() { // from class: y7.f
            @Override // w7.g
            public final Object a(w7.d dVar) {
                FirebaseCrashlytics b10;
                b10 = CrashlyticsRegistrar.this.b(dVar);
                return b10;
            }
        }).e().d(), h.b("fire-cls", "20.0.3"));
    }
}
