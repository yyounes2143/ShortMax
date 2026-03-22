package com.startshorts.androidplayer.viewmodel.reward;

import android.os.Bundle;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchRewardResult;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.viewmodel.reward.k;
import fk.u;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RewardsViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$dailyWatchTimeTaskReward$1", f = "RewardsViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RATE}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,588:1\n1557#2:589\n1628#2,3:590\n1#3:593\n125#4,13:594\n*S KotlinDebug\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1\n*L\n467#1:589\n467#1:590,3\n492#1:594,13\n*E\n"})
/* loaded from: classes7.dex */
public final class RewardsViewModel$dailyWatchTimeTaskReward$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49119h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<NewbieWatchBonus> f49120i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ RewardsViewModel f49121j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f49122k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f49123l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$dailyWatchTimeTaskReward$1(List<NewbieWatchBonus> list, RewardsViewModel rewardsViewModel, String str, int i10, rs.c<? super RewardsViewModel$dailyWatchTimeTaskReward$1> cVar) {
        super(2, cVar);
        this.f49120i = list;
        this.f49121j = rewardsViewModel;
        this.f49122k = str;
        this.f49123l = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$dailyWatchTimeTaskReward$1(this.f49120i, this.f49121j, this.f49122k, this.f49123l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$dailyWatchTimeTaskReward$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10;
        ResponseException responseException;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49119h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                f10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            List<NewbieWatchBonus> list = this.f49120i;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (NewbieWatchBonus newbieWatchBonus : list) {
                arrayList.add(kotlin.coroutines.jvm.internal.a.d(newbieWatchBonus.getTaskId()));
            }
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            String day = vi.e.f68955a.a().getDay();
            this.f49119h = 1;
            f10 = rewardsRepo.f(arrayList, day, this);
            if (f10 == f11) {
                return f11;
            }
        }
        RewardsViewModel rewardsViewModel = this.f49121j;
        List<NewbieWatchBonus> list2 = this.f49120i;
        String str = this.f49122k;
        int i11 = this.f49123l;
        if (Result.j(f10)) {
            NewbieWatchRewardResult newbieWatchRewardResult = (NewbieWatchRewardResult) f10;
            if (newbieWatchRewardResult == null) {
                return Unit.f60915a;
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", str);
            bundle.putString("type", "watch_drama");
            bundle.putString("task_name", "cumulative_duration");
            NewbieWatchBonus newbieWatchBonus2 = (NewbieWatchBonus) CollectionsKt.D0(list2);
            if (newbieWatchBonus2 != null) {
                bundle.putInt(CrashHianalyticsData.TIME, newbieWatchBonus2.getPayTime());
            }
            bundle.putInt("stage", i11);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "task_finish", bundle, 0L, 4, null);
            vi.e.f68955a.f(newbieWatchRewardResult.getTaskIds());
            AccountRepo.Z0(AccountRepo.f43052a, true, null, null, 6, null);
            rewardsViewModel.S();
            ud.a.f68411a.D0(true);
            int i12 = 0;
            for (NewbieWatchBonus newbieWatchBonus3 : list2) {
                i12 += newbieWatchBonus3.getBonus();
            }
            o.b(rewardsViewModel.O(), new k.d(i12));
        }
        RewardsViewModel rewardsViewModel2 = this.f49121j;
        Throwable g10 = Result.g(f10);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                responseException = (ResponseException) g10;
            } else {
                responseException = null;
            }
            if (responseException == null) {
                Logger.f41511a.e("ApiBuilder", "onResponseFailure exception -> " + g10.getMessage() + ", exception must not be null");
            } else if (responseException.getCode() == 20100) {
                ud.b bVar = ud.b.f68412a;
                bVar.k5(0L);
                bVar.w3(null);
                u.k(u.f51776a, responseException.getMessage(), 0, 2, null);
                ud.a.f68411a.D0(true);
                rewardsViewModel2.S();
            }
        }
        return Unit.f60915a;
    }
}
