package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import java.util.List;
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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryImmersionBackShorts$2", f = "ImmersionRemoteDS.kt", l = {117, 119}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryImmersionBackShorts$2 extends SuspendLambda implements Function1<c<? super ServerResult<List<BaseEpisode>>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44104h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44105i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryImmersionBackShorts$2(int i10, c<? super ImmersionRemoteDS$queryImmersionBackShorts$2> cVar) {
        super(1, cVar);
        this.f44105i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ImmersionRemoteDS$queryImmersionBackShorts$2(this.f44105i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44104h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return (ServerResult) obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            return (ServerResult) obj;
        }
        f.b(obj);
        if (ABTestFactory.f42224a.i1().isEnable().invoke().booleanValue()) {
            k.a j10 = k.f41787a.j();
            int i11 = this.f44105i;
            this.f44104h = 1;
            obj = j10.c(i11, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a j11 = k.f41787a.j();
        int i12 = this.f44105i;
        this.f44104h = 2;
        obj = j11.S1(i12, this);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<List<BaseEpisode>>> cVar) {
        return ((ImmersionRemoteDS$queryImmersionBackShorts$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
