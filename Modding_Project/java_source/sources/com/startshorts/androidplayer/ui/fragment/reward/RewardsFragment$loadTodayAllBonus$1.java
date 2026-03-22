package com.startshorts.androidplayer.ui.fragment.reward;

import com.startshorts.androidplayer.bean.profile.TodayBonusTotal;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.profile.ProfileRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RewardsFragment.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment$loadTodayAllBonus$1", f = "RewardsFragment.kt", l = {446}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RewardsFragment$loadTodayAllBonus$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f46719h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RewardsFragment$loadTodayAllBonus$1(c<? super RewardsFragment$loadTodayAllBonus$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new RewardsFragment$loadTodayAllBonus$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((RewardsFragment$loadTodayAllBonus$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object h10;
        TodayBonusTotal todayBonusTotal;
        Object f10 = a.f();
        int i10 = this.f46719h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                h10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ProfileRepo profileRepo = ProfileRepo.f44320a;
            int abTestIntValue = ABTestFactory.f42224a.C0().abTestIntValue();
            this.f46719h = 1;
            h10 = profileRepo.h(abTestIntValue, this);
            if (h10 == f10) {
                return f10;
            }
        }
        if (Result.j(h10) && (todayBonusTotal = (TodayBonusTotal) h10) != null) {
            ud.a.f68411a.S0(todayBonusTotal.getUserTodayBonusRemain());
        }
        return Unit.f60915a;
    }
}
