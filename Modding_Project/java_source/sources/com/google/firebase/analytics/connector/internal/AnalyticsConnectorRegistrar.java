package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import e9.h;
import java.util.Arrays;
import java.util.List;
import w7.q;
/* compiled from: com.google.android.gms:play-services-measurement-api@@23.0.0 */
@Keep
@KeepForSdk
/* loaded from: classes5.dex */
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ n7.a lambda$getComponents$0(w7.d dVar) {
        return n7.b.h((com.google.firebase.f) dVar.a(com.google.firebase.f.class), (Context) dVar.a(Context.class), (t8.d) dVar.a(t8.d.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @NonNull
    @Keep
    @SuppressLint({"MissingPermission"})
    @KeepForSdk
    public List<w7.c<?>> getComponents() {
        return Arrays.asList(w7.c.c(n7.a.class).b(q.k(com.google.firebase.f.class)).b(q.k(Context.class)).b(q.k(t8.d.class)).f(a.f20332a).e().d(), h.b("fire-analytics", "23.0.0"));
    }
}
