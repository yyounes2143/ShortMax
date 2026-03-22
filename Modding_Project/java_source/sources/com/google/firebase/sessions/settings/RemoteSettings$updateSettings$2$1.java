package com.google.firebase.sessions.settings;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import org.json.JSONObject;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteSettings.kt */
@Metadata
@d(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1", f = "RemoteSettings.kt", l = {126}, m = "invokeSuspend")
/* loaded from: classes5.dex */
public final class RemoteSettings$updateSettings$2$1 extends SuspendLambda implements Function2<JSONObject, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f21645h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f21646i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ RemoteSettings f21647j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteSettings$updateSettings$2$1(RemoteSettings remoteSettings, c<? super RemoteSettings$updateSettings$2$1> cVar) {
        super(2, cVar);
        this.f21647j = remoteSettings;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        RemoteSettings$updateSettings$2$1 remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(this.f21647j, cVar);
        remoteSettings$updateSettings$2$1.f21646i = obj;
        return remoteSettings$updateSettings$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: i */
    public final Object invoke(JSONObject jSONObject, c<? super Unit> cVar) {
        return ((RemoteSettings$updateSettings$2$1) create(jSONObject, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f7 A[RETURN] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.Boolean] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
