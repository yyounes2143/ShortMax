package com.google.firebase.sessions.settings;

import android.util.Log;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: RemoteSettings.kt */
@Metadata
@d(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$2", f = "RemoteSettings.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes5.dex */
final class RemoteSettings$updateSettings$2$2 extends SuspendLambda implements Function2<String, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f21648h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f21649i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RemoteSettings$updateSettings$2$2(c<? super RemoteSettings$updateSettings$2$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        RemoteSettings$updateSettings$2$2 remoteSettings$updateSettings$2$2 = new RemoteSettings$updateSettings$2$2(cVar);
        remoteSettings$updateSettings$2$2.f21649i = obj;
        return remoteSettings$updateSettings$2$2;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: i */
    public final Object invoke(String str, c<? super Unit> cVar) {
        return ((RemoteSettings$updateSettings$2$2) create(str, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f21648h == 0) {
            f.b(obj);
            Log.e("FirebaseSessions", "Error failed to fetch the remote configs: " + ((String) this.f21649i));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
