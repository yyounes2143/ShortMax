package com.startshorts.androidplayer.viewmodel.reward;

import android.content.Context;
import com.startshorts.androidplayer.bean.ad.WatchAdBonusTask;
import com.startshorts.androidplayer.bean.task.AcceptTaskRewardResult;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: RewardsViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$acceptTaskReward$1$1$2", f = "RewardsViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class RewardsViewModel$acceptTaskReward$1$1$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49103h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AcceptTaskRewardResult f49104i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f49105j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$acceptTaskReward$1$1$2(AcceptTaskRewardResult acceptTaskRewardResult, Context context, rs.c<? super RewardsViewModel$acceptTaskReward$1$1$2> cVar) {
        super(2, cVar);
        this.f49104i = acceptTaskRewardResult;
        this.f49105j = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$acceptTaskReward$1$1$2(this.f49104i, this.f49105j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$acceptTaskReward$1$1$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f49103h == 0) {
            kotlin.f.b(obj);
            AcceptTaskRewardResult acceptTaskRewardResult = this.f49104i;
            if (acceptTaskRewardResult != null) {
                int taskBonus = acceptTaskRewardResult.getTaskBonus();
                Context context = this.f49105j;
                new ek.a(context, WatchAdBonusTask.Companion.getFormatBonus(context, kotlin.coroutines.jvm.internal.a.d(taskBonus))).show();
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
