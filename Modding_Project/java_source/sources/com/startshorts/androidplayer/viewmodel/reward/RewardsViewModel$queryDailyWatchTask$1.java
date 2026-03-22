package com.startshorts.androidplayer.viewmodel.reward;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.viewmodel.reward.b;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: RewardsViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$queryDailyWatchTask$1", f = "RewardsViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SECURE_BUFFER_THRESHOLD}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class RewardsViewModel$queryDailyWatchTask$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49132h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsViewModel f49133i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$queryDailyWatchTask$1(RewardsViewModel rewardsViewModel, rs.c<? super RewardsViewModel$queryDailyWatchTask$1> cVar) {
        super(2, cVar);
        this.f49133i = rewardsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$queryDailyWatchTask$1(this.f49133i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$queryDailyWatchTask$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object u10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49132h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                u10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            this.f49132h = 1;
            u10 = rewardsRepo.u(this);
            if (u10 == f10) {
                return f10;
            }
        }
        RewardsViewModel rewardsViewModel = this.f49133i;
        if (Result.j(u10)) {
            NewbieWatchTask newbieWatchTask = (NewbieWatchTask) u10;
            if (newbieWatchTask != null && !newbieWatchTask.getList().isEmpty()) {
                o.b(rewardsViewModel.J(), new b.a(vi.e.f68955a.e(newbieWatchTask)));
            } else {
                return Unit.f60915a;
            }
        }
        return Unit.f60915a;
    }
}
