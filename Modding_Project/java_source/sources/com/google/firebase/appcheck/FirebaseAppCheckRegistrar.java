package com.google.firebase.appcheck;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.appcheck.FirebaseAppCheckRegistrar;
import com.google.firebase.appcheck.internal.b;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.f;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import o7.a;
import p7.e;
import u8.h;
import w7.a0;
import w7.c;
import w7.d;
import w7.g;
import w7.q;
@KeepForSdk
/* loaded from: classes5.dex */
public class FirebaseAppCheckRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e b(a0 a0Var, a0 a0Var2, a0 a0Var3, a0 a0Var4, d dVar) {
        return new b((f) dVar.a(f.class), dVar.e(h.class), (Executor) dVar.h(a0Var), (Executor) dVar.h(a0Var2), (Executor) dVar.h(a0Var3), (ScheduledExecutorService) dVar.h(a0Var4));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        final a0 a10 = a0.a(o7.d.class, Executor.class);
        final a0 a11 = a0.a(o7.c.class, Executor.class);
        final a0 a12 = a0.a(a.class, Executor.class);
        final a0 a13 = a0.a(o7.b.class, ScheduledExecutorService.class);
        return Arrays.asList(c.d(e.class, s7.b.class).h("fire-app-check").b(q.k(f.class)).b(q.l(a10)).b(q.l(a11)).b(q.l(a12)).b(q.l(a13)).b(q.i(h.class)).f(new g() { // from class: p7.f
            @Override // w7.g
            public final Object a(w7.d dVar) {
                e b10;
                b10 = FirebaseAppCheckRegistrar.b(a0.this, a11, a12, a13, dVar);
                return b10;
            }
        }).c().d(), u8.g.a(), e9.h.b("fire-app-check", "19.0.1"));
    }
}
