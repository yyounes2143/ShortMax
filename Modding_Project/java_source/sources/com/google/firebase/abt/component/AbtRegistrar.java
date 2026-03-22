package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.abt.component.AbtRegistrar;
import com.google.firebase.components.ComponentRegistrar;
import e9.h;
import java.util.Arrays;
import java.util.List;
import w7.c;
import w7.d;
import w7.g;
import w7.q;
@Keep
/* loaded from: classes5.dex */
public class AbtRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-abt";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a lambda$getComponents$0(d dVar) {
        return new a((Context) dVar.a(Context.class), dVar.e(n7.a.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<c<?>> getComponents() {
        return Arrays.asList(c.c(a.class).h(LIBRARY_NAME).b(q.k(Context.class)).b(q.i(n7.a.class)).f(new g() { // from class: m7.a
            @Override // w7.g
            public final Object a(d dVar) {
                com.google.firebase.abt.component.a lambda$getComponents$0;
                lambda$getComponents$0 = AbtRegistrar.lambda$getComponents$0(dVar);
                return lambda$getComponents$0;
            }
        }).d(), h.b(LIBRARY_NAME, "21.1.1"));
    }
}
