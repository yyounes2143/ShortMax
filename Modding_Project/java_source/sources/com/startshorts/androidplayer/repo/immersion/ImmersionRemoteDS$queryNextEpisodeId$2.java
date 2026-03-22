package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult;
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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryNextEpisodeId$2", f = "ImmersionRemoteDS.kt", l = {57}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryNextEpisodeId$2 extends SuspendLambda implements Function1<c<? super ServerResult<QueryEpisodeIdResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44114h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44115i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryNextEpisodeId$2(int i10, c<? super ImmersionRemoteDS$queryNextEpisodeId$2> cVar) {
        super(1, cVar);
        this.f44115i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ImmersionRemoteDS$queryNextEpisodeId$2(this.f44115i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44114h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f44115i;
            this.f44114h = 1;
            obj = j10.v0(i11, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QueryEpisodeIdResult>> cVar) {
        return ((ImmersionRemoteDS$queryNextEpisodeId$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
