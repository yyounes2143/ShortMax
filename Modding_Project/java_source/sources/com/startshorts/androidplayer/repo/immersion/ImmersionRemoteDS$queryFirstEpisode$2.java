package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.QueryFirstEpisodesResult;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryFirstEpisode$2", f = "ImmersionRemoteDS.kt", l = {95, 97}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryFirstEpisode$2 extends SuspendLambda implements Function1<c<? super ServerResult<QueryFirstEpisodesResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44095h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f44096i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryFirstEpisode$2(String str, c<? super ImmersionRemoteDS$queryFirstEpisode$2> cVar) {
        super(1, cVar);
        this.f44096i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ImmersionRemoteDS$queryFirstEpisode$2(this.f44096i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44095h;
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
            k.a i11 = k.f41787a.i();
            String str = this.f44096i;
            this.f44095h = 1;
            obj = i11.v(str, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a i12 = k.f41787a.i();
        String str2 = this.f44096i;
        this.f44095h = 2;
        obj = i12.i(str2, this);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QueryFirstEpisodesResult>> cVar) {
        return ((ImmersionRemoteDS$queryFirstEpisode$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
