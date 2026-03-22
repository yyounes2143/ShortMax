package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.immersion.ImmersionBackConfig;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsDetail;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS;
import com.startshorts.androidplayer.repo.immersion.ImmersionRepo;
import com.startshorts.androidplayer.repo.immersion.a;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionRepo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionRepo.kt\ncom/startshorts/androidplayer/repo/immersion/ImmersionRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n1863#2,2:279\n1863#2,2:281\n1010#2,2:283\n1010#2,2:285\n*S KotlinDebug\n*F\n+ 1 ImmersionRepo.kt\ncom/startshorts/androidplayer/repo/immersion/ImmersionRepo\n*L\n121#1:279,2\n124#1:281,2\n132#1:283,2\n135#1:285,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ImmersionRepo f44129a = new ImmersionRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44130b = c.b(new Function0() { // from class: xg.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ImmersionRemoteDS o10;
            o10 = ImmersionRepo.o();
            return o10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f44131c = c.b(new Function0() { // from class: xg.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            com.startshorts.androidplayer.repo.immersion.a n10;
            n10 = ImmersionRepo.n();
            return n10;
        }
    });

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 ImmersionRepo.kt\ncom/startshorts/androidplayer/repo/immersion/ImmersionRepo\n*L\n1#1,102:1\n133#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((BaseEpisode) t10).getEpisodeNum()), Integer.valueOf(((BaseEpisode) t11).getEpisodeNum()));
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 ImmersionRepo.kt\ncom/startshorts/androidplayer/repo/immersion/ImmersionRepo\n*L\n1#1,102:1\n136#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((BaseEpisode) t10).getEpisodeNum()), Integer.valueOf(((BaseEpisode) t11).getEpisodeNum()));
        }
    }

    private ImmersionRepo() {
    }

    private final String g() {
        return ABTestFactory.f42224a.N0().getAbTestKey();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.startshorts.androidplayer.repo.immersion.a k() {
        return (com.startshorts.androidplayer.repo.immersion.a) f44131c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImmersionRemoteDS l() {
        return (ImmersionRemoteDS) f44130b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.startshorts.androidplayer.repo.immersion.a n() {
        return new com.startshorts.androidplayer.repo.immersion.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImmersionRemoteDS o() {
        return new ImmersionRemoteDS();
    }

    public final void A(@Nullable List<BaseEpisode> list) {
        k().l(list);
    }

    public final void e() {
        k().c();
    }

    public final void f() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "queryImmersionBackShortsTitle", false, new ImmersionRepo$fetchImmersionBackShortsTitle$1(null), 2, null);
    }

    @Nullable
    public final ImmersionBackConfig h() {
        return k().d();
    }

    @Nullable
    public final List<BaseEpisode> i() {
        return k().e();
    }

    @NotNull
    public final String j() {
        return k().f();
    }

    @Nullable
    public final ShortsDetail m(int i10) {
        return k().h(i10);
    }

    public final void p() {
        a.b g10 = k().g();
        if (g10.b()) {
            return;
        }
        g10.f();
        if (g10.a()) {
            g10.c();
            CoroutineUtil.l(CoroutineUtil.f48072a, "notifyThirdPartyPayEnable(1)", false, new ImmersionRepo$onPlayInImmersionPage$1$1(g10, null), 2, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e3  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(int r7, int r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<java.lang.Integer>> r9) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRepo.q(int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object r(int r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult2>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryEpisodeIdByShortsId$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryEpisodeIdByShortsId$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryEpisodeIdByShortsId$1) r0
            int r1 = r0.f44142j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44142j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryEpisodeIdByShortsId$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryEpisodeIdByShortsId$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f44140h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44142j
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
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS r6 = r4.l()
            r0.f44142j = r3
            java.lang.Object r5 = r6.b(r5, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRepo.r(int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(@org.jetbrains.annotations.Nullable android.content.Context r14, @org.jetbrains.annotations.NotNull java.lang.String r15, int r16, int r17, int r18, int r19, boolean r20, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.QueryEpisodesResult>> r21) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRepo.s(android.content.Context, java.lang.String, int, int, int, int, boolean, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object t(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull java.lang.String r6, boolean r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.QueryFirstEpisodesResult>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryFirstEpisode$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryFirstEpisode$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryFirstEpisode$1) r0
            int r1 = r0.f44148j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44148j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryFirstEpisode$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryFirstEpisode$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f44146h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44148j
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
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS r8 = r4.l()
            r0.f44148j = r3
            java.lang.Object r5 = r8.d(r5, r6, r7, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            boolean r6 = kotlin.Result.j(r5)
            if (r6 == 0) goto L74
            r6 = r5
            com.startshorts.androidplayer.bean.shorts.QueryFirstEpisodesResult r6 = (com.startshorts.androidplayer.bean.shorts.QueryFirstEpisodesResult) r6
            if (r6 == 0) goto L57
            com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo r7 = r6.getShortPlayContentRatingResponse()
            goto L58
        L57:
            r7 = 0
        L58:
            if (r7 == 0) goto L67
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r7 = r6.getCurrentEpisodesResponse()
            if (r7 == 0) goto L67
            com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo r8 = r6.getShortPlayContentRatingResponse()
            r7.setShortPlayContentRatingResponse(r8)
        L67:
            if (r6 == 0) goto L74
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r6 = r6.getCurrentEpisodesResponse()
            if (r6 == 0) goto L74
            com.startshorts.androidplayer.repo.immersion.EpisodeRepo r7 = com.startshorts.androidplayer.repo.immersion.EpisodeRepo.f44056a
            r7.f(r6)
        L74:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRepo.t(android.content.Context, java.lang.String, boolean, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object u(int r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.shorts.BaseEpisode>>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryImmersionBackShorts$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryImmersionBackShorts$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryImmersionBackShorts$1) r0
            int r1 = r0.f44151j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44151j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryImmersionBackShorts$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryImmersionBackShorts$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f44149h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44151j
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
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS r6 = r4.l()
            r0.f44151j = r3
            java.lang.Object r5 = r6.f(r5, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            boolean r6 = kotlin.Result.j(r5)
            if (r6 == 0) goto L55
            r6 = r5
            java.util.List r6 = (java.util.List) r6
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo r0 = com.startshorts.androidplayer.repo.immersion.ImmersionRepo.f44129a
            r0.A(r6)
        L55:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRepo.u(int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object v(int r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.startshorts.androidplayer.bean.shorts.BaseEpisode>> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRepo.v(int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object w(int r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryNextEpisodeId$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryNextEpisodeId$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryNextEpisodeId$1) r0
            int r1 = r0.f44160k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44160k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryNextEpisodeId$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryNextEpisodeId$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f44158i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44160k
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            int r5 = r0.f44157h
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            goto L60
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L39:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.immersion.EpisodeRepo r6 = com.startshorts.androidplayer.repo.immersion.EpisodeRepo.f44056a
            int r6 = r6.n(r5)
            r2 = -1
            if (r6 == r2) goto L51
            kotlin.Result$a r5 = kotlin.Result.f60901b
            com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult r5 = new com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult
            r5.<init>(r2, r6)
            java.lang.Object r5 = kotlin.Result.d(r5)
            return r5
        L51:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS r6 = r4.l()
            r0.f44157h = r5
            r0.f44160k = r3
            java.lang.Object r6 = r6.h(r5, r0)
            if (r6 != r1) goto L60
            return r1
        L60:
            boolean r0 = kotlin.Result.j(r6)
            if (r0 == 0) goto L7a
            r0 = r6
            com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult r0 = (com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult) r0
            if (r0 == 0) goto L7a
            int r1 = r0.getDramId()
            if (r1 <= 0) goto L7a
            com.startshorts.androidplayer.repo.immersion.EpisodeRepo r1 = com.startshorts.androidplayer.repo.immersion.EpisodeRepo.f44056a
            int r0 = r0.getDramId()
            r1.z(r5, r0)
        L7a:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRepo.w(int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object x(int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.ShortDiscountSkuResult>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryShortDiscount$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryShortDiscount$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryShortDiscount$1) r0
            int r1 = r0.f44163j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44163j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryShortDiscount$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryShortDiscount$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f44161h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44163j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.n()
            goto L51
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS r7 = r5.l()
            java.lang.String r2 = r5.g()
            com.startshorts.androidplayer.repo.discover.DiscoverRepo r4 = com.startshorts.androidplayer.repo.discover.DiscoverRepo.f43967a
            java.lang.String r4 = r4.s()
            r0.f44163j = r3
            java.lang.Object r6 = r7.i(r6, r2, r4, r0)
            if (r6 != r1) goto L51
            return r1
        L51:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRepo.x(int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object y(@org.jetbrains.annotations.NotNull java.lang.String r5, int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.ShortsDetail>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryShortsDetail$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryShortsDetail$1 r0 = (com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryShortsDetail$1) r0
            int r1 = r0.f44167k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44167k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryShortsDetail$1 r0 = new com.startshorts.androidplayer.repo.immersion.ImmersionRepo$queryShortsDetail$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f44165i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44167k
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            int r6 = r0.f44164h
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L56
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L39:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.bean.shorts.ShortsDetail r7 = r4.m(r6)
            if (r7 == 0) goto L47
            java.lang.Object r5 = kotlin.Result.d(r7)
            return r5
        L47:
            com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS r7 = r4.l()
            r0.f44164h = r6
            r0.f44167k = r3
            java.lang.Object r5 = r7.j(r5, r6, r0)
            if (r5 != r1) goto L56
            return r1
        L56:
            boolean r7 = kotlin.Result.j(r5)
            if (r7 == 0) goto L73
            r7 = r5
            com.startshorts.androidplayer.bean.shorts.ShortsDetail r7 = (com.startshorts.androidplayer.bean.shorts.ShortsDetail) r7
            if (r7 == 0) goto L73
            com.startshorts.androidplayer.repo.immersion.EpisodeRepo r0 = com.startshorts.androidplayer.repo.immersion.EpisodeRepo.f44056a
            java.lang.String r1 = r7.getShortPlayName()
            r0.A(r6, r1)
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo r6 = com.startshorts.androidplayer.repo.immersion.ImmersionRepo.f44129a
            com.startshorts.androidplayer.repo.immersion.a r6 = r6.k()
            r6.b(r7)
        L73:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.immersion.ImmersionRepo.y(java.lang.String, int, rs.c):java.lang.Object");
    }

    public final void z(@Nullable ImmersionBackConfig immersionBackConfig) {
        k().k(immersionBackConfig);
    }
}
