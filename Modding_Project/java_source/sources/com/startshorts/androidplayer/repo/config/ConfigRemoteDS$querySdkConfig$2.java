package com.startshorts.androidplayer.repo.config;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.configure.SdkConfigList;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConfigRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.config.ConfigRemoteDS$querySdkConfig$2", f = "ConfigRemoteDS.kt", l = {19}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ConfigRemoteDS$querySdkConfig$2 extends SuspendLambda implements Function1<c<? super ServerResult<SdkConfigList>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43766h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConfigRemoteDS$querySdkConfig$2(c<? super ConfigRemoteDS$querySdkConfig$2> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ConfigRemoteDS$querySdkConfig$2(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43766h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            this.f43766h = 1;
            obj = k.a.C0617a.o(j10, null, this, 1, null);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<SdkConfigList>> cVar) {
        return ((ConfigRemoteDS$querySdkConfig$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
