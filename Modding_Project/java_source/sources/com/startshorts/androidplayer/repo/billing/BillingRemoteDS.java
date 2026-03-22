package com.startshorts.androidplayer.repo.billing;

import ad.m;
import android.app.Activity;
import android.os.Bundle;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.ConsumeData;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.purchase.PendingBillingOp;
import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRemoteDS;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fk.h0;
import fk.u;
import gg.q;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import le.g;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zc.h;
import zc.j;
import zc.k;
/* compiled from: BillingRemoteDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBillingRemoteDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingRemoteDS.kt\ncom/startshorts/androidplayer/repo/billing/BillingRemoteDS\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,635:1\n216#2,2:636\n216#2,2:638\n*S KotlinDebug\n*F\n+ 1 BillingRemoteDS.kt\ncom/startshorts/androidplayer/repo/billing/BillingRemoteDS\n*L\n252#1:636,2\n278#1:638,2\n*E\n"})
/* loaded from: classes7.dex */
public final class BillingRemoteDS {
    @NotNull

    /* renamed from: o */
    public static final a f43200o = new a(null);

    /* renamed from: e */
    private boolean f43205e;
    @Nullable

    /* renamed from: g */
    private d f43207g;
    @Nullable

    /* renamed from: h */
    private c f43208h;
    @Nullable

    /* renamed from: i */
    private b f43209i;
    @Nullable

    /* renamed from: j */
    private String f43210j;
    @Nullable

    /* renamed from: k */
    private ActResource f43211k;
    @Nullable

    /* renamed from: l */
    private String f43212l;
    @Nullable

    /* renamed from: m */
    private Object f43213m;
    @NotNull

    /* renamed from: a */
    private final i f43201a = kotlin.c.b(new Function0() { // from class: gg.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            q S;
            S = BillingRemoteDS.S();
            return S;
        }
    });
    @NotNull

    /* renamed from: b */
    private final i f43202b = kotlin.c.b(new Function0() { // from class: gg.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap T;
            T = BillingRemoteDS.T();
            return T;
        }
    });
    @NotNull

    /* renamed from: c */
    private final i f43203c = kotlin.c.b(new Function0() { // from class: gg.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ConcurrentHashMap V;
            V = BillingRemoteDS.V();
            return V;
        }
    });
    @NotNull

    /* renamed from: d */
    private final i f43204d = kotlin.c.b(new Function0() { // from class: gg.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            AtomicInteger U;
            U = BillingRemoteDS.U();
            return U;
        }
    });

    /* renamed from: f */
    private boolean f43206f = true;

    /* renamed from: n */
    private int f43214n = 2;

    /* compiled from: BillingRemoteDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BillingRemoteDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a(@NotNull List<zc.f> list);
    }

    /* compiled from: BillingRemoteDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface c {
        void a(@NotNull String str, @Nullable List<h> list);
    }

    /* compiled from: BillingRemoteDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface d {
        void a(@NotNull String str, @Nullable List<zc.f> list);
    }

    /* compiled from: BillingRemoteDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e implements bd.c {
        e() {
        }

        @Override // bd.c
        public void a(String str, String str2) {
            Logger.f41511a.e(str, str2);
        }

        @Override // bd.c
        public void b(String str, String str2) {
            Logger.f41511a.h(str, str2);
        }
    }

    /* compiled from: BillingRemoteDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends m {
        f() {
            BillingRemoteDS.this = r1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:77:0x005b, code lost:
            if (kotlin.text.StringsKt.b0(r13, com.startshorts.androidplayer.repo.billing.BillingRepo.f43237a.z(), false, 2, null) == true) goto L14;
         */
        @Override // ad.m
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(java.lang.String r12, java.lang.String r13, zc.a r14) {
            /*
                Method dump skipped, instructions count: 335
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.BillingRemoteDS.f.b(java.lang.String, java.lang.String, zc.a):void");
        }

        @Override // ad.m
        public void c(List<zc.f> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            b I = BillingRemoteDS.this.I();
            if (I != null) {
                I.a(list);
            }
        }

        @Override // ad.m
        public void d(String opId, List<h> list) {
            Intrinsics.checkNotNullParameter(opId, "opId");
            Intrinsics.checkNotNullParameter(list, "list");
            Logger logger = Logger.f41511a;
            logger.e("BillingRemoteDS", "onProductDetails -> opId(" + opId + ')');
            logger.h("BillingRemoteDS", "onProductDetails -> opId(" + opId + ") list(" + l.d(list) + ')');
            BillingRemoteDS.this.k0(opId);
            g B = BillingRemoteDS.this.B(opId);
            if (B != null) {
                B.f(list);
            }
            c L = BillingRemoteDS.this.L();
            if (L != null) {
                L.a(opId, list);
            }
        }

        @Override // ad.m
        public void e(String opId, List<zc.f> list) {
            Intrinsics.checkNotNullParameter(opId, "opId");
            Logger logger = Logger.f41511a;
            logger.e("BillingRemoteDS", "onPurchased -> opId(" + opId + ") list(" + l.d(list) + ')');
            d M = BillingRemoteDS.this.M();
            if (M != null) {
                M.a(opId, list);
            }
        }

        @Override // ad.m
        public void f(boolean z10) {
            Logger logger = Logger.f41511a;
            logger.e("BillingRemoteDS", "onSetupFinished -> available(" + z10 + ')');
            BillingRemoteDS.this.f43206f = z10;
            BillingRemoteDS billingRemoteDS = BillingRemoteDS.this;
            g B = billingRemoteDS.B(billingRemoteDS.f43210j);
            if (B != null) {
                B.g();
            }
            if (BillingRemoteDS.this.f43206f) {
                BillingRemoteDS.this.x();
            } else {
                BillingRemoteDS.this.h0();
            }
        }

        @Override // ad.m
        public void g(zc.d details) {
            Intrinsics.checkNotNullParameter(details, "details");
        }
    }

    private final j A() {
        return new j(true, false, new f());
    }

    public final g B(String str) {
        if (str != null && str.length() != 0) {
            List split$default = StringsKt.split$default(str, new String[]{"_"}, false, 0, 6, null);
            if (!split$default.isEmpty()) {
                return E().get(split$default.get(0));
            }
        }
        return null;
    }

    private final q D() {
        return (q) this.f43201a.getValue();
    }

    private final ConcurrentHashMap<String, g> E() {
        return (ConcurrentHashMap) this.f43202b.getValue();
    }

    private final AtomicInteger J() {
        return (AtomicInteger) this.f43204d.getValue();
    }

    private final ConcurrentHashMap<String, PendingBillingOp> K() {
        return (ConcurrentHashMap) this.f43203c.getValue();
    }

    public final Bundle N(Object obj) {
        if (obj instanceof CoinSku) {
            return EventManager.f42463a.K((CoinSku) obj);
        }
        if (obj instanceof SubsSku) {
            return EventManager.f42463a.L((SubsSku) obj);
        }
        return new Bundle();
    }

    public static /* synthetic */ void R(BillingRemoteDS billingRemoteDS, String str, Activity activity, String str2, String str3, Object obj, String str4, Object obj2, int i10, k kVar, String str5, SubsSku subsSku, int i11, Object obj3) {
        String str6;
        int i12;
        k kVar2;
        String str7;
        SubsSku subsSku2;
        if ((i11 & 32) != 0) {
            str6 = "";
        } else {
            str6 = str4;
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
            str7 = null;
        } else {
            str7 = str5;
        }
        if ((i11 & 1024) != 0) {
            subsSku2 = null;
        } else {
            subsSku2 = subsSku;
        }
        billingRemoteDS.Q(str, activity, str2, str3, obj, str6, obj2, i12, kVar2, str7, subsSku2);
    }

    public static final q S() {
        if (BillingRepo.f43237a.C()) {
            return new FakeBillingClient();
        }
        return new gg.a(null, 1, null);
    }

    public static final ConcurrentHashMap T() {
        return new ConcurrentHashMap();
    }

    public static final AtomicInteger U() {
        return new AtomicInteger(0);
    }

    public static final ConcurrentHashMap V() {
        return new ConcurrentHashMap();
    }

    public static final void f0(BillingRemoteDS billingRemoteDS, String str) {
        g B = billingRemoteDS.B(str);
        if (B != null) {
            B.f(null);
        }
    }

    public static final void g0(BillingRemoteDS billingRemoteDS, String str) {
        g B = billingRemoteDS.B(str);
        if (B != null) {
            B.f(null);
        }
    }

    public final void h0() {
        Logger.f41511a.e("BillingRemoteDS", "removeAllPendingBillingOps");
        K().clear();
    }

    public final void k0(String str) {
        Logger logger = Logger.f41511a;
        logger.e("BillingRemoteDS", "removePendingBillingOp -> id(" + str + ") op(" + K().remove(str) + ')');
    }

    private final void q(String str, PendingBillingOp pendingBillingOp) {
        Logger logger = Logger.f41511a;
        logger.e("BillingRemoteDS", "addPendingBillingOp -> id(" + str + ") op(" + pendingBillingOp + ')');
        K().put(str, pendingBillingOp);
    }

    private final boolean r(String str) {
        if (!D().isConnected()) {
            fk.a aVar = fk.a.f51702a;
            if (aVar.d() != null) {
                q D = D();
                MainActivity d10 = aVar.d();
                Intrinsics.checkNotNull(d10, "null cannot be cast to non-null type android.content.Context");
                D.h(d10, str);
                return false;
            }
            D().h(u.f51776a.b(), str);
            return false;
        }
        return true;
    }

    public final void t(String str) {
        Logger logger = Logger.f41511a;
        logger.e("BillingRemoteDS", "checkNotAcknowledgedPurchases -> mBillingAvailable(" + this.f43206f + ") opId(" + str + ')');
        if (!this.f43206f) {
            logger.e("BillingRemoteDS", "checkNotAcknowledgedPurchases failed -> mBillingAvailable is false");
        } else if (r(str)) {
            D().g();
        }
    }

    public final synchronized void x() {
        try {
            for (Map.Entry<String, PendingBillingOp> entry : K().entrySet()) {
                PendingBillingOp value = entry.getValue();
                if (value.getConsumed()) {
                    return;
                }
                Logger logger = Logger.f41511a;
                logger.e("BillingRemoteDS", "consumePendingBillingOp -> id(" + entry.getKey() + " op(" + value + "))");
                int type = value.getType();
                if (type != 1) {
                    if (type == 2) {
                        CoroutineUtil.l(CoroutineUtil.f48072a, "PendingBillingOp.OP_CONSUME", false, new BillingRemoteDS$consumePendingBillingOps$1$1(this, entry, value, null), 2, null);
                    }
                } else {
                    Object extra = value.getExtra();
                    Intrinsics.checkNotNull(extra, "null cannot be cast to non-null type kotlin.collections.MutableList<com.shorttv.aar.billing.bean.Product>");
                    e0(entry.getKey(), TypeIntrinsics.asMutableList(extra));
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final String y() {
        return String.valueOf(J().getAndIncrement());
    }

    @Nullable
    public final ActResource C() {
        return this.f43211k;
    }

    @Nullable
    public final String F() {
        return this.f43212l;
    }

    @Nullable
    public final Object G() {
        return this.f43213m;
    }

    public final int H() {
        return this.f43214n;
    }

    @Nullable
    public final b I() {
        return this.f43209i;
    }

    @Nullable
    public final c L() {
        return this.f43208h;
    }

    @Nullable
    public final d M() {
        return this.f43207g;
    }

    public final boolean O() {
        return D().j();
    }

    public final boolean P() {
        return D().o();
    }

    public final void Q(@NotNull String eventScene, @NotNull Activity activity, @NotNull String opId, @NotNull String obfuscatedAccountId, @NotNull Object productDetails, @NotNull String offerToken, @Nullable Object obj, int i10, @Nullable k kVar, @Nullable String str, @Nullable SubsSku subsSku) {
        int i11;
        String str2;
        Intrinsics.checkNotNullParameter(eventScene, "eventScene");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(obfuscatedAccountId, "obfuscatedAccountId");
        Intrinsics.checkNotNullParameter(productDetails, "productDetails");
        Intrinsics.checkNotNullParameter(offerToken, "offerToken");
        Logger logger = Logger.f41511a;
        logger.h("BillingRemoteDS", "launchBillingFlow -> mBillingAvailable(" + this.f43206f + ") opId(" + opId + ") obfuscatedAccountId(" + obfuscatedAccountId + ") productDetails(" + productDetails + ')');
        if (!this.f43206f) {
            logger.e("BillingRemoteDS", "launchBillingFlow failed -> mBillingAvailable is false");
            Bundle N = N(obj);
            EventManager eventManager = EventManager.f42463a;
            eventManager.J0(eventScene, obj instanceof SubsSku ? "subscription" : "inapp", i10, String.valueOf(ad.k.f609a.a()), "", jk.b.a(N, EventManager.x(eventManager, this.f43211k, false, 2, null)));
            return;
        }
        this.f43213m = obj;
        this.f43214n = i10;
        if (BillingRepo.f43237a.C()) {
            D().b(eventScene);
            D().d(obj);
            D().i(this.f43211k);
        }
        try {
            i11 = 2;
            str2 = "BillingRemoteDS";
        } catch (Exception e10) {
            e = e10;
            i11 = 2;
            str2 = "BillingRemoteDS";
        }
        try {
            D().n(opId, activity, obfuscatedAccountId, AccountRepo.f43052a.t0(), offerToken, productDetails, i10, kVar, str, subsSku);
        } catch (Exception e11) {
            e = e11;
            e.printStackTrace();
            Logger.f41511a.e(str2, "launchBillingFlow failed -> " + e.getMessage());
            Bundle N2 = N(obj);
            EventManager eventManager2 = EventManager.f42463a;
            Bundle a10 = jk.b.a(N2, EventManager.x(eventManager2, this.f43211k, false, i11, null));
            String str3 = obj instanceof SubsSku ? "subscription" : "inapp";
            String valueOf = String.valueOf(ad.k.f609a.b());
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            eventManager2.J0(eventScene, str3, i10, valueOf, message, a10);
            u.j(u.f51776a, R$string.common_unknown_exception, 0, i11, null);
        }
    }

    public final void W(@NotNull String opId, @NotNull String gpSkuId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        g B = B(opId);
        if (B != null) {
            B.b(gpSkuId, str);
        }
    }

    public final void X(@NotNull String opId, @NotNull CoinSku sku, @NotNull zc.f purchase, @NotNull GPayPriceInfo priceInfo) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
        g B = B(opId);
        if (B == null) {
            EventManager.T0(EventManager.f42463a, "", sku, priceInfo, purchase.b(), null, null, Boolean.TRUE, null, null, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266, null);
        } else {
            B.c(purchase.b(), sku.getGpSkuId(), priceInfo, purchase.f());
        }
    }

    public final void Y(@NotNull String opId, @NotNull String gpSkuId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        g B = B(opId);
        if (B != null) {
            B.d(gpSkuId, str);
        }
    }

    public final void Z(@NotNull String opId, @NotNull SubsSku sku, @NotNull zc.f purchase, @NotNull GPayPriceInfo priceInfo) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
        g B = B(opId);
        if (B == null) {
            EventManager.U0(EventManager.f42463a, "", sku, priceInfo, purchase.b(), null, null, Boolean.TRUE, null, null, null, MediaPlayer.MEDIA_PLAYER_OPTION_HTTP2_PARAMS, null);
        } else {
            B.e(purchase.b(), sku.getSkuId(), priceInfo);
        }
    }

    public final void a0(@NotNull String opId, @NotNull String gpSkuId, @Nullable String str, int i10) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        g B = B(opId);
        if (B != null) {
            B.i(gpSkuId, str, i10);
        }
    }

    public final void b0(@NotNull String opId, @NotNull SubsSku sku, @NotNull zc.f purchase, @NotNull GPayPriceInfo priceInfo, int i10) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(sku, "sku");
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
        g B = B(opId);
        if (B == null) {
            EventManager.U0(EventManager.f42463a, "", sku, priceInfo, purchase.b(), null, null, Boolean.TRUE, Integer.valueOf(i10), null, null, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_EARLY_INIT_RENDER, null);
        } else {
            B.j(purchase.b(), sku.getSkuId(), priceInfo, i10);
        }
    }

    public final void c0(@NotNull String opId, @NotNull GPayExchangePremiumResult.RechargeUserInfo rechargeUserInfo) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(rechargeUserInfo, "rechargeUserInfo");
        g B = B(opId);
        if (B != null) {
            B.h(rechargeUserInfo);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d0(int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.billing.BillingRemoteDS$notifyThirdPartyPayEnable$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.billing.BillingRemoteDS$notifyThirdPartyPayEnable$1 r0 = (com.startshorts.androidplayer.repo.billing.BillingRemoteDS$notifyThirdPartyPayEnable$1) r0
            int r1 = r0.f43234j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43234j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.billing.BillingRemoteDS$notifyThirdPartyPayEnable$1 r0 = new com.startshorts.androidplayer.repo.billing.BillingRemoteDS$notifyThirdPartyPayEnable$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f43232h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43234j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.n()
            goto L52
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r7.<init>()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r7 = r7.n()
            com.startshorts.androidplayer.repo.billing.BillingRemoteDS$notifyThirdPartyPayEnable$2 r2 = new com.startshorts.androidplayer.repo.billing.BillingRemoteDS$notifyThirdPartyPayEnable$2
            r4 = 0
            r2.<init>(r6, r4)
            r0.f43234j = r3
            java.lang.Object r6 = r7.o(r2, r0)
            if (r6 != r1) goto L52
            return r1
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.BillingRemoteDS.d0(int, rs.c):java.lang.Object");
    }

    public final void e0(@NotNull final String opId, @NotNull List<zc.g> products) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(products, "products");
        Logger logger = Logger.f41511a;
        logger.e("BillingRemoteDS", "queryProductDetails -> mBillingAvailable(" + this.f43206f + ") opId(" + opId + ") products(" + products + ')');
        if (products.isEmpty()) {
            EventManager.s0(EventManager.f42463a, "sku_list_empty", null, 0L, 6, null);
            h0.f51735a.e(new Runnable() { // from class: gg.d
                @Override // java.lang.Runnable
                public final void run() {
                    BillingRemoteDS.f0(BillingRemoteDS.this, opId);
                }
            });
        } else if (!this.f43206f) {
            logger.e("BillingRemoteDS", "queryProductDetails failed -> mBillingAvailable is false");
            EventManager.s0(EventManager.f42463a, "sku_list_billing_unavailable", null, 0L, 6, null);
            h0.f51735a.e(new Runnable() { // from class: gg.e
                @Override // java.lang.Runnable
                public final void run() {
                    BillingRemoteDS.g0(BillingRemoteDS.this, opId);
                }
            });
        } else if (r(opId)) {
            D().l(opId, products, false);
        } else {
            q(opId, new PendingBillingOp(1, products, false, 4, null));
        }
    }

    public final void i0(@NotNull String billingListenerId) {
        Intrinsics.checkNotNullParameter(billingListenerId, "billingListenerId");
        for (Map.Entry<String, PendingBillingOp> entry : K().entrySet()) {
            if (StringsKt.V(entry.getKey(), billingListenerId, false, 2, null)) {
                entry.getValue().setConsumed(true);
                k0(entry.getKey());
            }
        }
    }

    public final void j0(@NotNull String id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        E().remove(id2);
        Logger logger = Logger.f41511a;
        logger.e("BillingRemoteDS", "removeBillingListener -> id(" + id2 + ')');
    }

    public final void l0(@Nullable List<CoinSku> list) {
        D().f(list);
    }

    public final void m0(@Nullable List<SubsSku> list) {
        D().m(list);
    }

    public final void n0(@Nullable ActResource actResource) {
        this.f43211k = actResource;
    }

    public final void o0(@Nullable String str) {
        this.f43212l = str;
    }

    public final void p0(@Nullable b bVar) {
        this.f43209i = bVar;
    }

    public final void q0(@Nullable c cVar) {
        this.f43208h = cVar;
    }

    public final void r0(@Nullable d dVar) {
        this.f43207g = dVar;
    }

    @Nullable
    public final Object s(@NotNull String str, @NotNull String str2, @NotNull rs.c<? super List<zc.f>> cVar) {
        Logger logger = Logger.f41511a;
        logger.e("BillingRemoteDS", "checkNotAcknowledgedPurchases -> mBillingAvailable(" + this.f43206f + ") opId(" + str + ')');
        if (!this.f43206f) {
            logger.e("BillingRemoteDS", "checkNotAcknowledgedPurchases failed -> mBillingAvailable is false");
            return null;
        } else if (!r(str)) {
            return null;
        } else {
            return D().e(str2, cVar);
        }
    }

    public final void u(boolean z10, @NotNull String opId, @NotNull String listenerId, @NotNull g listener) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(listenerId, "listenerId");
        Intrinsics.checkNotNullParameter(listener, "listener");
        E().put(listenerId, listener);
        boolean a10 = D().a();
        boolean isConnected = D().isConnected();
        Logger logger = Logger.f41511a;
        logger.h("BillingRemoteDS", "firstConnect(" + z10 + ") opId(" + opId + ") listenerId(" + listenerId + ") isSetup(" + a10 + ") isConnected(" + isConnected + ')');
        this.f43210j = opId;
        if (a10) {
            if (r(opId)) {
                logger.e("BillingRemoteDS", "connect success");
                listener.g();
                if (z10) {
                    t(y());
                    return;
                }
                return;
            }
            return;
        }
        bd.b.f2605a.c(new e());
        fk.a aVar = fk.a.f51702a;
        if (aVar.d() != null) {
            q D = D();
            MainActivity d10 = aVar.d();
            Intrinsics.checkNotNull(d10, "null cannot be cast to non-null type android.content.Context");
            D.k(d10, opId, A());
        } else {
            D().k(u.f51776a.b(), opId, A());
        }
        this.f43205e = true;
    }

    @Nullable
    public final Object v(@NotNull ConsumeData consumeData, @NotNull rs.c<? super Unit> cVar) {
        Object w10 = w(y(), consumeData, cVar);
        if (w10 == kotlin.coroutines.intrinsics.a.f()) {
            return w10;
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object w(@NotNull String str, @NotNull ConsumeData consumeData, @NotNull rs.c<? super Unit> cVar) {
        Logger logger = Logger.f41511a;
        logger.h("BillingRemoteDS", "consume -> mSetupCalled(" + this.f43205e + ") mBillingAvailable(" + this.f43206f + ") opId(" + str + ") consumeData(" + consumeData + ')');
        if (!this.f43206f) {
            logger.e("BillingRemoteDS", "consume failed -> mBillingAvailable is false");
            return Unit.f60915a;
        } else if (!this.f43205e) {
            logger.e("BillingRemoteDS", "consume failed -> mSetupCalled is false");
            return Unit.f60915a;
        } else if (r(str)) {
            Object c10 = D().c(consumeData.getProductType(), consumeData.getPurchaseToken(), cVar);
            if (c10 == kotlin.coroutines.intrinsics.a.f()) {
                return c10;
            }
            return Unit.f60915a;
        } else {
            q(str, new PendingBillingOp(2, consumeData, false, 4, null));
            return Unit.f60915a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x003d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object z(@org.jetbrains.annotations.NotNull android.content.Context r17, @org.jetbrains.annotations.Nullable java.lang.String r18, int r19, @org.jetbrains.annotations.Nullable java.lang.String r20, @org.jetbrains.annotations.Nullable java.lang.String r21, @org.jetbrains.annotations.Nullable java.lang.String r22, @org.jetbrains.annotations.Nullable java.lang.String r23, @org.jetbrains.annotations.Nullable java.lang.String r24, @org.jetbrains.annotations.Nullable java.lang.String r25, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.order.OtherOrderResult>> r26) {
        /*
            r16 = this;
            r0 = r26
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.billing.BillingRemoteDS$createOtherOrder$1
            if (r1 == 0) goto L17
            r1 = r0
            com.startshorts.androidplayer.repo.billing.BillingRemoteDS$createOtherOrder$1 r1 = (com.startshorts.androidplayer.repo.billing.BillingRemoteDS$createOtherOrder$1) r1
            int r2 = r1.f43221j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.f43221j = r2
            r2 = r16
            goto L1e
        L17:
            com.startshorts.androidplayer.repo.billing.BillingRemoteDS$createOtherOrder$1 r1 = new com.startshorts.androidplayer.repo.billing.BillingRemoteDS$createOtherOrder$1
            r2 = r16
            r1.<init>(r2, r0)
        L1e:
            java.lang.Object r0 = r1.f43219h
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r1.f43221j
            r5 = 1
            if (r4 == 0) goto L3d
            if (r4 != r5) goto L35
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L75
        L35:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3d:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r0.<init>()
            r4 = 0
            r6 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r0, r6, r5, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = r0.n()
            r4 = r17
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = r0.u(r4, r6)
            com.startshorts.androidplayer.repo.billing.BillingRemoteDS$createOtherOrder$2 r4 = new com.startshorts.androidplayer.repo.billing.BillingRemoteDS$createOtherOrder$2
            r15 = 0
            r6 = r4
            r7 = r19
            r8 = r22
            r9 = r21
            r10 = r20
            r11 = r23
            r12 = r24
            r13 = r18
            r14 = r25
            r6.<init>(r7, r8, r9, r10, r11, r12, r13, r14, r15)
            r1.f43221j = r5
            java.lang.Object r0 = r0.o(r4, r1)
            if (r0 != r3) goto L75
            return r3
        L75:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.BillingRemoteDS.z(android.content.Context, java.lang.String, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }
}
