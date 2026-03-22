package com.startshorts.androidplayer.repo.campaign;

import com.startshorts.androidplayer.bean.campaign.AttributionSdkResponse;
import com.startshorts.androidplayer.bean.eventbus.HandleHomeDialogProcessorEvent;
import com.startshorts.androidplayer.bean.shorts.PopularShorts;
import com.startshorts.androidplayer.bean.shorts.QueryCampaignRecommendShortsResult;
import com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.ArrayList;
import java.util.List;
import jk.v;
import kg.b;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CampaignRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CampaignRepo {

    /* renamed from: d  reason: collision with root package name */
    private static boolean f43681d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f43682e;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f43684g;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final CampaignRepo f43678a = new CampaignRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43679b = c.b(new Function0() { // from class: kg.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            b y10;
            y10 = CampaignRepo.y();
            return y10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f43680c = c.b(new Function0() { // from class: kg.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CampaignRemoteDS z10;
            z10 = CampaignRepo.z();
            return z10;
        }
    });
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final i f43683f = c.b(new Function0() { // from class: kg.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List A;
            A = CampaignRepo.A();
            return A;
        }
    });

    private CampaignRepo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List A() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(Function1 function1, String str) {
        f43682e = false;
        function1.invoke(Result.b(v.c(str)));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(String str) {
        f43681d = false;
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(boolean z10, final AttributionSdkResponse attributionSdkResponse) {
        if (t().contains(attributionSdkResponse.getId())) {
            return;
        }
        t().add(attributionSdkResponse.getId());
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        CoroutineUtil.k(coroutineUtil, null, "reportAttributionSdkResponse(" + attributionSdkResponse.getId() + ')', false, new CampaignRepo$reportAttributionSdkResponse$1(z10, attributionSdkResponse, null), new Function1() { // from class: kg.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit L;
                L = CampaignRepo.L(AttributionSdkResponse.this, (String) obj);
                return L;
            }
        }, 5, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(AttributionSdkResponse attributionSdkResponse, String str) {
        f43678a.t().remove(attributionSdkResponse.getId());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q(String str) {
        f43684g = false;
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b r() {
        return (b) f43679b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CampaignRemoteDS s() {
        return (CampaignRemoteDS) f43680c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<String> t() {
        return (List) f43683f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b y() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CampaignRemoteDS z() {
        return new CampaignRemoteDS();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object B(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.DailyWatchPopResult>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryDailyWatchTaskPopResult$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryDailyWatchTaskPopResult$1 r0 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryDailyWatchTaskPopResult$1) r0
            int r1 = r0.f43693j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43693j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryDailyWatchTaskPopResult$1 r0 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryDailyWatchTaskPopResult$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f43691h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43693j
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
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r5 = r4.s()
            r0.f43693j = r3
            java.lang.Object r5 = r5.c(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.B(rs.c):java.lang.Object");
    }

    public final void C(@NotNull final Function1<? super Result<PopularShorts>, Unit> onResult) {
        Intrinsics.checkNotNullParameter(onResult, "onResult");
        if (f43682e || ud.b.f68412a.Z()) {
            return;
        }
        if (r().d() != null) {
            Result.a aVar = Result.f60901b;
            onResult.invoke(Result.b(Result.d(r().d())));
            return;
        }
        f43682e = true;
        CoroutineUtil.k(CoroutineUtil.f48072a, null, "queryPopularShorts", false, new CampaignRepo$queryPopularShorts$1(onResult, null), new Function1() { // from class: kg.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit D;
                D = CampaignRepo.D(Function1.this, (String) obj);
                return D;
            }
        }, 5, null);
    }

    public final void E() {
        if (f43681d || ud.b.f68412a.a0()) {
            return;
        }
        if (v() != null) {
            au.c.d().l(new HandleHomeDialogProcessorEvent());
            return;
        }
        f43681d = true;
        CoroutineUtil.k(CoroutineUtil.f48072a, null, "queryRecommendShorts", false, new CampaignRepo$queryRecommendShorts$1(null), new Function1() { // from class: kg.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit F;
                F = CampaignRepo.F((String) obj);
                return F;
            }
        }, 5, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object G(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.shorts.QueryCampaignRecommendShortsResult>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryRecommendShortsSuspend$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryRecommendShortsSuspend$1 r0 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryRecommendShortsSuspend$1) r0
            int r1 = r0.f43699j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43699j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryRecommendShortsSuspend$1 r0 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryRecommendShortsSuspend$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f43697h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43699j
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
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r5 = r4.s()
            r0.f43699j = r3
            java.lang.Object r5 = r5.e(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.G(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object H(boolean r12, @org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull java.lang.String r14, @org.jetbrains.annotations.NotNull java.lang.String r15, @org.jetbrains.annotations.NotNull java.lang.String r16, @org.jetbrains.annotations.NotNull java.lang.String r17, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult>> r18) {
        /*
            r11 = this;
            r0 = r18
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAFInfo$1
            if (r1 == 0) goto L17
            r1 = r0
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAFInfo$1 r1 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAFInfo$1) r1
            int r2 = r1.f43702j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.f43702j = r2
            r2 = r11
        L15:
            r10 = r1
            goto L1e
        L17:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAFInfo$1 r1 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAFInfo$1
            r2 = r11
            r1.<init>(r11, r0)
            goto L15
        L1e:
            java.lang.Object r0 = r10.f43700h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r10.f43702j
            r4 = 1
            if (r3 == 0) goto L3d
            if (r3 != r4) goto L35
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L8b
        L35:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3d:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "reportAFInfo params -> requestId:"
            r3.append(r5)
            r5 = r13
            r3.append(r13)
            java.lang.String r6 = " -- afConversionData:"
            r3.append(r6)
            r6 = r14
            r3.append(r14)
            java.lang.String r7 = " -- gpInstallReferrer:"
            r3.append(r7)
            r8 = r16
            r3.append(r8)
            java.lang.String r7 = " -- appsFlyerId:"
            r3.append(r7)
            r9 = r17
            r3.append(r9)
            java.lang.String r3 = r3.toString()
            java.lang.String r7 = "CampaignNewTag"
            r0.e(r7, r3)
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r3 = r11.s()
            r10.f43702j = r4
            r4 = r12
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            r9 = r17
            java.lang.Object r0 = r3.f(r4, r5, r6, r7, r8, r9, r10)
            if (r0 != r1) goto L8b
            return r1
        L8b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.H(boolean, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object I(boolean r9, @org.jetbrains.annotations.NotNull java.lang.String r10, @org.jetbrains.annotations.NotNull java.lang.String r11, @org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult>> r14) {
        /*
            r8 = this;
            boolean r0 = r14 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAJInfo$1
            if (r0 == 0) goto L14
            r0 = r14
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAJInfo$1 r0 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAJInfo$1) r0
            int r1 = r0.f43705j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f43705j = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAJInfo$1 r0 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAJInfo$1
            r0.<init>(r8, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r7.f43703h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f43705j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r9 = r14.n()
            goto L76
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            kotlin.f.b(r14)
            com.startshorts.androidplayer.log.Logger r14 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "reportAJInfo params -> requestId:"
            r1.append(r3)
            r1.append(r10)
            java.lang.String r3 = " -- ajConversionData:"
            r1.append(r3)
            r1.append(r11)
            java.lang.String r3 = " -- gpInstallReferrer:"
            r1.append(r3)
            r1.append(r13)
            java.lang.String r1 = r1.toString()
            java.lang.String r3 = "CampaignNewTag"
            r14.e(r3, r1)
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r1 = r8.s()
            r7.f43705j = r2
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            java.lang.Object r9 = r1.g(r2, r3, r4, r5, r6, r7)
            if (r9 != r0) goto L76
            return r0
        L76:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.I(boolean, java.lang.String, java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object J(@org.jetbrains.annotations.NotNull java.lang.String r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportActiveWebInfo$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportActiveWebInfo$1 r0 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportActiveWebInfo$1) r0
            int r1 = r0.f43708j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43708j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportActiveWebInfo$1 r0 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportActiveWebInfo$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f43706h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43708j
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
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r8 = r4.s()
            r0.f43708j = r3
            java.lang.Object r5 = r8.h(r5, r6, r7, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.J(java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    public final void M() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "reportAttributionSdkResponses", false, new CampaignRepo$reportAttributionSdkResponses$1(null), 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object N(@org.jetbrains.annotations.NotNull java.lang.String r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportDDLInfo$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportDDLInfo$1 r0 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportDDLInfo$1) r0
            int r1 = r0.f43715j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43715j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportDDLInfo$1 r0 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportDDLInfo$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r8 = r0.f43713h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43715j
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
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r8 = r4.s()
            r0.f43715j = r3
            java.lang.Object r5 = r8.j(r5, r6, r7, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.N(java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object O(boolean r9, @org.jetbrains.annotations.NotNull java.lang.String r10, @org.jetbrains.annotations.NotNull java.lang.String r11, @org.jetbrains.annotations.NotNull java.lang.String r12, int r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult>> r14) {
        /*
            r8 = this;
            boolean r0 = r14 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportFBInfo$1
            if (r0 == 0) goto L14
            r0 = r14
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportFBInfo$1 r0 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportFBInfo$1) r0
            int r1 = r0.f43718j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f43718j = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportFBInfo$1 r0 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportFBInfo$1
            r0.<init>(r8, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r7.f43716h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f43718j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r9 = r14.n()
            goto L4e
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            kotlin.f.b(r14)
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r1 = r8.s()
            r7.f43718j = r2
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            java.lang.Object r9 = r1.k(r2, r3, r4, r5, r6, r7)
            if (r9 != r0) goto L4e
            return r0
        L4e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.O(boolean, java.lang.String, java.lang.String, java.lang.String, int, rs.c):java.lang.Object");
    }

    public final void P() {
        if (!f43684g && !ud.b.f68412a.L0()) {
            f43684g = true;
            CoroutineUtil.k(CoroutineUtil.f48072a, null, "reportInstallInfo", false, new CampaignRepo$reportInstallInfo$1(null), new Function1() { // from class: kg.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit Q;
                    Q = CampaignRepo.Q((String) obj);
                    return Q;
                }
            }, 5, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object R(@org.jetbrains.annotations.NotNull java.lang.String r9, @org.jetbrains.annotations.Nullable java.lang.String r10, @org.jetbrains.annotations.Nullable java.lang.String r11, @org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.Nullable java.lang.String r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult>> r14) {
        /*
            r8 = this;
            boolean r0 = r14 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportLPInfo$1
            if (r0 == 0) goto L14
            r0 = r14
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportLPInfo$1 r0 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportLPInfo$1) r0
            int r1 = r0.f43722j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f43722j = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportLPInfo$1 r0 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportLPInfo$1
            r0.<init>(r8, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r7.f43720h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f43722j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r9 = r14.n()
            goto L94
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            kotlin.f.b(r14)
            com.startshorts.androidplayer.log.Logger r14 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "reportLpInfo params -> requestId:"
            r1.append(r3)
            r1.append(r9)
            java.lang.String r3 = " -- clipboardInfo:"
            r1.append(r3)
            r1.append(r10)
            java.lang.String r3 = " -- intranetIp:"
            r1.append(r3)
            r1.append(r11)
            java.lang.String r3 = " -- latestInstallTime:"
            r1.append(r3)
            r1.append(r12)
            java.lang.String r3 = " -- gpInstallReferrer:"
            r1.append(r3)
            r1.append(r13)
            java.lang.String r3 = " -- firstOpen:"
            r1.append(r3)
            ud.a r3 = ud.a.f68411a
            boolean r3 = r3.P()
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.String r3 = "CampaignNewTag"
            r14.e(r3, r1)
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r1 = r8.s()
            r7.f43722j = r2
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            java.lang.Object r9 = r1.m(r2, r3, r4, r5, r6, r7)
            if (r9 != r0) goto L94
            return r0
        L94:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.R(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object S(boolean r12, @org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull java.lang.String r14, @org.jetbrains.annotations.NotNull java.lang.String r15, @org.jetbrains.annotations.NotNull java.lang.String r16, @org.jetbrains.annotations.NotNull java.lang.String r17, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult>> r18) {
        /*
            r11 = this;
            r0 = r18
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportUdlAfInfo$1
            if (r1 == 0) goto L17
            r1 = r0
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportUdlAfInfo$1 r1 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportUdlAfInfo$1) r1
            int r2 = r1.f43725j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.f43725j = r2
            r2 = r11
        L15:
            r10 = r1
            goto L1e
        L17:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportUdlAfInfo$1 r1 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportUdlAfInfo$1
            r2 = r11
            r1.<init>(r11, r0)
            goto L15
        L1e:
            java.lang.Object r0 = r10.f43723h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r10.f43725j
            r4 = 1
            if (r3 == 0) goto L3d
            if (r3 != r4) goto L35
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L8b
        L35:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3d:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "reportUdlAfInfo params -> requestId:"
            r3.append(r5)
            r5 = r13
            r3.append(r13)
            java.lang.String r6 = " -- afConversionData:"
            r3.append(r6)
            r6 = r14
            r3.append(r14)
            java.lang.String r7 = " -- gpInstallReferrer:"
            r3.append(r7)
            r8 = r16
            r3.append(r8)
            java.lang.String r7 = " -- appsFlyerId:"
            r3.append(r7)
            r9 = r17
            r3.append(r9)
            java.lang.String r3 = r3.toString()
            java.lang.String r7 = "CampaignNewTag"
            r0.e(r7, r3)
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r3 = r11.s()
            r10.f43725j = r4
            r4 = r12
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            r9 = r17
            java.lang.Object r0 = r3.n(r4, r5, r6, r7, r8, r9, r10)
            if (r0 != r1) goto L8b
            return r1
        L8b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.S(boolean, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object T(boolean r9, @org.jetbrains.annotations.NotNull java.lang.String r10, @org.jetbrains.annotations.NotNull java.lang.String r11, @org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult>> r14) {
        /*
            r8 = this;
            boolean r0 = r14 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportUdlAjInfo$1
            if (r0 == 0) goto L14
            r0 = r14
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportUdlAjInfo$1 r0 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportUdlAjInfo$1) r0
            int r1 = r0.f43728j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f43728j = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportUdlAjInfo$1 r0 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportUdlAjInfo$1
            r0.<init>(r8, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r7.f43726h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f43728j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r9 = r14.n()
            goto L76
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            kotlin.f.b(r14)
            com.startshorts.androidplayer.log.Logger r14 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "reportUdlAjInfo params -> requestId:"
            r1.append(r3)
            r1.append(r10)
            java.lang.String r3 = " -- ajConversionData:"
            r1.append(r3)
            r1.append(r11)
            java.lang.String r3 = " -- gpInstallReferrer:"
            r1.append(r3)
            r1.append(r13)
            java.lang.String r1 = r1.toString()
            java.lang.String r3 = "CampaignNewTag"
            r14.e(r3, r1)
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r1 = r8.s()
            r7.f43728j = r2
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            java.lang.Object r9 = r1.o(r2, r3, r4, r5, r6, r7)
            if (r9 != r0) goto L76
            return r0
        L76:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.T(boolean, java.lang.String, java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    public final void U(@NotNull String campaign) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        r().k(campaign);
    }

    public final void V() {
        r().l();
    }

    public final void W(long j10) {
        if (j10 > 0) {
            r().m(j10);
        }
    }

    public final void o() {
        r().o(null);
    }

    @Nullable
    public final String p() {
        return r().c();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.campaign.GoogleEventUploadInfo>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$getGoogleMatchEventUploadInfo$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$getGoogleMatchEventUploadInfo$1 r0 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$getGoogleMatchEventUploadInfo$1) r0
            int r1 = r0.f43687j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43687j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$getGoogleMatchEventUploadInfo$1 r0 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$getGoogleMatchEventUploadInfo$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f43685h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43687j
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
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r5 = r4.s()
            r0.f43687j = r3
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.q(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object u(@org.jetbrains.annotations.NotNull java.lang.String r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.campaign.AFEventUploadInfo>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.campaign.CampaignRepo$getMatchEventUploadInfo$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$getMatchEventUploadInfo$1 r0 = (com.startshorts.androidplayer.repo.campaign.CampaignRepo$getMatchEventUploadInfo$1) r0
            int r1 = r0.f43690j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43690j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.campaign.CampaignRepo$getMatchEventUploadInfo$1 r0 = new com.startshorts.androidplayer.repo.campaign.CampaignRepo$getMatchEventUploadInfo$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f43688h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43690j
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
            com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS r6 = r4.s()
            r0.f43690j = r3
            java.lang.Object r5 = r6.b(r5, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.campaign.CampaignRepo.u(java.lang.String, rs.c):java.lang.Object");
    }

    @Nullable
    public final QueryCampaignRecommendShortsResult v() {
        return r().e();
    }

    public final boolean w() {
        return r().f();
    }

    public final boolean x() {
        return Intrinsics.areEqual(r().c(), "GG");
    }
}
