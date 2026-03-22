package com.startshorts.androidplayer.repo.config.appConfig;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import pg.a;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteConfig.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$fetch$2$json$1", f = "RemoteConfig.kt", l = {91}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RemoteConfig$fetch$2$json$1 extends SuspendLambda implements Function2<g0, c<? super String>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43839h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RemoteConfig f43840i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfig$fetch$2$json$1(RemoteConfig remoteConfig, c<? super RemoteConfig$fetch$2$json$1> cVar) {
        super(2, cVar);
        this.f43840i = remoteConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RemoteConfig$fetch$2$json$1(this.f43840i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super String> cVar) {
        return ((RemoteConfig$fetch$2$json$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a aVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43839h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            aVar = this.f43840i.f43825b;
            this.f43839h = 1;
            obj = aVar.a(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
