package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.immersion.ImmersionBackConfig;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackConfig$2", f = "ImmersionRemoteDS.kt", l = {139}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryImmersionBackConfig$2 extends SuspendLambda implements Function1<c<? super ServerResult<ImmersionBackConfig>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44100h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmersionRemoteDS$queryImmersionBackConfig$2(c<? super ImmersionRemoteDS$queryImmersionBackConfig$2> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ImmersionRemoteDS$queryImmersionBackConfig$2(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44100h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            this.f44100h = 1;
            obj = j10.z(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<ImmersionBackConfig>> cVar) {
        return ((ImmersionRemoteDS$queryImmersionBackConfig$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
