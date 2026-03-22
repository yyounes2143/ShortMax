package com.google.firebase.messaging;

import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import java.util.Arrays;
import java.util.List;
@Keep
@KeepForSdk
/* loaded from: classes5.dex */
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-fcm";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FirebaseMessaging lambda$getComponents$0(w7.a0 a0Var, w7.d dVar) {
        return new FirebaseMessaging((com.google.firebase.f) dVar.a(com.google.firebase.f.class), (v8.a) dVar.a(v8.a.class), dVar.e(e9.i.class), dVar.e(HeartBeatInfo.class), (x8.e) dVar.a(x8.e.class), dVar.d(a0Var), (t8.d) dVar.a(t8.d.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<w7.c<?>> getComponents() {
        final w7.a0 a10 = w7.a0.a(n8.b.class, a5.i.class);
        return Arrays.asList(w7.c.c(FirebaseMessaging.class).h(LIBRARY_NAME).b(w7.q.k(com.google.firebase.f.class)).b(w7.q.h(v8.a.class)).b(w7.q.i(e9.i.class)).b(w7.q.i(HeartBeatInfo.class)).b(w7.q.k(x8.e.class)).b(w7.q.j(a10)).b(w7.q.k(t8.d.class)).f(new w7.g() { // from class: com.google.firebase.messaging.a0
            @Override // w7.g
            public final Object a(w7.d dVar) {
                FirebaseMessaging lambda$getComponents$0;
                lambda$getComponents$0 = FirebaseMessagingRegistrar.lambda$getComponents$0(w7.a0.this, dVar);
                return lambda$getComponents$0;
            }
        }).c().d(), e9.h.b(LIBRARY_NAME, "25.0.1"));
    }
}
