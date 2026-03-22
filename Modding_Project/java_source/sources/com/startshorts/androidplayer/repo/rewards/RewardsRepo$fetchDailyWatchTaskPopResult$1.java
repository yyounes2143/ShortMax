package com.startshorts.androidplayer.repo.rewards;

import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.shorts.DailyWatchPopResult;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import fh.a;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RewardsRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRepo$fetchDailyWatchTaskPopResult$1", f = "RewardsRepo.kt", l = {77}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RewardsRepo$fetchDailyWatchTaskPopResult$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44531h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RewardsRepo$fetchDailyWatchTaskPopResult$1(c<? super RewardsRepo$fetchDailyWatchTaskPopResult$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RewardsRepo$fetchDailyWatchTaskPopResult$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RewardsRepo$fetchDailyWatchTaskPopResult$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object B;
        a m10;
        a m11;
        List<NewbieWatchBonus> list;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44531h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                B = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            CampaignRepo campaignRepo = CampaignRepo.f43678a;
            this.f44531h = 1;
            B = campaignRepo.B(this);
            if (B == f10) {
                return f10;
            }
        }
        if (Result.j(B)) {
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            m10 = rewardsRepo.m();
            m10.g((DailyWatchPopResult) B);
            m11 = rewardsRepo.m();
            DailyWatchPopResult b10 = m11.b();
            if (b10 != null) {
                list = b10.getList();
            } else {
                list = null;
            }
            if (list != null) {
                CollectionsKt.V0(list, 5);
            }
        }
        return Unit.f60915a;
    }
}
