package com.startshorts.androidplayer.ui.view.reward;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: DiscoverRewardBoxView.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView$loadTodayAllBonus$1", f = "DiscoverRewardBoxView.kt", l = {68, 72, 74}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DiscoverRewardBoxView$loadTodayAllBonus$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f47784h;

    /* renamed from: i  reason: collision with root package name */
    int f47785i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DiscoverRewardBoxView f47786j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRewardBoxView$loadTodayAllBonus$1(DiscoverRewardBoxView discoverRewardBoxView, c<? super DiscoverRewardBoxView$loadTodayAllBonus$1> cVar) {
        super(2, cVar);
        this.f47786j = discoverRewardBoxView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DiscoverRewardBoxView$loadTodayAllBonus$1(this.f47786j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DiscoverRewardBoxView$loadTodayAllBonus$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0086  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.f47785i
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L30
            if (r1 == r5) goto L25
            if (r1 == r4) goto L1f
            if (r1 != r3) goto L17
            kotlin.f.b(r9)
            goto L9a
        L17:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1f:
            java.lang.Object r1 = r8.f47784h
            kotlin.f.b(r9)
            goto L7e
        L25:
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.n()
        L2e:
            r1 = r9
            goto L48
        L30:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.repo.profile.ProfileRepo r9 = com.startshorts.androidplayer.repo.profile.ProfileRepo.f44320a
            com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory r1 = com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory.f42224a
            com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig r1 = r1.C0()
            int r1 = r1.abTestIntValue()
            r8.f47785i = r5
            java.lang.Object r9 = r9.h(r1, r8)
            if (r9 != r0) goto L2e
            return r0
        L48:
            com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView r9 = r8.f47786j
            boolean r5 = kotlin.Result.j(r1)
            if (r5 == 0) goto L7e
            r5 = r1
            com.startshorts.androidplayer.bean.profile.TodayBonusTotal r5 = (com.startshorts.androidplayer.bean.profile.TodayBonusTotal) r5
            r6 = 0
            if (r5 == 0) goto L5b
            int r7 = r5.getUserTodayBonusTotal()
            goto L5c
        L5b:
            r7 = r6
        L5c:
            r9.setTotalBonus(r7)
            ud.a r7 = ud.a.f68411a
            if (r5 == 0) goto L67
            int r6 = r5.getUserTodayBonusTotal()
        L67:
            r7.S0(r6)
            gt.j1 r5 = gt.q0.c()
            com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView$loadTodayAllBonus$1$1$1 r6 = new com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView$loadTodayAllBonus$1$1$1
            r6.<init>(r9, r2)
            r8.f47784h = r1
            r8.f47785i = r4
            java.lang.Object r9 = gt.e.g(r5, r6, r8)
            if (r9 != r0) goto L7e
            return r0
        L7e:
            com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView r9 = r8.f47786j
            java.lang.Throwable r4 = kotlin.Result.g(r1)
            if (r4 == 0) goto L9a
            gt.j1 r4 = gt.q0.c()
            com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView$loadTodayAllBonus$1$2$1 r5 = new com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView$loadTodayAllBonus$1$2$1
            r5.<init>(r9, r2)
            r8.f47784h = r1
            r8.f47785i = r3
            java.lang.Object r9 = gt.e.g(r4, r5, r8)
            if (r9 != r0) goto L9a
            return r0
        L9a:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.reward.DiscoverRewardBoxView$loadTodayAllBonus$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
