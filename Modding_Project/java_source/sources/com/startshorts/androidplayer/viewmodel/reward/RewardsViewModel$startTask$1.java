package com.startshorts.androidplayer.viewmodel.reward;

import android.content.Context;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.ad.WatchAdBonusTask;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.viewmodel.reward.i;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: RewardsViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$startTask$1", f = "RewardsViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class RewardsViewModel$startTask$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49145h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f49146i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ WatchAdBonusTask f49147j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ RewardsViewModel f49148k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$startTask$1(Context context, WatchAdBonusTask watchAdBonusTask, RewardsViewModel rewardsViewModel, rs.c<? super RewardsViewModel$startTask$1> cVar) {
        super(2, cVar);
        this.f49146i = context;
        this.f49147j = watchAdBonusTask;
        this.f49148k = rewardsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$startTask$1(this.f49146i, this.f49147j, this.f49148k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$startTask$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object B;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49145h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                B = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            Context context = this.f49146i;
            int taskId = this.f49147j.getTaskId();
            this.f49145h = 1;
            B = rewardsRepo.B(context, taskId, this);
            if (B == f10) {
                return f10;
            }
        }
        RewardsViewModel rewardsViewModel = this.f49148k;
        WatchAdBonusTask watchAdBonusTask = this.f49147j;
        if (Result.j(B)) {
            o.b(rewardsViewModel.M(), new i.a(true, watchAdBonusTask));
        }
        RewardsViewModel rewardsViewModel2 = this.f49148k;
        WatchAdBonusTask watchAdBonusTask2 = this.f49147j;
        if (Result.g(B) != null) {
            o.b(rewardsViewModel2.M(), new i.a(false, watchAdBonusTask2));
        }
        return Unit.f60915a;
    }
}
