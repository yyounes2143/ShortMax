package com.startshorts.androidplayer.manager.attribution;

import android.os.Bundle;
import android.text.TextUtils;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignReporter;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: CampaignReporter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCampaignReporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignReporter.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignReporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,698:1\n1#2:699\n116#3,10:700\n*S KotlinDebug\n*F\n+ 1 CampaignReporter.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignReporter\n*L\n68#1:700,10\n*E\n"})
/* loaded from: classes6.dex */
public final class CampaignReporter {

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f41889b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile boolean f41890c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile boolean f41891d;

    /* renamed from: e  reason: collision with root package name */
    private static volatile boolean f41892e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile boolean f41893f;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final CampaignReporter f41888a = new CampaignReporter();
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final qt.a f41894g = qt.d.b(false, 1, null);

    private CampaignReporter() {
    }

    private final String A(String str) {
        String optString;
        if (str == null) {
            return "unknown";
        }
        if (str.length() != 0) {
            try {
                optString = new JSONObject(str).optString("tracker_name", "");
                if (optString.length() == 0) {
                    optString = "unknown";
                }
                Intrinsics.checkNotNull(optString);
            } catch (Exception unused) {
                return "unknown";
            }
        }
        return optString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(String str) {
        f41890c = false;
        ud.b.f68412a.S2(true);
        CampaignReporter campaignReporter = f41888a;
        CampaignType campaignType = CampaignType.AF_CONVERSION_DATA;
        Bundle bundle = new Bundle();
        bundle.putString("err_msg", str);
        Unit unit = Unit.f60915a;
        campaignReporter.x(campaignType, bundle);
        if (campaignReporter.s()) {
            CampaignParser.f41836a.x();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E(String str, String str2) {
        f41891d = false;
        ud.b bVar = ud.b.f68412a;
        bVar.k2(str);
        bVar.T2(true);
        CampaignReporter campaignReporter = f41888a;
        CampaignType campaignType = CampaignType.AJ_CONVERSION_DATA;
        Bundle bundle = new Bundle();
        bundle.putString("err_msg", str2);
        Unit unit = Unit.f60915a;
        campaignReporter.x(campaignType, bundle);
        if (campaignReporter.s()) {
            CampaignParser.f41836a.x();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(String str) {
        f41892e = false;
        ud.b.f68412a.U2(true);
        CampaignReporter campaignReporter = f41888a;
        CampaignType campaignType = CampaignType.META_INSTALL_REFERRER;
        Bundle bundle = new Bundle();
        bundle.putString("err_msg", str);
        Unit unit = Unit.f60915a;
        campaignReporter.x(campaignType, bundle);
        if (campaignReporter.s()) {
            CampaignParser.f41836a.x();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I(String str) {
        Logger.f41511a.e("CampaignNewTag", "reportFirebaseDDLInfo error");
        f41893f = false;
        return Unit.f60915a;
    }

    public static /* synthetic */ void K(CampaignReporter campaignReporter, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        campaignReporter.J(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(String str) {
        f41889b = false;
        ud.b.f68412a.W2(true);
        CampaignReporter campaignReporter = f41888a;
        CampaignType campaignType = CampaignType.GP_INSTALL_REFERRER;
        Bundle bundle = new Bundle();
        bundle.putString("err_msg", str);
        Unit unit = Unit.f60915a;
        campaignReporter.x(campaignType, bundle);
        if (campaignReporter.s()) {
            CampaignParser.f41836a.x();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(String str) {
        Logger.f41511a.e("CampaignNewTag", "reportPreInstall error ->");
        f41889b = false;
        CampaignReporter campaignReporter = f41888a;
        CampaignType campaignType = CampaignType.PRE_INSTALL;
        Bundle bundle = new Bundle();
        bundle.putString("err_msg", str);
        Unit unit = Unit.f60915a;
        campaignReporter.x(campaignType, bundle);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object p(rs.c<? super java.lang.String> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.manager.attribution.CampaignReporter$getRequestId$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.manager.attribution.CampaignReporter$getRequestId$1 r0 = (com.startshorts.androidplayer.manager.attribution.CampaignReporter$getRequestId$1) r0
            int r1 = r0.f41898k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41898k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.attribution.CampaignReporter$getRequestId$1 r0 = new com.startshorts.androidplayer.manager.attribution.CampaignReporter$getRequestId$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f41896i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41898k
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r0 = r0.f41895h
            qt.a r0 = (qt.a) r0
            kotlin.f.b(r6)
            goto L47
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.f.b(r6)
            qt.a r6 = com.startshorts.androidplayer.manager.attribution.CampaignReporter.f41894g
            r0.f41895h = r6
            r0.f41898k = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L46
            return r1
        L46:
            r0 = r6
        L47:
            java.util.UUID r6 = java.util.UUID.randomUUID()     // Catch: java.lang.Throwable -> L59
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L59
            java.lang.String r1 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r1)     // Catch: java.lang.Throwable -> L59
            r0.unlock(r4)
            return r6
        L59:
            r6 = move-exception
            r0.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.CampaignReporter.p(rs.c):java.lang.Object");
    }

    private final boolean q() {
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isAJApiFailOrAlreadySend attributionAJFail -> ");
        ud.b bVar = ud.b.f68412a;
        sb2.append(bVar.J());
        sb2.append(",ajConversionDataSent -> ");
        sb2.append(bVar.s());
        sb2.append('}');
        logger.e("CampaignNewTag", sb2.toString());
        if (!bVar.J() && !bVar.s()) {
            return false;
        }
        return true;
    }

    private final boolean r() {
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isAfApiFailOrAlreadySend attributionAFFail -> ");
        ud.b bVar = ud.b.f68412a;
        sb2.append(bVar.I());
        sb2.append(",afConversionDataSent -> ");
        sb2.append(bVar.o());
        sb2.append('}');
        logger.e("CampaignNewTag", sb2.toString());
        if (!bVar.I() && !bVar.o()) {
            return false;
        }
        return true;
    }

    private final boolean t() {
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isFbApiFailOrAlreadySend attributionFBFail -> ");
        ud.b bVar = ud.b.f68412a;
        sb2.append(bVar.K());
        sb2.append(",metaInstallReferrerSent -> ");
        sb2.append(bVar.c1());
        sb2.append('}');
        logger.e("CampaignNewTag", sb2.toString());
        if (!bVar.K() && !bVar.c1()) {
            return false;
        }
        return true;
    }

    private final boolean v() {
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("isSelfApiFailOrAlreadySend attributionSelfFail -> ");
        ud.b bVar = ud.b.f68412a;
        sb2.append(bVar.M());
        sb2.append(",lpInfoSent -> ");
        sb2.append(bVar.V0());
        sb2.append('}');
        logger.e("CampaignNewTag", sb2.toString());
        if (!bVar.M() && !bVar.V0()) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(CampaignType campaignType) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString(MBInterstitialActivity.INTENT_CAMAPIGN, campaignType.getValue());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_info_report", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x(CampaignType campaignType, Bundle bundle) {
        EventManager eventManager = EventManager.f42463a;
        bundle.putString(MBInterstitialActivity.INTENT_CAMAPIGN, campaignType.getValue());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_info_report_failed", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(CampaignType campaignType, boolean z10) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString(MBInterstitialActivity.INTENT_CAMAPIGN, campaignType.getValue());
        bundle.putString("isFirstReport", String.valueOf(!z10));
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_info_report_success", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void z(CampaignReporter campaignReporter, CampaignType campaignType, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        campaignReporter.y(campaignType, z10);
    }

    public final void B(@Nullable String str) {
        if (ud.b.f68412a.o()) {
            g.f51731a.c(16);
            Logger.f41511a.e("CampaignNewTag", "reportAFInfo failed -> afConversionDataSent is true");
        } else if (!AccountRepo.f43052a.w0()) {
            g.f51731a.c(17);
            Logger.f41511a.e("CampaignNewTag", "reportAFInfo failed -> not register account yet");
        } else if (f41890c) {
            g.f51731a.c(18);
            Logger.f41511a.e("CampaignNewTag", "reportAFInfo failed -> AFInfoReporting is true");
        } else {
            f41890c = true;
            CoroutineUtil.k(CoroutineUtil.f48072a, null, "reportAFInfo", false, new CampaignReporter$reportAFInfo$1(str, null), new Function1() { // from class: ge.n
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit C;
                    C = CampaignReporter.C((String) obj);
                    return C;
                }
            }, 5, null);
        }
    }

    public final void D(@Nullable String str) {
        if (!AccountRepo.f43052a.w0()) {
            g.f51731a.c(27);
            Logger.f41511a.e("CampaignNewTag", "reportAJInfo failed -> not register account yet");
            return;
        }
        final String A = A(str);
        ud.b bVar = ud.b.f68412a;
        if (!bVar.b(A)) {
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "reportAJInfo skip -> trackerName already reported: " + A);
        } else if (f41891d) {
            g.f51731a.c(28);
            Logger.f41511a.e("CampaignNewTag", "reportAJInfo failed -> AJInfoReporting is true");
            bVar.k2(A);
        } else {
            f41891d = true;
            CoroutineUtil.k(CoroutineUtil.f48072a, null, "reportAJInfo", false, new CampaignReporter$reportAJInfo$1(str, A, null), new Function1() { // from class: ge.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit E;
                    E = CampaignReporter.E(A, (String) obj);
                    return E;
                }
            }, 5, null);
        }
    }

    public final void F(@NotNull String fbInstallReferrer, int i10) {
        Intrinsics.checkNotNullParameter(fbInstallReferrer, "fbInstallReferrer");
        if (ud.b.f68412a.c1()) {
            g.f51731a.c(19);
            Logger.f41511a.e("CampaignNewTag", "reportFBInfo failed -> metaInstallReferrerSent is true");
        } else if (!AccountRepo.f43052a.w0()) {
            g.f51731a.c(20);
            Logger.f41511a.e("CampaignNewTag", "reportFBInfo failed -> not register account yet");
        } else if (f41892e) {
            g.f51731a.c(21);
            Logger.f41511a.e("CampaignNewTag", "reportFBInfo failed -> FBInfoReporting is true");
        } else {
            f41892e = true;
            CoroutineUtil.k(CoroutineUtil.f48072a, null, "reportFBInfo", false, new CampaignReporter$reportFBInfo$1(fbInstallReferrer, i10, null), new Function1() { // from class: ge.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit G;
                    G = CampaignReporter.G((String) obj);
                    return G;
                }
            }, 5, null);
        }
    }

    public final void H(@NotNull String deeplink) {
        Intrinsics.checkNotNullParameter(deeplink, "deeplink");
        if (ud.b.f68412a.n0()) {
            Logger.f41511a.e("CampaignNewTag", "reportFirebaseDDLInfo failed -> ddlInfoSent is true");
        } else if (!AccountRepo.f43052a.w0()) {
            Logger.f41511a.e("CampaignNewTag", "reportFirebaseDDLInfo failed -> not register account yet");
        } else if (f41893f) {
            Logger.f41511a.e("CampaignNewTag", "reportFirebaseDDLInfo failed -> DDLInfoReporting is true");
        } else {
            f41893f = true;
            CoroutineUtil.k(CoroutineUtil.f48072a, null, "reportFirebaseDDLInfo", false, new CampaignReporter$reportFirebaseDDLInfo$1(deeplink, null), new Function1() { // from class: ge.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit I;
                    I = CampaignReporter.I((String) obj);
                    return I;
                }
            }, 5, null);
        }
    }

    public final void J(@Nullable String str, boolean z10) {
        if (!z10 && ud.b.f68412a.V0()) {
            g.f51731a.c(13);
            Logger.f41511a.e("CampaignNewTag", "reportLPInfo failed -> lpInfoSent is true");
        } else if (!AccountRepo.f43052a.w0()) {
            g.f51731a.c(14);
            Logger.f41511a.e("CampaignNewTag", "reportLPInfo failed -> not register account yet");
        } else if (f41889b) {
            g.f51731a.c(15);
            Logger.f41511a.e("CampaignNewTag", "reportLPInfo failed -> LPInfoReporting is true");
        } else {
            f41889b = true;
            CoroutineUtil.k(CoroutineUtil.f48072a, null, "reportLPInfo", false, new CampaignReporter$reportLPInfo$1(str, z10, null), new Function1() { // from class: ge.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit L;
                    L = CampaignReporter.L((String) obj);
                    return L;
                }
            }, 5, null);
        }
    }

    public final void M(@Nullable String str, boolean z10) {
        if (!z10 && ud.b.f68412a.V0()) {
            g.f51731a.c(22);
            Logger.f41511a.e("CampaignNewTag", "reportPreInstall failed -> lpInfoSent is true");
        } else if (!AccountRepo.f43052a.w0()) {
            g.f51731a.c(23);
            Logger.f41511a.e("CampaignNewTag", "reportPreInstall failed -> not register account yet");
        } else if (f41889b) {
            g.f51731a.c(24);
            Logger.f41511a.e("CampaignNewTag", "reportPreInstall failed -> LPInfoReporting is true");
        } else {
            f41889b = true;
            CoroutineUtil.k(CoroutineUtil.f48072a, null, "reportPreInstall", false, new CampaignReporter$reportPreInstallLPInfo$1(str, z10, null), new Function1() { // from class: ge.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit N;
                    N = CampaignReporter.N((String) obj);
                    return N;
                }
            }, 5, null);
        }
    }

    public final boolean s() {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "isAllAttributionHandleNotCampaign isAfApiFailOrAlreadySend -> " + r() + ",isAfApiFailOrAlreadySend -> " + t() + ",isSelfApiFailOrAlreadySend -> " + v());
        if (r() && t() && v() && q()) {
            return true;
        }
        return false;
    }

    public final boolean u() {
        return !TextUtils.isEmpty(BaseCampaignProvider.f42007e.a(CampaignType.UPLOAD_CAMPAIGN_INFO_RESULT));
    }
}
