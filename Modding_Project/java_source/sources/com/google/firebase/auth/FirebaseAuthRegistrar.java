package com.google.firebase.auth;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
@Keep
@KeepForSdk
/* loaded from: classes5.dex */
public class FirebaseAuthRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ FirebaseAuth lambda$getComponents$0(w7.a0 a0Var, w7.a0 a0Var2, w7.a0 a0Var3, w7.a0 a0Var4, w7.a0 a0Var5, w7.d dVar) {
        return new v7.f((com.google.firebase.f) dVar.a(com.google.firebase.f.class), dVar.e(s7.b.class), dVar.e(u8.h.class), (Executor) dVar.h(a0Var), (Executor) dVar.h(a0Var2), (Executor) dVar.h(a0Var3), (ScheduledExecutorService) dVar.h(a0Var4), (Executor) dVar.h(a0Var5));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @NonNull
    @Keep
    public List<w7.c<?>> getComponents() {
        final w7.a0 a10 = w7.a0.a(o7.a.class, Executor.class);
        final w7.a0 a11 = w7.a0.a(o7.b.class, Executor.class);
        final w7.a0 a12 = w7.a0.a(o7.c.class, Executor.class);
        final w7.a0 a13 = w7.a0.a(o7.c.class, ScheduledExecutorService.class);
        final w7.a0 a14 = w7.a0.a(o7.d.class, Executor.class);
        return Arrays.asList(w7.c.d(FirebaseAuth.class, v7.b.class).b(w7.q.k(com.google.firebase.f.class)).b(w7.q.m(u8.h.class)).b(w7.q.l(a10)).b(w7.q.l(a11)).b(w7.q.l(a12)).b(w7.q.l(a13)).b(w7.q.l(a14)).b(w7.q.i(s7.b.class)).f(new w7.g() { // from class: com.google.firebase.auth.s
            @Override // w7.g
            public final Object a(w7.d dVar) {
                return FirebaseAuthRegistrar.lambda$getComponents$0(w7.a0.this, a11, a12, a13, a14, dVar);
            }
        }).d(), u8.g.a(), e9.h.b("fire-auth", "24.0.1"));
    }
}
