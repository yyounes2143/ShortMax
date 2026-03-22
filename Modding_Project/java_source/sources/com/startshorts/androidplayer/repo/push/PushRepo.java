package com.startshorts.androidplayer.repo.push;

import android.graphics.Bitmap;
import com.facebook.imagepipeline.request.ImageRequest;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.push.PushRemoteDS;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import eh.b;
import fk.f;
import fk.z;
import java.util.List;
import jk.e;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PushRepo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPushRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushRepo.kt\ncom/startshorts/androidplayer/repo/push/PushRepo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,399:1\n1#2:400\n426#3,11:401\n*S KotlinDebug\n*F\n+ 1 PushRepo.kt\ncom/startshorts/androidplayer/repo/push/PushRepo\n*L\n340#1:401,11\n*E\n"})
/* loaded from: classes7.dex */
public final class PushRepo {
    @NotNull

    /* renamed from: a */
    public static final PushRepo f44374a = new PushRepo();

    /* renamed from: b */
    private static final int f44375b = g.a(6.0f);

    /* renamed from: c */
    private static final int f44376c = g.a(44.0f);

    /* renamed from: d */
    private static final int f44377d = z.f51786a.p();

    /* renamed from: e */
    private static final int f44378e = g.a(56.0f);

    /* renamed from: f */
    private static final int f44379f = g.a(54.0f);

    /* renamed from: g */
    private static final int f44380g = g.a(72.0f);
    @NotNull

    /* renamed from: h */
    private static final i f44381h = c.b(new Function0() { // from class: eh.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            b r10;
            r10 = PushRepo.r();
            return r10;
        }
    });
    @NotNull

    /* renamed from: i */
    private static final i f44382i = c.b(new Function0() { // from class: eh.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PushRemoteDS s10;
            s10 = PushRepo.s();
            return s10;
        }
    });

    /* renamed from: j */
    private static long f44383j = -1;

    /* renamed from: k */
    private static boolean f44384k;

    /* compiled from: PushRepo.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a implements Function1<List<Bitmap>, Unit> {

        /* renamed from: a */
        final /* synthetic */ gt.i<Bitmap> f44385a;

        /* renamed from: b */
        final /* synthetic */ int f44386b;

        /* renamed from: c */
        final /* synthetic */ int f44387c;

        /* renamed from: d */
        final /* synthetic */ int f44388d;

        /* renamed from: e */
        final /* synthetic */ boolean f44389e;

        /* JADX WARN: Multi-variable type inference failed */
        a(gt.i<? super Bitmap> iVar, int i10, int i11, int i12, boolean z10) {
            this.f44385a = iVar;
            this.f44386b = i10;
            this.f44387c = i11;
            this.f44388d = i12;
            this.f44389e = z10;
        }

        public final void a(List<Bitmap> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (it.isEmpty()) {
                e.a(this.f44385a, null);
            } else if (this.f44386b == 0) {
                e.a(this.f44385a, it.get(0));
            } else {
                e.a(this.f44385a, f.f51730a.b(it.get(0), this.f44386b, this.f44387c, this.f44388d, this.f44389e));
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<Bitmap> list) {
            a(list);
            return Unit.f60915a;
        }
    }

    private PushRepo() {
    }

    private final Object l(List<? extends ImageRequest> list, int i10, int i11, int i12, boolean z10, rs.c<? super Bitmap> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        kk.f fVar = kk.f.f60747a;
        i2.a a10 = i2.a.a();
        Intrinsics.checkNotNullExpressionValue(a10, "getInstance(...)");
        fVar.u(list, a10, new a(eVar, i10, i11, i12, z10));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    public static /* synthetic */ Object m(PushRepo pushRepo, String str, int i10, int i11, int i12, boolean z10, rs.c cVar, int i13, Object obj) {
        if ((i13 & 8) != 0) {
            i12 = f44375b;
        }
        int i14 = i12;
        if ((i13 & 16) != 0) {
            z10 = false;
        }
        return pushRepo.k(str, i10, i11, i14, z10, cVar);
    }

    public final b p() {
        return (b) f44381h.getValue();
    }

    public final PushRemoteDS q() {
        return (PushRemoteDS) f44382i.getValue();
    }

    public static final b r() {
        return new b();
    }

    public static final PushRemoteDS s() {
        return new PushRemoteDS();
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x009d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object A(@org.jetbrains.annotations.NotNull rs.c<? super com.startshorts.androidplayer.bean.notification.StartRechargingNotification> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.repo.push.PushRepo$queryStartRechargingNotification$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.repo.push.PushRepo$queryStartRechargingNotification$1 r0 = (com.startshorts.androidplayer.repo.push.PushRepo$queryStartRechargingNotification$1) r0
            int r1 = r0.f44424l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44424l = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.push.PushRepo$queryStartRechargingNotification$1 r0 = new com.startshorts.androidplayer.repo.push.PushRepo$queryStartRechargingNotification$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.f44422j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44424l
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L4b
            if (r2 == r5) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r1 = r0.f44421i
            com.startshorts.androidplayer.bean.notification.StartRechargingNotification r1 = (com.startshorts.androidplayer.bean.notification.StartRechargingNotification) r1
            java.lang.Object r0 = r0.f44420h
            com.startshorts.androidplayer.bean.notification.StartRechargingNotification r0 = (com.startshorts.androidplayer.bean.notification.StartRechargingNotification) r0
            kotlin.f.b(r9)
            goto L90
        L35:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3d:
            java.lang.Object r2 = r0.f44420h
            com.startshorts.androidplayer.repo.push.PushRepo r2 = (com.startshorts.androidplayer.repo.push.PushRepo) r2
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.n()
            goto L67
        L4b:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.repo.account.AccountRepo r9 = com.startshorts.androidplayer.repo.account.AccountRepo.f43052a
            boolean r9 = r9.w0()
            if (r9 != 0) goto L57
            return r4
        L57:
            com.startshorts.androidplayer.repo.push.PushRemoteDS r9 = r8.q()
            r0.f44420h = r8
            r0.f44424l = r5
            java.lang.Object r9 = r9.g(r0)
            if (r9 != r1) goto L66
            return r1
        L66:
            r2 = r8
        L67:
            boolean r6 = kotlin.Result.j(r9)
            java.lang.String r7 = "START_RECHARGING"
            if (r6 == 0) goto L9d
            boolean r6 = kotlin.Result.i(r9)
            if (r6 == 0) goto L76
            goto L77
        L76:
            r4 = r9
        L77:
            r9 = r4
            com.startshorts.androidplayer.bean.notification.StartRechargingNotification r9 = (com.startshorts.androidplayer.bean.notification.StartRechargingNotification) r9
            if (r9 == 0) goto L97
            java.lang.String r4 = r9.getCoverId()
            r0.f44420h = r9
            r0.f44421i = r9
            r0.f44424l = r3
            java.lang.Object r0 = r2.n(r4, r0)
            if (r0 != r1) goto L8d
            return r1
        L8d:
            r1 = r9
            r9 = r0
            r0 = r1
        L90:
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            r1.setCover(r9)
            r9 = r0
            goto L9c
        L97:
            ud.a r0 = ud.a.f68411a
            r0.A0(r7, r5)
        L9c:
            return r9
        L9d:
            ud.a r9 = ud.a.f68411a
            r9.A0(r7, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.push.PushRepo.A(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0074  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object B(@org.jetbrains.annotations.NotNull rs.c<? super com.startshorts.androidplayer.bean.notification.SubsBonusNotification> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.push.PushRepo$querySubsBonusNotification$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.push.PushRepo$querySubsBonusNotification$1 r0 = (com.startshorts.androidplayer.repo.push.PushRepo$querySubsBonusNotification$1) r0
            int r1 = r0.f44427j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44427j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.push.PushRepo$querySubsBonusNotification$1 r0 = new com.startshorts.androidplayer.repo.push.PushRepo$querySubsBonusNotification$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f44425h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44427j
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            goto L5a
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L38:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.account.AccountRepo r6 = com.startshorts.androidplayer.repo.account.AccountRepo.f43052a
            boolean r6 = r6.w0()
            if (r6 != 0) goto L44
            return r4
        L44:
            com.startshorts.androidplayer.repo.billing.subs.SubsRepo r6 = com.startshorts.androidplayer.repo.billing.subs.SubsRepo.f43486a
            boolean r6 = r6.k()
            if (r6 == 0) goto L4d
            return r4
        L4d:
            com.startshorts.androidplayer.repo.push.PushRemoteDS r6 = r5.q()
            r0.f44427j = r3
            java.lang.Object r6 = r6.h(r0)
            if (r6 != r1) goto L5a
            return r1
        L5a:
            boolean r0 = kotlin.Result.j(r6)
            if (r0 == 0) goto L74
            boolean r0 = kotlin.Result.i(r6)
            if (r0 == 0) goto L67
            r6 = r4
        L67:
            com.startshorts.androidplayer.bean.notification.SubsBonusNotification r6 = (com.startshorts.androidplayer.bean.notification.SubsBonusNotification) r6
            if (r6 != 0) goto L72
            com.startshorts.androidplayer.bean.notification.SubsBonusNotification r6 = new com.startshorts.androidplayer.bean.notification.SubsBonusNotification
            java.lang.String r0 = ""
            r6.<init>(r0, r0, r0, r4)
        L72:
            r4 = r6
            goto L7b
        L74:
            ud.a r6 = ud.a.f68411a
            java.lang.String r0 = "SUBS_BONUS"
            r6.A0(r0, r3)
        L7b:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.push.PushRepo.B(rs.c):java.lang.Object");
    }

    public final void C() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "reportFCMToken", false, new PushRepo$reportFCMToken$1(null), 2, null);
    }

    @NotNull
    public final r D(int i10, @NotNull String pushId) {
        Intrinsics.checkNotNullParameter(pushId, "pushId");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "reportPushInfo", false, new PushRepo$reportPushInfo$1(i10, pushId, null), 2, null);
    }

    public final void E() {
        if (ud.b.f68412a.W1()) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "reportReceivePush", false, new PushRepo$reportReceivePush$1(null), 2, null);
    }

    public final void h() {
        if (f44384k || !p().g()) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "addRecommendShortsNotificationCache", false, new PushRepo$addRecommendShortsNotificationCache$1(null), 2, null);
    }

    public final void i() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "clearFCMPushCount", false, new PushRepo$clearFCMPushCount$1(null), 2, null);
    }

    public final void j() {
        p().c();
    }

    @Nullable
    public final Object k(@Nullable String str, int i10, int i11, int i12, boolean z10, @NotNull rs.c<? super Bitmap> cVar) {
        if (str == null || str.length() == 0) {
            return null;
        }
        kk.f fVar = kk.f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setOssWidth(i10);
        frescoConfig.setOssHeight(i11);
        frescoConfig.setUrl(str);
        ImageRequest m10 = fVar.m(frescoConfig);
        if (m10 == null) {
            return null;
        }
        Logger logger = Logger.f41511a;
        logger.h("PushRepo", "downloadPic -> width(" + i10 + ") height(" + i11 + ") cornerRadius(" + i12 + ") url(" + str + ')');
        return l(CollectionsKt.t(m10), i12, i10, i11, z10, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00bc  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x00b9 -> B:52:0x004b). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object n(@org.jetbrains.annotations.Nullable java.lang.String r19, @org.jetbrains.annotations.NotNull rs.c<? super android.graphics.Bitmap> r20) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.push.PushRepo.n(java.lang.String, rs.c):java.lang.Object");
    }

    @Nullable
    public final List<tf.c> o() {
        return p().e();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0072  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object t(@org.jetbrains.annotations.NotNull rs.c<? super com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.push.PushRepo$queryBonusWillExpiredNotification$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.push.PushRepo$queryBonusWillExpiredNotification$1 r0 = (com.startshorts.androidplayer.repo.push.PushRepo$queryBonusWillExpiredNotification$1) r0
            int r1 = r0.f44401j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44401j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.push.PushRepo$queryBonusWillExpiredNotification$1 r0 = new com.startshorts.androidplayer.repo.push.PushRepo$queryBonusWillExpiredNotification$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f44399h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44401j
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 != r4) goto L30
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            goto L58
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L38:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.account.AccountRepo r6 = com.startshorts.androidplayer.repo.account.AccountRepo.f43052a
            boolean r2 = r6.w0()
            if (r2 != 0) goto L44
            return r3
        L44:
            boolean r6 = r6.z0()
            if (r6 == 0) goto L4b
            return r3
        L4b:
            com.startshorts.androidplayer.repo.push.PushRemoteDS r6 = r5.q()
            r0.f44401j = r4
            java.lang.Object r6 = r6.b(r0)
            if (r6 != r1) goto L58
            return r1
        L58:
            boolean r0 = kotlin.Result.j(r6)
            java.lang.String r1 = "BONUS_WILL_EXPIRED"
            if (r0 == 0) goto L72
            boolean r0 = kotlin.Result.i(r6)
            if (r0 == 0) goto L67
            goto L68
        L67:
            r3 = r6
        L68:
            com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification r3 = (com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification) r3
            if (r3 != 0) goto L71
            ud.a r6 = ud.a.f68411a
            r6.A0(r1, r4)
        L71:
            return r3
        L72:
            ud.a r6 = ud.a.f68411a
            r6.A0(r1, r4)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.push.PushRepo.t(rs.c):java.lang.Object");
    }

    @NotNull
    public final String u() {
        if (!AccountRepo.f43052a.w0()) {
            return "";
        }
        return (String) ng.e.f62912a.i("checkInIcon", "");
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0043  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object v(@org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.NotNull rs.c<? super com.startshorts.androidplayer.bean.notification.CustomNotification> r13) {
        /*
            r11 = this;
            boolean r0 = r13 instanceof com.startshorts.androidplayer.repo.push.PushRepo$queryCustomNotification$1
            if (r0 == 0) goto L14
            r0 = r13
            com.startshorts.androidplayer.repo.push.PushRepo$queryCustomNotification$1 r0 = (com.startshorts.androidplayer.repo.push.PushRepo$queryCustomNotification$1) r0
            int r1 = r0.f44405k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f44405k = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.push.PushRepo$queryCustomNotification$1 r0 = new com.startshorts.androidplayer.repo.push.PushRepo$queryCustomNotification$1
            r0.<init>(r11, r13)
            goto L12
        L1a:
            java.lang.Object r13 = r7.f44403i
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f44405k
            r2 = 2
            r10 = 1
            if (r1 == 0) goto L43
            if (r1 == r10) goto L3b
            if (r1 != r2) goto L33
            java.lang.Object r12 = r7.f44402h
            com.startshorts.androidplayer.bean.notification.CustomNotification r12 = (com.startshorts.androidplayer.bean.notification.CustomNotification) r12
            kotlin.f.b(r13)
            goto Lb8
        L33:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L3b:
            java.lang.Object r12 = r7.f44402h
            com.startshorts.androidplayer.bean.notification.CustomNotification r12 = (com.startshorts.androidplayer.bean.notification.CustomNotification) r12
            kotlin.f.b(r13)
            goto L9c
        L43:
            kotlin.f.b(r13)
            eh.b r13 = r11.p()
            java.util.List r13 = r13.d()
            r1 = 0
            if (r13 == 0) goto Lc8
            java.lang.Iterable r13 = (java.lang.Iterable) r13
            java.util.Iterator r13 = r13.iterator()
        L57:
            boolean r3 = r13.hasNext()
            if (r3 == 0) goto L6f
            java.lang.Object r3 = r13.next()
            r4 = r3
            com.startshorts.androidplayer.bean.push.CustomPush r4 = (com.startshorts.androidplayer.bean.push.CustomPush) r4
            java.lang.String r4 = r4.getId()
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r12)
            if (r4 == 0) goto L57
            goto L70
        L6f:
            r3 = r1
        L70:
            com.startshorts.androidplayer.bean.push.CustomPush r3 = (com.startshorts.androidplayer.bean.push.CustomPush) r3
            if (r3 != 0) goto L75
            goto Lc8
        L75:
            com.startshorts.androidplayer.manager.push.util.PushUtil r12 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a
            int r13 = r12.s()
            int r1 = r12.t()
            int r12 = r12.r()
            com.startshorts.androidplayer.bean.notification.CustomNotification r12 = r3.createCustomNotification(r13, r1, r12)
            int r13 = r3.getShortId()
            if (r13 <= 0) goto L9f
            java.lang.String r13 = r3.getCoverId()
            r7.f44402h = r12
            r7.f44405k = r10
            java.lang.Object r13 = r11.n(r13, r7)
            if (r13 != r0) goto L9c
            return r0
        L9c:
            android.graphics.Bitmap r13 = (android.graphics.Bitmap) r13
            goto Lba
        L9f:
            java.lang.String r13 = r3.getCoverId()
            int r4 = com.startshorts.androidplayer.repo.push.PushRepo.f44377d
            r7.f44402h = r12
            r7.f44405k = r2
            r5 = 0
            r6 = 0
            r8 = 16
            r9 = 0
            r1 = r11
            r2 = r13
            r3 = r4
            java.lang.Object r13 = m(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            if (r13 != r0) goto Lb8
            return r0
        Lb8:
            android.graphics.Bitmap r13 = (android.graphics.Bitmap) r13
        Lba:
            r12.setCover(r13)
            com.startshorts.androidplayer.manager.push.util.PushUtil r13 = com.startshorts.androidplayer.manager.push.util.PushUtil.f42895a
            int r0 = r13.v()
            int r0 = r0 + r10
            r13.W(r0)
            return r12
        Lc8:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.push.PushRepo.v(java.lang.String, rs.c):java.lang.Object");
    }

    public final void w() {
        if (ud.a.f68411a.t() || !AccountRepo.f43052a.w0()) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "queryCustomPush", false, new PushRepo$queryCustomPush$1(null), 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0078  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object x(@org.jetbrains.annotations.NotNull rs.c<? super com.startshorts.androidplayer.bean.notification.NewShortsNotification> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.startshorts.androidplayer.repo.push.PushRepo$queryDefaultNewShortsNotification$1
            if (r0 == 0) goto L13
            r0 = r9
            com.startshorts.androidplayer.repo.push.PushRepo$queryDefaultNewShortsNotification$1 r0 = (com.startshorts.androidplayer.repo.push.PushRepo$queryDefaultNewShortsNotification$1) r0
            int r1 = r0.f44410k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44410k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.push.PushRepo$queryDefaultNewShortsNotification$1 r0 = new com.startshorts.androidplayer.repo.push.PushRepo$queryDefaultNewShortsNotification$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.f44408i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44410k
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L47
            if (r2 == r5) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r0 = r0.f44407h
            com.startshorts.androidplayer.bean.notification.NewShortsNotification r0 = (com.startshorts.androidplayer.bean.notification.NewShortsNotification) r0
            kotlin.f.b(r9)
            goto L8a
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L39:
            java.lang.Object r2 = r0.f44407h
            com.startshorts.androidplayer.repo.push.PushRepo r2 = (com.startshorts.androidplayer.repo.push.PushRepo) r2
            kotlin.f.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.n()
            goto L65
        L47:
            kotlin.f.b(r9)
            com.startshorts.androidplayer.repo.account.AccountRepo r9 = com.startshorts.androidplayer.repo.account.AccountRepo.f43052a
            boolean r9 = r9.w0()
            if (r9 != 0) goto L53
            return r4
        L53:
            com.startshorts.androidplayer.repo.push.PushRemoteDS r9 = r8.q()
            r0.f44407h = r8
            r0.f44410k = r5
            r2 = 10
            java.lang.Object r9 = r9.d(r2, r0)
            if (r9 != r1) goto L64
            return r1
        L64:
            r2 = r8
        L65:
            boolean r6 = kotlin.Result.i(r9)
            if (r6 == 0) goto L6c
            r9 = r4
        L6c:
            com.startshorts.androidplayer.bean.notification.NewShortsNotification r9 = (com.startshorts.androidplayer.bean.notification.NewShortsNotification) r9
            if (r9 != 0) goto L78
            ud.a r9 = ud.a.f68411a
            java.lang.String r0 = "NEW_SHORTS"
            r9.A0(r0, r5)
            return r4
        L78:
            java.lang.String r4 = r9.getCoverId()
            r0.f44407h = r9
            r0.f44410k = r3
            java.lang.Object r0 = r2.n(r4, r0)
            if (r0 != r1) goto L87
            return r1
        L87:
            r7 = r0
            r0 = r9
            r9 = r7
        L8a:
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            r0.setCover(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.push.PushRepo.x(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0072  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object y(@org.jetbrains.annotations.NotNull rs.c<? super com.startshorts.androidplayer.bean.notification.MissCheckInNotification> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.push.PushRepo$queryMissCheckInNotification$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.push.PushRepo$queryMissCheckInNotification$1 r0 = (com.startshorts.androidplayer.repo.push.PushRepo$queryMissCheckInNotification$1) r0
            int r1 = r0.f44413j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44413j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.push.PushRepo$queryMissCheckInNotification$1 r0 = new com.startshorts.androidplayer.repo.push.PushRepo$queryMissCheckInNotification$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f44411h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44413j
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 != r4) goto L30
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            goto L58
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L38:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.repo.account.AccountRepo r6 = com.startshorts.androidplayer.repo.account.AccountRepo.f43052a
            boolean r2 = r6.w0()
            if (r2 != 0) goto L44
            return r3
        L44:
            boolean r6 = r6.z0()
            if (r6 == 0) goto L4b
            return r3
        L4b:
            com.startshorts.androidplayer.repo.push.PushRemoteDS r6 = r5.q()
            r0.f44413j = r4
            java.lang.Object r6 = r6.e(r0)
            if (r6 != r1) goto L58
            return r1
        L58:
            boolean r0 = kotlin.Result.j(r6)
            java.lang.String r1 = "MISS_CHECK_IN"
            if (r0 == 0) goto L72
            boolean r0 = kotlin.Result.i(r6)
            if (r0 == 0) goto L67
            goto L68
        L67:
            r3 = r6
        L68:
            com.startshorts.androidplayer.bean.notification.MissCheckInNotification r3 = (com.startshorts.androidplayer.bean.notification.MissCheckInNotification) r3
            if (r3 != 0) goto L77
            ud.a r6 = ud.a.f68411a
            r6.A0(r1, r4)
            goto L77
        L72:
            ud.a r6 = ud.a.f68411a
            r6.A0(r1, r4)
        L77:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.push.PushRepo.y(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x00e9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00bc  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object z(@org.jetbrains.annotations.NotNull rs.c<? super com.startshorts.androidplayer.bean.notification.RecommendShortsNotification> r11) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.push.PushRepo.z(rs.c):java.lang.Object");
    }
}
