package com.startshorts.androidplayer.viewmodel.reward;

import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.MutableLiveData;
import com.appsflyer.AdRevenueScheme;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.checkin.SignInAdInfoResult;
import com.startshorts.androidplayer.bean.checkin.WatchAdMultiRewardResult;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.viewmodel.reward.k;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: RewardsViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$claimCheckInMixedTaskReward$1", f = "RewardsViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,588:1\n1#2:589\n*E\n"})
/* loaded from: classes7.dex */
final class RewardsViewModel$claimCheckInMixedTaskReward$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49114h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f49115i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SignInAdInfoResult f49116j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ RewardsViewModel f49117k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f49118l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$claimCheckInMixedTaskReward$1(Context context, SignInAdInfoResult signInAdInfoResult, RewardsViewModel rewardsViewModel, String str, rs.c<? super RewardsViewModel$claimCheckInMixedTaskReward$1> cVar) {
        super(2, cVar);
        this.f49115i = context;
        this.f49116j = signInAdInfoResult;
        this.f49117k = rewardsViewModel;
        this.f49118l = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$claimCheckInMixedTaskReward$1(this.f49115i, this.f49116j, this.f49117k, this.f49118l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$claimCheckInMixedTaskReward$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object A;
        String str;
        k.a aVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49114h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                A = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            Context context = this.f49115i;
            int taskId = this.f49116j.getTaskId();
            String requestId = this.f49116j.getRequestId();
            this.f49114h = 1;
            A = rewardsRepo.A(context, taskId, requestId, this);
            if (A == f10) {
                return f10;
            }
        }
        RewardsViewModel rewardsViewModel = this.f49117k;
        SignInAdInfoResult signInAdInfoResult = this.f49116j;
        String str2 = this.f49118l;
        if (Result.j(A)) {
            WatchAdMultiRewardResult watchAdMultiRewardResult = (WatchAdMultiRewardResult) A;
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("type", "check_in");
            bundle.putString("task_id", String.valueOf(signInAdInfoResult.getTaskId()));
            bundle.putString("task_type_id", String.valueOf(signInAdInfoResult.getTaskType()));
            Integer taskType = signInAdInfoResult.getTaskType();
            if (taskType != null && taskType.intValue() == 1) {
                str = "广告类";
            } else {
                str = "";
            }
            bundle.putString("task_type_name", str);
            bundle.putString("task_sort_id", String.valueOf(signInAdInfoResult.getTaskSortId()));
            bundle.putString(AdRevenueScheme.PLACEMENT, str2);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "task_finish", bundle, 0L, 4, null);
            MutableLiveData<k> O = rewardsViewModel.O();
            if (watchAdMultiRewardResult != null) {
                aVar = new k.a(watchAdMultiRewardResult.getBonus());
            } else {
                aVar = null;
            }
            o.b(O, aVar);
            ud.a.f68411a.D0(true);
            AccountRepo.Z0(AccountRepo.f43052a, true, null, null, 6, null);
        }
        RewardsViewModel rewardsViewModel2 = this.f49117k;
        if (Result.g(A) != null) {
            rewardsViewModel2.O().postValue(new k.a(0));
        }
        return Unit.f60915a;
    }
}
