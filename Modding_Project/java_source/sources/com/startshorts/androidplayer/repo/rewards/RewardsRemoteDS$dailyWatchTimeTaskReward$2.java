package com.startshorts.androidplayer.repo.rewards;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchRewardResult;
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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS$dailyWatchTimeTaskReward$2", f = "RewardsRemoteDS.kt", l = {53}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$dailyWatchTimeTaskReward$2 extends SuspendLambda implements Function1<c<? super ServerResult<NewbieWatchRewardResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44464h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f44465i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f44466j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$dailyWatchTimeTaskReward$2(String str, String str2, c<? super RewardsRemoteDS$dailyWatchTimeTaskReward$2> cVar) {
        super(1, cVar);
        this.f44465i = str;
        this.f44466j = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new RewardsRemoteDS$dailyWatchTimeTaskReward$2(this.f44465i, this.f44466j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44464h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f44465i;
            String str2 = this.f44466j;
            this.f44464h = 1;
            obj = j10.L0(str, str2, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<NewbieWatchRewardResult>> cVar) {
        return ((RewardsRemoteDS$dailyWatchTimeTaskReward$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
