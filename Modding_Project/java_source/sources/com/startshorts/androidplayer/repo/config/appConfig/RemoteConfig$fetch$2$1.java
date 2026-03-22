package com.startshorts.androidplayer.repo.config.appConfig;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import pg.b;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteConfig.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.appConfig.RemoteConfig$fetch$2$1", f = "RemoteConfig.kt", l = {100}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RemoteConfig$fetch$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43836h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RemoteConfig f43837i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43838j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteConfig$fetch$2$1(RemoteConfig remoteConfig, String str, c<? super RemoteConfig$fetch$2$1> cVar) {
        super(2, cVar);
        this.f43837i = remoteConfig;
        this.f43838j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RemoteConfig$fetch$2$1(this.f43837i, this.f43838j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RemoteConfig$fetch$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        pg.c cVar;
        b bVar;
        Object f10 = a.f();
        int i10 = this.f43836h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            cVar = this.f43837i.f43827d;
            String str = this.f43838j;
            this.f43836h = 1;
            if (cVar.a(str, this) == f10) {
                return f10;
            }
        }
        bVar = this.f43837i.f43826c;
        bVar.b(this.f43838j);
        return Unit.f60915a;
    }
}
