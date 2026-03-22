package com.startshorts.androidplayer.repo.billing;

import android.app.Activity;
import android.os.Bundle;
import com.appsflyer.AppsFlyerProperties;
import com.hades.aar.activity.IDActivity;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ActResourceExtraInfo;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.ConsumeData;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRemoteDS;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zc.f;
import zc.g;
import zc.h;
import zc.k;
/* compiled from: BillingRepo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBillingRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingRepo.kt\ncom/startshorts/androidplayer/repo/billing/BillingRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,645:1\n1863#2,2:646\n1863#2,2:648\n1863#2,2:650\n1863#2,2:652\n1863#2,2:654\n1863#2,2:656\n1863#2,2:658\n1863#2,2:660\n*S KotlinDebug\n*F\n+ 1 BillingRepo.kt\ncom/startshorts/androidplayer/repo/billing/BillingRepo\n*L\n489#1:646,2\n503#1:648,2\n519#1:650,2\n533#1:652,2\n549#1:654,2\n559#1:656,2\n587#1:658,2\n595#1:660,2\n*E\n"})
/* loaded from: classes7.dex */
public final class BillingRepo {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private static CoinSku f43243g;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static SubsSku f43245i;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private static String f43247k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private static SubsSku f43248l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private static String f43249m;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final BillingRepo f43237a = new BillingRepo();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f43238b = ae.a.f627a.b();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static String f43239c = ".subs.";
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static String f43240d = ".sale.";
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final i f43241e = kotlin.c.b(new Function0() { // from class: gg.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingRemoteDS V;
            V = BillingRepo.V();
            return V;
        }
    });
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final i f43242f = kotlin.c.b(new Function0() { // from class: gg.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            c S;
            S = BillingRepo.S();
            return S;
        }
    });
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final i<List<String>> f43244h = kotlin.c.b(new Function0() { // from class: gg.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List T;
            T = BillingRepo.T();
            return T;
        }
    });

    /* renamed from: j  reason: collision with root package name */
    private static int f43246j = -1;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private static final i<List<String>> f43250n = kotlin.c.b(new Function0() { // from class: gg.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List U;
            U = BillingRepo.U();
            return U;
        }
    });

    /* renamed from: o  reason: collision with root package name */
    private static long f43251o = -1;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static ConcurrentHashMap<String, BaseEpisode> f43252p = new ConcurrentHashMap<>();

    /* compiled from: BillingRepo.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nBillingRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingRepo.kt\ncom/startshorts/androidplayer/repo/billing/BillingRepo$mRemoteDS$2$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,645:1\n1863#2,2:646\n*S KotlinDebug\n*F\n+ 1 BillingRepo.kt\ncom/startshorts/androidplayer/repo/billing/BillingRepo$mRemoteDS$2$1$1\n*L\n70#1:646,2\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a implements BillingRemoteDS.d {
        a() {
        }

        @Override // com.startshorts.androidplayer.repo.billing.BillingRemoteDS.d
        public void a(String opId, List<f> list) {
            Intrinsics.checkNotNullParameter(opId, "opId");
            if (list != null) {
                for (f fVar : list) {
                    if (fVar.e() == f.b.f71618c.a() && !fVar.i()) {
                        BillingRepo billingRepo = BillingRepo.f43237a;
                        if (StringsKt.b0(fVar.d().get(0), billingRepo.z(), false, 2, null)) {
                            billingRepo.J(opId, fVar);
                        } else {
                            billingRepo.D(opId, fVar);
                        }
                    }
                }
            }
        }
    }

    /* compiled from: BillingRepo.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BillingRemoteDS.c {
        b() {
        }

        @Override // com.startshorts.androidplayer.repo.billing.BillingRemoteDS.c
        public void a(String opId, List<h> list) {
            Intrinsics.checkNotNullParameter(opId, "opId");
            List<h> list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                BillingRepo.f43237a.x().c(list);
            }
            BillingRepo billingRepo = BillingRepo.f43237a;
            billingRepo.F();
            billingRepo.H();
        }
    }

    private BillingRepo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F() {
        try {
            i<List<String>> iVar = f43244h;
            if (!iVar.isInitialized()) {
                return;
            }
            ArrayList<String> arrayList = new ArrayList();
            List<String> value = iVar.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
            synchronized (value) {
                List<String> value2 = iVar.getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "<get-value>(...)");
                for (String str : value2) {
                    BillingRepo billingRepo = f43237a;
                    gg.c x10 = billingRepo.x();
                    Intrinsics.checkNotNull(str);
                    GPayPriceInfo e10 = x10.e(str);
                    if (e10.isValid()) {
                        Logger logger = Logger.f41511a;
                        logger.e("BillingRepo", "handlePendingLogPurchaseEvents -> " + str);
                        arrayList.add(str);
                        P(billingRepo, str, e10, null, 4, null);
                        EventManager eventManager = EventManager.f42463a;
                        Bundle bundle = new Bundle();
                        bundle.putString("gpSkuId", str);
                        Unit unit = Unit.f60915a;
                        EventManager.s0(eventManager, "log_purchase_event_failed_solved", bundle, 0L, 4, null);
                    }
                }
                for (final String str2 : arrayList) {
                    List<String> value3 = f43244h.getValue();
                    Intrinsics.checkNotNullExpressionValue(value3, "<get-value>(...)");
                    CollectionsKt.O(value3, new Function1() { // from class: gg.n
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            boolean G;
                            G = BillingRepo.G(str2, (String) obj);
                            return Boolean.valueOf(G);
                        }
                    });
                }
                Unit unit2 = Unit.f60915a;
            }
        } catch (Exception e11) {
            Logger logger2 = Logger.f41511a;
            logger2.e("BillingRepo", "handlePendingLogPurchaseEvents failed -> " + e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean G(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H() {
        try {
            i<List<String>> iVar = f43250n;
            if (!iVar.isInitialized()) {
                return;
            }
            ArrayList<String> arrayList = new ArrayList();
            List<String> value = iVar.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
            synchronized (value) {
                List<String> value2 = iVar.getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "<get-value>(...)");
                for (String str : value2) {
                    BillingRepo billingRepo = f43237a;
                    gg.c x10 = billingRepo.x();
                    Intrinsics.checkNotNull(str);
                    GPayPriceInfo f10 = x10.f(str, false);
                    if (f10.isValid()) {
                        Logger logger = Logger.f41511a;
                        logger.e("BillingRepo", "handlePendingLogSubsEvents -> " + str);
                        arrayList.add(str);
                        R(billingRepo, str, f10, null, 4, null);
                        EventManager eventManager = EventManager.f42463a;
                        Bundle bundle = new Bundle();
                        bundle.putString("gpSkuId", str);
                        Unit unit = Unit.f60915a;
                        EventManager.s0(eventManager, "log_subs_event_failed_solved", bundle, 0L, 4, null);
                    }
                }
                for (final String str2 : arrayList) {
                    List<String> value3 = f43250n.getValue();
                    Intrinsics.checkNotNullExpressionValue(value3, "<get-value>(...)");
                    CollectionsKt.O(value3, new Function1() { // from class: gg.o
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            boolean I;
                            I = BillingRepo.I(str2, (String) obj);
                            return Boolean.valueOf(I);
                        }
                    });
                }
                Unit unit2 = Unit.f60915a;
            }
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("BillingRepo", "handlePendingLogSubsEvents failed -> " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean I(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    public static /* synthetic */ void M(BillingRepo billingRepo, String str, Activity activity, String str2, CoinSku coinSku, BaseEpisode baseEpisode, ActResource actResource, int i10, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        if ((i10 & 16) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i10 & 32) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        billingRepo.K(str, activity, str2, coinSku, baseEpisode2, actResource2);
    }

    public static /* synthetic */ void N(BillingRepo billingRepo, String str, Activity activity, String str2, SubsSku subsSku, BaseEpisode baseEpisode, ActResource actResource, String str3, int i10, k kVar, String str4, SubsSku subsSku2, int i11, Object obj) {
        BaseEpisode baseEpisode2;
        ActResource actResource2;
        String str5;
        int i12;
        k kVar2;
        String str6;
        SubsSku subsSku3;
        if ((i11 & 16) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i11 & 32) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i11 & 64) != 0) {
            str5 = null;
        } else {
            str5 = str3;
        }
        if ((i11 & 128) != 0) {
            i12 = 2;
        } else {
            i12 = i10;
        }
        if ((i11 & 256) != 0) {
            kVar2 = null;
        } else {
            kVar2 = kVar;
        }
        if ((i11 & 512) != 0) {
            str6 = null;
        } else {
            str6 = str4;
        }
        if ((i11 & 1024) != 0) {
            subsSku3 = null;
        } else {
            subsSku3 = subsSku2;
        }
        billingRepo.L(str, activity, str2, subsSku, baseEpisode2, actResource2, str5, i12, kVar2, str6, subsSku3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O(String str, GPayPriceInfo gPayPriceInfo, String str2) {
        String str3;
        if (!gPayPriceInfo.isValid()) {
            Logger logger = Logger.f41511a;
            logger.e("BillingRepo", "logPurchaseEvent(" + str + ") failed -> invalid priceInfo");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("gpSkuId", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "log_purchase_event_failed", bundle, 0L, 4, null);
            f43244h.getValue().add(str);
            return;
        }
        MatchEventUtil matchEventUtil = MatchEventUtil.f48183a;
        String gpCurrencyCode = gPayPriceInfo.getGpCurrencyCode();
        String gpPrice = gPayPriceInfo.getGpPrice();
        if (str2 == null) {
            str3 = "";
        } else {
            str3 = str2;
        }
        matchEventUtil.g(gpCurrencyCode, gpPrice, str3);
        EventManager eventManager2 = EventManager.f42463a;
        Bundle bundle2 = new Bundle();
        bundle2.putString("order_no", str2);
        bundle2.putString("gpSkuId", str);
        bundle2.putString(AppsFlyerProperties.CURRENCY_CODE, gPayPriceInfo.getGpCurrencyCode());
        bundle2.putString("price", gPayPriceInfo.getGpPrice());
        if (gPayPriceInfo.getServerPrice().length() > 0) {
            bundle2.putString("amount", gPayPriceInfo.getServerPrice());
        }
        Unit unit2 = Unit.f60915a;
        EventManager.s0(eventManager2, "shorttv_purchase", bundle2, 0L, 4, null);
    }

    static /* synthetic */ void P(BillingRepo billingRepo, String str, GPayPriceInfo gPayPriceInfo, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        billingRepo.O(str, gPayPriceInfo, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q(String str, GPayPriceInfo gPayPriceInfo, String str2) {
        String str3;
        if (!gPayPriceInfo.isValid()) {
            Logger logger = Logger.f41511a;
            logger.e("BillingRepo", "logSubsEvent(" + str + ") failed -> invalid priceInfo");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("gpSkuId", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "log_subs_event_failed", bundle, 0L, 4, null);
            f43250n.getValue().add(str);
            return;
        }
        MatchEventUtil matchEventUtil = MatchEventUtil.f48183a;
        String gpCurrencyCode = gPayPriceInfo.getGpCurrencyCode();
        String gpPrice = gPayPriceInfo.getGpPrice();
        if (str2 == null) {
            str3 = "";
        } else {
            str3 = str2;
        }
        matchEventUtil.h(gpCurrencyCode, gpPrice, str3);
        EventManager eventManager2 = EventManager.f42463a;
        Bundle bundle2 = new Bundle();
        bundle2.putString("order_no", str2);
        bundle2.putString("gpSkuId", str);
        bundle2.putString(AppsFlyerProperties.CURRENCY_CODE, gPayPriceInfo.getGpCurrencyCode());
        bundle2.putString("price", gPayPriceInfo.getGpPrice());
        if (gPayPriceInfo.getServerPrice().length() > 0) {
            bundle2.putString("amount", gPayPriceInfo.getServerPrice());
        }
        Unit unit2 = Unit.f60915a;
        EventManager.s0(eventManager2, "shorttv_subs", bundle2, 0L, 4, null);
    }

    static /* synthetic */ void R(BillingRepo billingRepo, String str, GPayPriceInfo gPayPriceInfo, String str2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str2 = null;
        }
        billingRepo.Q(str, gPayPriceInfo, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final gg.c S() {
        return new gg.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List T() {
        return Collections.synchronizedList(new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List U() {
        return Collections.synchronizedList(new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingRemoteDS V() {
        BillingRemoteDS billingRemoteDS = new BillingRemoteDS();
        billingRemoteDS.r0(new a());
        billingRemoteDS.q0(new b());
        billingRemoteDS.p0(new BillingRemoteDS.b() { // from class: com.startshorts.androidplayer.repo.billing.BillingRepo$mRemoteDS$2$1$3
            @Override // com.startshorts.androidplayer.repo.billing.BillingRemoteDS.b
            public void a(List<f> list) {
                Intrinsics.checkNotNullParameter(list, "list");
                CoroutineUtil.l(CoroutineUtil.f48072a, "handleNotAcknowledgedPurchases", false, new BillingRepo$mRemoteDS$2$1$3$onFind$1(list, null), 2, null);
            }
        });
        return billingRemoteDS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final gg.c x() {
        return (gg.c) f43242f.getValue();
    }

    private final BillingRemoteDS y() {
        return (BillingRemoteDS) f43241e.getValue();
    }

    public final boolean A() {
        return y().O();
    }

    public final boolean B() {
        return y().P();
    }

    public final boolean C() {
        return f43238b;
    }

    @NotNull
    public final r D(@NotNull String opId, @NotNull f purchase) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "handleCoinPurchase", false, new BillingRepo$handleCoinPurchase$1(purchase, opId, null), 2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0121, code lost:
        if (r4 != 0) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0123, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0127, code lost:
        if (r10 != null) goto L89;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0206  */
    /* JADX WARN: Type inference failed for: r4v40, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v18, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v16, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v18, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r7v18, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x0264 -> B:83:0x0200). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x028b -> B:98:0x028e). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object E(boolean r28, @org.jetbrains.annotations.NotNull java.lang.String r29, @org.jetbrains.annotations.NotNull java.util.List<zc.f> r30, @org.jetbrains.annotations.NotNull rs.c<? super com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult> r31) {
        /*
            Method dump skipped, instructions count: 701
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.BillingRepo.E(boolean, java.lang.String, java.util.List, rs.c):java.lang.Object");
    }

    @NotNull
    public final r J(@NotNull String opId, @NotNull f purchase) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "handleSubsPurchase", false, new BillingRepo$handleSubsPurchase$1(purchase, opId, null), 2, null);
    }

    public final void K(@NotNull String eventScene, @NotNull Activity activity, @NotNull String opId, @NotNull CoinSku sku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource) {
        Intrinsics.checkNotNullParameter(eventScene, "eventScene");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Object skuDetails = sku.getSkuDetails();
        if (skuDetails == null) {
            return;
        }
        long L = DeviceUtil.f48146a.L();
        if (L - f43251o < 1000) {
            return;
        }
        f43251o = L;
        f43243g = sku;
        if (baseEpisode == null) {
            f43252p.remove(sku.getGpSkuId());
        } else {
            f43252p.put(sku.getGpSkuId(), baseEpisode);
        }
        BillingRemoteDS y10 = y();
        y10.n0(actResource);
        y10.o0(eventScene);
        BillingRemoteDS.R(y(), eventScene, activity, opId, sku.getPayPendingCoinSku(), skuDetails, null, sku, 0, null, null, null, MediaPlayer.MEDIA_PLAYER_OPTION_TO_DECODE_FIRST_VIDEO_FRAME_TIME, null);
    }

    public final void L(@NotNull String eventScene, @NotNull Activity activity, @NotNull String opId, @NotNull SubsSku clickedSku, @Nullable BaseEpisode baseEpisode, @Nullable ActResource actResource, @Nullable String str, int i10, @Nullable k kVar, @Nullable String str2, @Nullable SubsSku subsSku) {
        String str3;
        String str4;
        ActResourceExtraInfo extendInfo;
        Intrinsics.checkNotNullParameter(eventScene, "eventScene");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(clickedSku, "clickedSku");
        if (AccountRepo.f43052a.E0()) {
            l0();
            return;
        }
        Object skuDetails = clickedSku.getSkuDetails();
        if (skuDetails == null) {
            return;
        }
        long L = DeviceUtil.f48146a.L();
        if (L - f43251o < 1000) {
            return;
        }
        f43251o = L;
        f43245i = clickedSku;
        f43246j = i10;
        f43247k = str2;
        f43248l = subsSku;
        if (actResource != null && (extendInfo = actResource.getExtendInfo()) != null) {
            str3 = extendInfo.getCampaignId();
        } else {
            str3 = null;
        }
        f43249m = str3;
        if (baseEpisode == null) {
            f43252p.remove(clickedSku.getSkuId());
        } else {
            f43252p.put(clickedSku.getSkuId(), baseEpisode);
        }
        BillingRemoteDS y10 = y();
        y10.n0(actResource);
        y10.o0(eventScene);
        String offerToken = clickedSku.getOfferToken();
        if (offerToken == null) {
            offerToken = "";
        }
        String str5 = offerToken;
        BillingRemoteDS y11 = y();
        if (str == null) {
            str4 = clickedSku.getPayPendingSubsSku();
        } else {
            str4 = str;
        }
        y11.Q(eventScene, activity, opId, str4, skuDetails, str5, clickedSku, i10, kVar, str2, subsSku);
    }

    public final void W(@NotNull String opId, @NotNull String gpSkuId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        y().W(opId, gpSkuId, str);
    }

    public final void X(@NotNull String opId, @NotNull CoinSku coinSku, @NotNull f purchase, @NotNull GPayPriceInfo priceInfo) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(coinSku, "coinSku");
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
        y().X(opId, coinSku, purchase, priceInfo);
    }

    public final void Y(@NotNull String opId, @NotNull String gpSkuId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        y().Y(opId, gpSkuId, str);
    }

    public final void Z(@NotNull String opId, @NotNull SubsSku sku, @NotNull f purchase, @NotNull GPayPriceInfo priceInfo) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
        y().Z(opId, sku, purchase, priceInfo);
    }

    public final void a0(@NotNull String opId, @NotNull String gpSkuId, @Nullable String str, int i10) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        y().a0(opId, gpSkuId, str, i10);
    }

    public final void b0(@NotNull String opId, @NotNull SubsSku sku, @NotNull f purchase, @NotNull GPayPriceInfo priceInfo, int i10) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
        y().b0(opId, sku, purchase, priceInfo, i10);
    }

    public final void c0(@NotNull String opId, @NotNull GPayExchangePremiumResult.RechargeUserInfo rechargeUserInfo) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(rechargeUserInfo, "rechargeUserInfo");
        y().c0(opId, rechargeUserInfo);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d0(int r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.billing.BillingRepo$notifyThirdPartyPayEnable$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.billing.BillingRepo$notifyThirdPartyPayEnable$1 r0 = (com.startshorts.androidplayer.repo.billing.BillingRepo$notifyThirdPartyPayEnable$1) r0
            int r1 = r0.f43279j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43279j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.billing.BillingRepo$notifyThirdPartyPayEnable$1 r0 = new com.startshorts.androidplayer.repo.billing.BillingRepo$notifyThirdPartyPayEnable$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f43277h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43279j
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
            com.startshorts.androidplayer.repo.billing.BillingRemoteDS r6 = r4.y()
            r0.f43279j = r3
            java.lang.Object r5 = r6.d0(r5, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.BillingRepo.d0(int, rs.c):java.lang.Object");
    }

    public final void e0(@NotNull String opId, @NotNull List<g> products) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(products, "products");
        y().e0(opId, products);
    }

    public final void f0(@NotNull String billingListenerId) {
        Intrinsics.checkNotNullParameter(billingListenerId, "billingListenerId");
        y().i0(billingListenerId);
    }

    public final void g0(@NotNull String id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        y().j0(id2);
    }

    public final void h0(@Nullable List<CoinSku> list) {
        y().l0(list);
    }

    public final void i0(@Nullable List<SubsSku> list) {
        y().m0(list);
    }

    public final void j0(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        f43240d = str;
    }

    public final void k0(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        f43239c = str;
    }

    public final void l0() {
        IDActivity iDActivity;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null && (iDActivity = d10.get()) != null) {
            new gi.c(iDActivity).show();
        }
    }

    @Nullable
    public final Object s(@NotNull String str, @NotNull String str2, @NotNull rs.c<? super List<f>> cVar) {
        return y().s(str, str2, cVar);
    }

    public final void t(boolean z10, @NotNull String opId, @NotNull String listenerId, @NotNull le.g listener) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(listenerId, "listenerId");
        Intrinsics.checkNotNullParameter(listener, "listener");
        y().u(z10, opId, listenerId, listener);
    }

    @Nullable
    public final Object u(@NotNull ConsumeData consumeData, @NotNull rs.c<? super Unit> cVar) {
        Object v10 = y().v(consumeData, cVar);
        if (v10 == kotlin.coroutines.intrinsics.a.f()) {
            return v10;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object v(@org.jetbrains.annotations.NotNull android.content.Context r15, @org.jetbrains.annotations.Nullable java.lang.String r16, int r17, @org.jetbrains.annotations.Nullable java.lang.String r18, @org.jetbrains.annotations.Nullable java.lang.String r19, @org.jetbrains.annotations.Nullable java.lang.String r20, @org.jetbrains.annotations.Nullable java.lang.String r21, @org.jetbrains.annotations.Nullable java.lang.String r22, @org.jetbrains.annotations.Nullable java.lang.String r23, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.order.OtherOrderResult>> r24) {
        /*
            r14 = this;
            r0 = r24
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.billing.BillingRepo$createOtherOrder$1
            if (r1 == 0) goto L17
            r1 = r0
            com.startshorts.androidplayer.repo.billing.BillingRepo$createOtherOrder$1 r1 = (com.startshorts.androidplayer.repo.billing.BillingRepo$createOtherOrder$1) r1
            int r2 = r1.f43255j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.f43255j = r2
            r2 = r14
        L15:
            r13 = r1
            goto L1e
        L17:
            com.startshorts.androidplayer.repo.billing.BillingRepo$createOtherOrder$1 r1 = new com.startshorts.androidplayer.repo.billing.BillingRepo$createOtherOrder$1
            r2 = r14
            r1.<init>(r14, r0)
            goto L15
        L1e:
            java.lang.Object r0 = r13.f43253h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r13.f43255j
            r4 = 1
            if (r3 == 0) goto L3d
            if (r3 != r4) goto L35
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L5e
        L35:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3d:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.repo.billing.BillingRemoteDS r3 = r14.y()
            r13.f43255j = r4
            r4 = r15
            r5 = r16
            r6 = r17
            r7 = r18
            r8 = r19
            r9 = r20
            r10 = r21
            r11 = r22
            r12 = r23
            java.lang.Object r0 = r3.z(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            if (r0 != r1) goto L5e
            return r1
        L5e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.BillingRepo.v(android.content.Context, java.lang.String, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    @NotNull
    public final String w() {
        return f43240d;
    }

    @NotNull
    public final String z() {
        return f43239c;
    }
}
