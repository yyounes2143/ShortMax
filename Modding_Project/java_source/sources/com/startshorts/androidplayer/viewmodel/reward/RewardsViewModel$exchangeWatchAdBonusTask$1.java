package com.startshorts.androidplayer.viewmodel.reward;

import android.os.Bundle;
import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.ad.QueryWatchAdTaskComplete;
import com.startshorts.androidplayer.bean.ad.WatchAdBonusTask;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.log.Logger;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RewardsViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$exchangeWatchAdBonusTask$1", f = "RewardsViewModel.kt", l = {422}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,588:1\n125#2,13:589\n*S KotlinDebug\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1\n*L\n454#1:589,13\n*E\n"})
/* loaded from: classes7.dex */
public final class RewardsViewModel$exchangeWatchAdBonusTask$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49124h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ WatchAdBonusTask f49125i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Integer f49126j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ RewardsViewModel f49127k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f49128l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$exchangeWatchAdBonusTask$1(WatchAdBonusTask watchAdBonusTask, Integer num, RewardsViewModel rewardsViewModel, String str, rs.c<? super RewardsViewModel$exchangeWatchAdBonusTask$1> cVar) {
        super(2, cVar);
        this.f49125i = watchAdBonusTask;
        this.f49126j = num;
        this.f49127k = rewardsViewModel;
        this.f49128l = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$exchangeWatchAdBonusTask$1(this.f49125i, this.f49126j, this.f49127k, this.f49128l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$exchangeWatchAdBonusTask$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object g10;
        int i10;
        String str;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f49124h;
        if (i11 != 0) {
            if (i11 == 1) {
                kotlin.f.b(obj);
                g10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            int taskId = this.f49125i.getTaskId();
            Integer num = this.f49126j;
            this.f49124h = 1;
            g10 = rewardsRepo.g(taskId, num, this);
            if (g10 == f10) {
                return f10;
            }
        }
        WatchAdBonusTask watchAdBonusTask = this.f49125i;
        RewardsViewModel rewardsViewModel = this.f49127k;
        String str2 = this.f49128l;
        ResponseException responseException = null;
        String str3 = "";
        if (Result.j(g10)) {
            QueryWatchAdTaskComplete queryWatchAdTaskComplete = (QueryWatchAdTaskComplete) g10;
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("from", str2);
            Integer rewardValue = watchAdBonusTask.getRewardValue();
            if (rewardValue != null) {
                i10 = rewardValue.intValue();
            } else {
                i10 = 0;
            }
            bundle.putInt("tickets", i10);
            bundle.putString("type", String.valueOf(watchAdBonusTask.getTaskCategory()));
            bundle.putString("task_id", String.valueOf(watchAdBonusTask.getTaskId()));
            bundle.putString("task_type", String.valueOf(watchAdBonusTask.getTaskType()));
            Integer taskType = watchAdBonusTask.getTaskType();
            if (taskType == null || taskType.intValue() != 1) {
                str = "";
            } else {
                str = "广告类";
            }
            bundle.putString("task_type_name", str);
            bundle.putString("task_name", watchAdBonusTask.getTaskName());
            bundle.putString("task_sort_id", String.valueOf(watchAdBonusTask.getTaskSortId()));
            bundle.putString("task_type_id", String.valueOf(watchAdBonusTask.getTaskType()));
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "task_finish", bundle, 0L, 4, null);
            ud.b.f68412a.q5(watchAdBonusTask.getTaskId(), null);
            o.b(rewardsViewModel.O(), new k.i(watchAdBonusTask.getTaskId(), queryWatchAdTaskComplete));
            ud.a.f68411a.D0(true);
            AccountRepo.Z0(AccountRepo.f43052a, true, null, null, 6, null);
            rewardsViewModel.P();
        }
        RewardsViewModel rewardsViewModel2 = this.f49127k;
        WatchAdBonusTask watchAdBonusTask2 = this.f49125i;
        Throwable g11 = Result.g(g10);
        if (g11 != null) {
            if (g11 instanceof ResponseException) {
                responseException = (ResponseException) g11;
            }
            if (responseException == null) {
                Logger logger = Logger.f41511a;
                logger.e("ApiBuilder", "onResponseFailure exception -> " + g11.getMessage() + ", exception must not be null");
            } else {
                MutableLiveData<k> O = rewardsViewModel2.O();
                int taskId2 = watchAdBonusTask2.getTaskId();
                String message = responseException.getMessage();
                if (message != null) {
                    str3 = message;
                }
                o.b(O, new k.h(taskId2, str3));
            }
        }
        return Unit.f60915a;
    }
}
