package com.startshorts.androidplayer.repo.rewards;

import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.shorts.DailyWatchPopResult;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fh.a;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: RewardsRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RewardsRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final RewardsRepo f44515a = new RewardsRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44516b = c.b(new Function0() { // from class: fh.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            a r10;
            r10 = RewardsRepo.r();
            return r10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f44517c = c.b(new Function0() { // from class: fh.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            RewardsRemoteDS s10;
            s10 = RewardsRepo.s();
            return s10;
        }
    });

    private RewardsRepo() {
    }

    public static /* synthetic */ void j(RewardsRepo rewardsRepo, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        rewardsRepo.i(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final a m() {
        return (a) f44516b.getValue();
    }

    private final RewardsRemoteDS n() {
        return (RewardsRemoteDS) f44517c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a r() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RewardsRemoteDS s() {
        return new RewardsRemoteDS();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object A(@org.jetbrains.annotations.Nullable android.content.Context r5, int r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.checkin.WatchAdMultiRewardResult>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.rewards.RewardsRepo$signWatchAdV4$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$signWatchAdV4$1 r0 = (com.startshorts.androidplayer.repo.rewards.RewardsRepo$signWatchAdV4$1) r0
            int r1 = r0.f44549j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44549j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$signWatchAdV4$1 r0 = new com.startshorts.androidplayer.repo.rewards.RewardsRepo$signWatchAdV4$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f44547h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44549j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r5 = r8.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r8 = r4.n()
            r0.f44549j = r3
            java.lang.Object r5 = r8.l(r5, r6, r7, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.rewards.RewardsRepo.A(android.content.Context, int, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object B(@org.jetbrains.annotations.Nullable android.content.Context r5, int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.rewards.RewardsRepo$startTask$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$startTask$1 r0 = (com.startshorts.androidplayer.repo.rewards.RewardsRepo$startTask$1) r0
            int r1 = r0.f44552j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44552j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$startTask$1 r0 = new com.startshorts.androidplayer.repo.rewards.RewardsRepo$startTask$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f44550h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44552j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r7 = r4.n()
            r0.f44552j = r3
            java.lang.Object r5 = r7.m(r5, r6, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.rewards.RewardsRepo.B(android.content.Context, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.NotNull android.content.Context r6, @org.jetbrains.annotations.NotNull java.lang.String r7, boolean r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.task.AcceptTaskRewardResult>> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.repo.rewards.RewardsRepo$acceptTaskReward$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$acceptTaskReward$1 r0 = (com.startshorts.androidplayer.repo.rewards.RewardsRepo$acceptTaskReward$1) r0
            int r1 = r0.f44520j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44520j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$acceptTaskReward$1 r0 = new com.startshorts.androidplayer.repo.rewards.RewardsRepo$acceptTaskReward$1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.f44518h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44520j
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r6 = r9.n()
            goto L64
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r6 = r9.n()
            goto L56
        L44:
            kotlin.f.b(r9)
            if (r8 == 0) goto L57
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r8 = r5.n()
            r0.f44520j = r4
            java.lang.Object r6 = r8.a(r6, r7, r0)
            if (r6 != r1) goto L56
            return r1
        L56:
            return r6
        L57:
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r6 = r5.n()
            r0.f44520j = r3
            java.lang.Object r6 = r6.e(r7, r0)
            if (r6 != r1) goto L64
            return r1
        L64:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.rewards.RewardsRepo.c(android.content.Context, java.lang.String, boolean, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(@org.jetbrains.annotations.Nullable android.content.Context r6, @org.jetbrains.annotations.NotNull java.lang.String r7, boolean r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.repo.rewards.RewardsRepo$checkIn$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$checkIn$1 r0 = (com.startshorts.androidplayer.repo.rewards.RewardsRepo$checkIn$1) r0
            int r1 = r0.f44523j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44523j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$checkIn$1 r0 = new com.startshorts.androidplayer.repo.rewards.RewardsRepo$checkIn$1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.f44521h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44523j
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r6 = r9.n()
            goto L64
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r6 = r9.n()
            goto L56
        L44:
            kotlin.f.b(r9)
            if (r8 == 0) goto L57
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r8 = r5.n()
            r0.f44523j = r4
            java.lang.Object r6 = r8.b(r6, r7, r0)
            if (r6 != r1) goto L56
            return r1
        L56:
            return r6
        L57:
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r8 = r5.n()
            r0.f44523j = r3
            java.lang.Object r6 = r8.f(r6, r7, r0)
            if (r6 != r1) goto L64
            return r1
        L64:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.rewards.RewardsRepo.e(android.content.Context, java.lang.String, boolean, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(@org.jetbrains.annotations.NotNull java.util.List<java.lang.Integer> r5, @org.jetbrains.annotations.Nullable java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.checkin.NewbieWatchRewardResult>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.rewards.RewardsRepo$dailyWatchTimeTaskReward$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$dailyWatchTimeTaskReward$1 r0 = (com.startshorts.androidplayer.repo.rewards.RewardsRepo$dailyWatchTimeTaskReward$1) r0
            int r1 = r0.f44526j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44526j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$dailyWatchTimeTaskReward$1 r0 = new com.startshorts.androidplayer.repo.rewards.RewardsRepo$dailyWatchTimeTaskReward$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f44524h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44526j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L4b
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r7 = r4.n()
            java.lang.String r5 = jk.l.d(r5)
            r0.f44526j = r3
            java.lang.Object r5 = r7.c(r5, r6, r0)
            if (r5 != r1) goto L4b
            return r1
        L4b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.rewards.RewardsRepo.f(java.util.List, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(int r5, @org.jetbrains.annotations.Nullable java.lang.Integer r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.ad.QueryWatchAdTaskComplete>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.rewards.RewardsRepo$exchangeWatchAdBonusTask$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$exchangeWatchAdBonusTask$1 r0 = (com.startshorts.androidplayer.repo.rewards.RewardsRepo$exchangeWatchAdBonusTask$1) r0
            int r1 = r0.f44529j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44529j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$exchangeWatchAdBonusTask$1 r0 = new com.startshorts.androidplayer.repo.rewards.RewardsRepo$exchangeWatchAdBonusTask$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f44527h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44529j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r7 = r4.n()
            r0.f44529j = r3
            java.lang.Object r5 = r7.d(r5, r6, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.rewards.RewardsRepo.g(int, java.lang.Integer, rs.c):java.lang.Object");
    }

    public final void h() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "fetchDailyWatchTask", false, new RewardsRepo$fetchDailyWatchTask$1(null), 2, null);
    }

    public final void i(boolean z10) {
        DailyWatchPopResult b10;
        List<NewbieWatchBonus> list;
        if (!z10 && m().b() != null && (b10 = m().b()) != null && (list = b10.getList()) != null && (!list.isEmpty())) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "queryDailyWatchTaskPopResult", false, new RewardsRepo$fetchDailyWatchTaskPopResult$1(null), 2, null);
    }

    @NotNull
    public final DailyWatchPopResult k() {
        DailyWatchPopResult b10 = m().b();
        if (b10 == null) {
            DailyWatchPopResult dailyWatchPopResult = new DailyWatchPopResult(null, null, 3, null);
            dailyWatchPopResult.setList(new ArrayList());
            return dailyWatchPopResult;
        }
        return b10;
    }

    @NotNull
    public final String l() {
        return m().a();
    }

    public final boolean o() {
        return m().c();
    }

    public final boolean p() {
        return m().e();
    }

    public final boolean q() {
        return ABTestFactory.f42224a.b1().isEnable().invoke().booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object t(@org.jetbrains.annotations.NotNull java.lang.String r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.checkin.CheckInInfoResult>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryCheckInInfo$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryCheckInInfo$1 r0 = (com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryCheckInInfo$1) r0
            int r1 = r0.f44534j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44534j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryCheckInInfo$1 r0 = new com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryCheckInInfo$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f44532h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44534j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r6 = r4.n()
            r0.f44534j = r3
            java.lang.Object r5 = r6.g(r5, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.rewards.RewardsRepo.t(java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object u(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.checkin.NewbieWatchTask>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryDailyWatchTask$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryDailyWatchTask$1 r0 = (com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryDailyWatchTask$1) r0
            int r1 = r0.f44537j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44537j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryDailyWatchTask$1 r0 = new com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryDailyWatchTask$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f44535h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44537j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r5 = r4.n()
            r0.f44537j = r3
            java.lang.Object r5 = r5.h(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.rewards.RewardsRepo.u(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object v(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.checkin.SignInAdInfoResult>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.rewards.RewardsRepo$querySignAdTaskInfo$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$querySignAdTaskInfo$1 r0 = (com.startshorts.androidplayer.repo.rewards.RewardsRepo$querySignAdTaskInfo$1) r0
            int r1 = r0.f44540j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44540j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$querySignAdTaskInfo$1 r0 = new com.startshorts.androidplayer.repo.rewards.RewardsRepo$querySignAdTaskInfo$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f44538h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44540j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r5 = r4.n()
            r0.f44540j = r3
            java.lang.Object r5 = r5.i(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.rewards.RewardsRepo.v(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object w(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.task.TaskModuleList>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryTaskList$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryTaskList$1 r0 = (com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryTaskList$1) r0
            int r1 = r0.f44543j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44543j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryTaskList$1 r0 = new com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryTaskList$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f44541h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44543j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r5 = r4.n()
            r0.f44543j = r3
            java.lang.Object r5 = r5.j(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.rewards.RewardsRepo.w(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object x(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.ad.QueryWatchAdBonusTaskResult>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryWatchAdBonusesTask$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryWatchAdBonusesTask$1 r0 = (com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryWatchAdBonusesTask$1) r0
            int r1 = r0.f44546j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44546j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryWatchAdBonusesTask$1 r0 = new com.startshorts.androidplayer.repo.rewards.RewardsRepo$queryWatchAdBonusesTask$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f44544h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44546j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS r5 = r4.n()
            r0.f44546j = r3
            java.lang.Object r5 = r5.k(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.rewards.RewardsRepo.x(rs.c):java.lang.Object");
    }

    public final void y() {
        m().f();
    }

    public final void z() {
        m().h();
    }
}
