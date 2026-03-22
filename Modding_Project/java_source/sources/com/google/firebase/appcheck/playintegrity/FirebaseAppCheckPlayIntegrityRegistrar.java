package com.google.firebase.appcheck.playintegrity;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.appcheck.playintegrity.FirebaseAppCheckPlayIntegrityRegistrar;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.f;
import e9.h;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import o7.b;
import u7.i;
import w7.a0;
import w7.c;
import w7.d;
import w7.g;
import w7.q;
@KeepForSdk
/* loaded from: classes5.dex */
public class FirebaseAppCheckPlayIntegrityRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i b(a0 a0Var, a0 a0Var2, d dVar) {
        return new i((f) dVar.a(f.class), (Executor) dVar.h(a0Var), (Executor) dVar.h(a0Var2));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        final a0 a10 = a0.a(o7.c.class, Executor.class);
        final a0 a11 = a0.a(b.class, Executor.class);
        return Arrays.asList(c.c(i.class).h("fire-app-check-play-integrity").b(q.k(f.class)).b(q.l(a10)).b(q.l(a11)).f(new g() { // from class: t7.a
            @Override // w7.g
            public final Object a(d dVar) {
                i b10;
                b10 = FirebaseAppCheckPlayIntegrityRegistrar.b(a0.this, a11, dVar);
                return b10;
            }
        }).d(), h.b("fire-app-check-play-integrity", "19.0.1"));
    }
}
