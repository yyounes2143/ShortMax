package com.google.firebase.datatransport;

import a5.i;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import c5.u;
import com.google.android.datatransport.cct.a;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import e9.h;
import java.util.Arrays;
import java.util.List;
import n8.b;
import w7.a0;
import w7.c;
import w7.d;
import w7.g;
import w7.q;
@Keep
/* loaded from: classes5.dex */
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i lambda$getComponents$0(d dVar) {
        u.f((Context) dVar.a(Context.class));
        return u.c().g(a.f17011h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i lambda$getComponents$1(d dVar) {
        u.f((Context) dVar.a(Context.class));
        return u.c().g(a.f17011h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ i lambda$getComponents$2(d dVar) {
        u.f((Context) dVar.a(Context.class));
        return u.c().g(a.f17010g);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @NonNull
    public List<c<?>> getComponents() {
        return Arrays.asList(c.c(i.class).h(LIBRARY_NAME).b(q.k(Context.class)).f(new g() { // from class: n8.c
            @Override // w7.g
            public final Object a(w7.d dVar) {
                i lambda$getComponents$0;
                lambda$getComponents$0 = TransportRegistrar.lambda$getComponents$0(dVar);
                return lambda$getComponents$0;
            }
        }).d(), c.e(a0.a(n8.a.class, i.class)).b(q.k(Context.class)).f(new g() { // from class: n8.d
            @Override // w7.g
            public final Object a(w7.d dVar) {
                i lambda$getComponents$1;
                lambda$getComponents$1 = TransportRegistrar.lambda$getComponents$1(dVar);
                return lambda$getComponents$1;
            }
        }).d(), c.e(a0.a(b.class, i.class)).b(q.k(Context.class)).f(new g() { // from class: n8.e
            @Override // w7.g
            public final Object a(w7.d dVar) {
                i lambda$getComponents$2;
                lambda$getComponents$2 = TransportRegistrar.lambda$getComponents$2(dVar);
                return lambda$getComponents$2;
            }
        }).d(), h.b(LIBRARY_NAME, "19.0.0"));
    }
}
