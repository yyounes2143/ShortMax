package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult2;
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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodeIdByShortsId$2", f = "ImmersionRemoteDS.kt", l = {52}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryEpisodeIdByShortsId$2 extends SuspendLambda implements Function1<c<? super ServerResult<QueryEpisodeIdResult2>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44081h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44082i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryEpisodeIdByShortsId$2(int i10, c<? super ImmersionRemoteDS$queryEpisodeIdByShortsId$2> cVar) {
        super(1, cVar);
        this.f44082i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ImmersionRemoteDS$queryEpisodeIdByShortsId$2(this.f44082i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44081h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a i11 = k.f41787a.i();
            int i12 = this.f44082i;
            this.f44081h = 1;
            obj = i11.b(i12, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QueryEpisodeIdResult2>> cVar) {
        return ((ImmersionRemoteDS$queryEpisodeIdByShortsId$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
