package com.startshorts.androidplayer.ui.fragment.immersion;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: ImmersionShortBackEarnCoinDialog.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1", f = "ImmersionShortBackEarnCoinDialog.kt", l = {60, 65, 69}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f46187h;

    /* renamed from: i  reason: collision with root package name */
    int f46188i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ImmersionShortBackEarnCoinDialog f46189j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1(ImmersionShortBackEarnCoinDialog immersionShortBackEarnCoinDialog, rs.c<? super ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1> cVar) {
        super(2, cVar);
        this.f46189j = immersionShortBackEarnCoinDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1(this.f46189j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f46188i
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L30
            if (r1 == r5) goto L25
            if (r1 == r4) goto L1f
            if (r1 != r3) goto L17
            kotlin.f.b(r8)
            goto L8e
        L17:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1f:
            java.lang.Object r1 = r7.f46187h
            kotlin.f.b(r8)
            goto L72
        L25:
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.n()
        L2e:
            r1 = r8
            goto L48
        L30:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.profile.ProfileRepo r8 = com.startshorts.androidplayer.repo.profile.ProfileRepo.f44320a
            com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory r1 = com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory.f42224a
            com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig r1 = r1.C0()
            int r1 = r1.abTestIntValue()
            r7.f46188i = r5
            java.lang.Object r8 = r8.h(r1, r7)
            if (r8 != r0) goto L2e
            return r0
        L48:
            com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog r8 = r7.f46189j
            boolean r5 = kotlin.Result.j(r1)
            if (r5 == 0) goto L72
            r5 = r1
            com.startshorts.androidplayer.bean.profile.TodayBonusTotal r5 = (com.startshorts.androidplayer.bean.profile.TodayBonusTotal) r5
            if (r5 == 0) goto L5a
            int r5 = r5.getUserTodayBonusTotal()
            goto L5b
        L5a:
            r5 = 0
        L5b:
            r8.Q(r5)
            gt.j1 r5 = gt.q0.c()
            com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1$1$1 r6 = new com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1$1$1
            r6.<init>(r8, r2)
            r7.f46187h = r1
            r7.f46188i = r4
            java.lang.Object r8 = gt.e.g(r5, r6, r7)
            if (r8 != r0) goto L72
            return r0
        L72:
            com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog r8 = r7.f46189j
            java.lang.Throwable r4 = kotlin.Result.g(r1)
            if (r4 == 0) goto L8e
            gt.j1 r4 = gt.q0.c()
            com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1$2$1 r5 = new com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1$2$1
            r5.<init>(r8, r2)
            r7.f46187h = r1
            r7.f46188i = r3
            java.lang.Object r8 = gt.e.g(r4, r5, r7)
            if (r8 != r0) goto L8e
            return r0
        L8e:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.immersion.ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
