package com.startshorts.androidplayer.repo.config.appConfig;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteConfig.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$updateConfig$1", f = "RemoteConfig.kt", l = {45}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RemoteConfig$updateConfig$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43849h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RemoteConfig f43850i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfig$updateConfig$1(RemoteConfig remoteConfig, c<? super RemoteConfig$updateConfig$1> cVar) {
        super(2, cVar);
        this.f43850i = remoteConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RemoteConfig$updateConfig$1(this.f43850i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RemoteConfig$updateConfig$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10;
        Object f11 = a.f();
        int i10 = this.f43849h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            RemoteConfig remoteConfig = this.f43850i;
            this.f43849h = 1;
            f10 = remoteConfig.f(this);
            if (f10 == f11) {
                return f11;
            }
        }
        return Unit.f60915a;
    }
}
