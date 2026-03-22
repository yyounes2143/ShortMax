package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.crashlytics.ndk.CrashlyticsNdkRegistrar;
import java.util.Arrays;
import java.util.List;
import w7.d;
import w7.q;
/* loaded from: classes5.dex */
public class CrashlyticsNdkRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public z7.a b(w7.d dVar) {
        Context context = (Context) dVar.a(Context.class);
        return c.f(context, !z7.f.g(context));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<w7.c<?>> getComponents() {
        return Arrays.asList(w7.c.c(z7.a.class).h("fire-cls-ndk").b(q.k(Context.class)).f(new w7.g() { // from class: l8.a
            @Override // w7.g
            public final Object a(d dVar) {
                z7.a b10;
                b10 = CrashlyticsNdkRegistrar.this.b(dVar);
                return b10;
            }
        }).e().d(), e9.h.b("fire-cls-ndk", "20.0.3"));
    }
}
