package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.FirebaseExecutors;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import w7.a0;
import w7.q;
@Keep
/* loaded from: classes5.dex */
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ x8.e lambda$getComponents$0(w7.d dVar) {
        return new c((com.google.firebase.f) dVar.a(com.google.firebase.f.class), dVar.e(u8.h.class), (ExecutorService) dVar.h(a0.a(o7.a.class, ExecutorService.class)), FirebaseExecutors.b((Executor) dVar.h(a0.a(o7.b.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<w7.c<?>> getComponents() {
        return Arrays.asList(w7.c.c(x8.e.class).h(LIBRARY_NAME).b(q.k(com.google.firebase.f.class)).b(q.i(u8.h.class)).b(q.l(a0.a(o7.a.class, ExecutorService.class))).b(q.l(a0.a(o7.b.class, Executor.class))).f(new w7.g() { // from class: x8.f
            @Override // w7.g
            public final Object a(w7.d dVar) {
                e lambda$getComponents$0;
                lambda$getComponents$0 = FirebaseInstallationsRegistrar.lambda$getComponents$0(dVar);
                return lambda$getComponents$0;
            }
        }).d(), u8.g.a(), e9.h.b(LIBRARY_NAME, "19.0.1"));
    }
}
