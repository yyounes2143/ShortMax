package com.startshorts.androidplayer.repo.unlock;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeByCoinsResult;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS$singleUnlockEpisodeByCoins$2", f = "UnlockRemoteDS.kt", l = {115, 117}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$singleUnlockEpisodeByCoins$2 extends SuspendLambda implements Function1<c<? super ServerResult<UnlockEpisodeByCoinsResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44677h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f44678i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ boolean f44679j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$singleUnlockEpisodeByCoins$2(BaseEpisode baseEpisode, boolean z10, c<? super UnlockRemoteDS$singleUnlockEpisodeByCoins$2> cVar) {
        super(1, cVar);
        this.f44678i = baseEpisode;
        this.f44679j = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new UnlockRemoteDS$singleUnlockEpisodeByCoins$2(this.f44678i, this.f44679j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44677h;
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
            int id2 = this.f44678i.getId();
            boolean z10 = this.f44679j;
            this.f44677h = 1;
            obj = j10.M1(id2, z10, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a j11 = k.f41787a.j();
        int id3 = this.f44678i.getId();
        boolean z11 = this.f44679j;
        this.f44677h = 2;
        obj = j11.z0(id3, z11, this);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<UnlockEpisodeByCoinsResult>> cVar) {
        return ((UnlockRemoteDS$singleUnlockEpisodeByCoins$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
