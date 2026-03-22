package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.f;
import com.google.firebase.remoteconfig.RemoteConfigRegistrar;
import e9.h;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import w7.a0;
import w7.d;
import w7.g;
import w7.q;
import x8.e;
@Keep
/* loaded from: classes5.dex */
public class RemoteConfigRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-rc";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c lambda$getComponents$0(a0 a0Var, d dVar) {
        return new c((Context) dVar.a(Context.class), (ScheduledExecutorService) dVar.h(a0Var), (f) dVar.a(f.class), (e) dVar.a(e.class), ((com.google.firebase.abt.component.a) dVar.a(com.google.firebase.abt.component.a.class)).b("frc"), dVar.e(n7.a.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<w7.c<?>> getComponents() {
        final a0 a10 = a0.a(o7.b.class, ScheduledExecutorService.class);
        return Arrays.asList(w7.c.d(c.class, h9.a.class).h(LIBRARY_NAME).b(q.k(Context.class)).b(q.l(a10)).b(q.k(f.class)).b(q.k(e.class)).b(q.k(com.google.firebase.abt.component.a.class)).b(q.i(n7.a.class)).f(new g() { // from class: f9.m
            @Override // w7.g
            public final Object a(w7.d dVar) {
                com.google.firebase.remoteconfig.c lambda$getComponents$0;
                lambda$getComponents$0 = RemoteConfigRegistrar.lambda$getComponents$0(a0.this, dVar);
                return lambda$getComponents$0;
            }
        }).e().d(), h.b(LIBRARY_NAME, "23.0.1"));
    }
}
