package com.startshorts.androidplayer.repo.rewards;

import com.startshorts.androidplayer.bean.ad.QueryWatchAdTaskComplete;
import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RewardsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS$exchangeWatchAdBonusTask$2", f = "RewardsRemoteDS.kt", l = {65}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$exchangeWatchAdBonusTask$2 extends SuspendLambda implements Function1<c<? super ServerResult<QueryWatchAdTaskComplete>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44470h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44471i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Integer f44472j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$exchangeWatchAdBonusTask$2(int i10, Integer num, c<? super RewardsRemoteDS$exchangeWatchAdBonusTask$2> cVar) {
        super(1, cVar);
        this.f44471i = i10;
        this.f44472j = num;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new RewardsRemoteDS$exchangeWatchAdBonusTask$2(this.f44471i, this.f44472j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44470h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f44471i;
            Integer num = this.f44472j;
            this.f44470h = 1;
            obj = j10.j0(i11, num, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QueryWatchAdTaskComplete>> cVar) {
        return ((RewardsRemoteDS$exchangeWatchAdBonusTask$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
