package com.startshorts.androidplayer.manager.billing;

import ad.k;
import android.content.Context;
import android.os.Bundle;
import androidx.activity.ComponentActivity;
import at.n;
import com.applovin.sdk.AppLovinEventParameters;
import com.hades.aar.activity.IDActivity;
import com.shorttv.aar.billing.bean.ErrorCode;
import com.shorttv.aar.billing.bean.ErrorType;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.purchase.ActQueryPriceResult;
import com.startshorts.androidplayer.bean.purchase.ActQueryPriceSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.billing.ActPaymentDelegate;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fk.h0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import le.g;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zc.h;
/* compiled from: ActPaymentDelegate.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActPaymentDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActPaymentDelegate.kt\ncom/startshorts/androidplayer/manager/billing/ActPaymentDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,573:1\n1863#2,2:574\n1863#2,2:576\n*S KotlinDebug\n*F\n+ 1 ActPaymentDelegate.kt\ncom/startshorts/androidplayer/manager/billing/ActPaymentDelegate\n*L\n136#1:574,2\n395#1:576,2\n*E\n"})
/* loaded from: classes6.dex */
public final class ActPaymentDelegate {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f42159o = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final ActResource f42160a;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private CoinSku f42164e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private SubsSku f42165f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Function2<? super Boolean, ? super String, Unit> f42166g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f42167h;

    /* renamed from: j  reason: collision with root package name */
    private boolean f42169j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f42170k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private List<ActQueryPriceSku> f42171l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private n<? super Boolean, ? super List<ActQueryPriceResult>, ? super String, Unit> f42172m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private hi.b f42173n;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f42161b = c.b(new Function0() { // from class: le.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String D;
            D = ActPaymentDelegate.D();
            return D;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final i f42162c = c.b(new Function0() { // from class: le.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            AtomicInteger E;
            E = ActPaymentDelegate.E();
            return E;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private boolean f42163d = true;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private String f42168i = "";

    /* compiled from: ActPaymentDelegate.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ActPaymentDelegate.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nActPaymentDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActPaymentDelegate.kt\ncom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$connectBillingClient$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,573:1\n1863#2:574\n1863#2,2:575\n1864#2:577\n*S KotlinDebug\n*F\n+ 1 ActPaymentDelegate.kt\ncom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$connectBillingClient$1\n*L\n323#1:574\n324#1:575,2\n323#1:577\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends g {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BaseActivity f42175b;

        b(BaseActivity baseActivity) {
            this.f42175b = baseActivity;
        }

        @Override // le.g
        public void a(zc.a error) {
            Intrinsics.checkNotNullParameter(error, "error");
            Logger logger = Logger.f41511a;
            logger.e("ActPaymentDelegate", "onError -> " + error);
            ActPaymentDelegate.this.z();
            if (error.c() == ErrorType.CONNECT_FAILED) {
                ActPaymentDelegate actPaymentDelegate = ActPaymentDelegate.this;
                BaseActivity baseActivity = this.f42175b;
                String b10 = error.b();
                if (b10 == null) {
                    b10 = "Unknown Error";
                }
                actPaymentDelegate.y(baseActivity, null, b10);
            } else if (error.c() == ErrorType.PURCHASE_FAILED && error.a() == ErrorCode.USER_CANCELED) {
                this.f42175b.x(R$string.common_user_canceled);
            }
            Function2 function2 = ActPaymentDelegate.this.f42166g;
            if (function2 != null) {
                Boolean bool = Boolean.FALSE;
                String b11 = error.b();
                if (b11 == null) {
                    b11 = "";
                }
                function2.invoke(bool, b11);
            }
        }

        @Override // le.g
        public void b(String gpSkuId, String str) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Logger logger = Logger.f41511a;
            logger.e("ActPaymentDelegate", "onExchangeCoinsFailed -> gpSkuId(" + gpSkuId + ") errMsg(" + str + ')');
            Function2 function2 = ActPaymentDelegate.this.f42166g;
            if (function2 != null) {
                Boolean bool = Boolean.FALSE;
                if (str == null) {
                    str = "";
                }
                function2.invoke(bool, str);
            }
        }

        @Override // le.g
        public void c(String str, String gpSkuId, GPayPriceInfo priceInfo, String str2) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            Logger logger = Logger.f41511a;
            logger.h("ActPaymentDelegate", "onExchangeCoinsSuccess -> gpOrderId(" + str + ") gpSkuId(" + gpSkuId + ") priceInfo(" + priceInfo + ')');
            ActPaymentDelegate.this.B(str, priceInfo);
            Function2 function2 = ActPaymentDelegate.this.f42166g;
            if (function2 != null) {
                function2.invoke(Boolean.TRUE, "");
            }
        }

        @Override // le.g
        public void d(String gpSkuId, String str) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Logger logger = Logger.f41511a;
            logger.e("ActPaymentDelegate", "onExchangePremiumFailed -> gpSkuId(" + gpSkuId + ") errMsg(" + str + ')');
            Function2 function2 = ActPaymentDelegate.this.f42166g;
            if (function2 != null) {
                Boolean bool = Boolean.FALSE;
                if (str == null) {
                    str = "";
                }
                function2.invoke(bool, str);
            }
        }

        @Override // le.g
        public void e(String str, String gpSkuId, GPayPriceInfo priceInfo) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            Logger logger = Logger.f41511a;
            logger.h("ActPaymentDelegate", "onExchangePremiumSuccess -> gpOrderId(" + str + ") gpSkuId(" + gpSkuId + ") priceInfo(" + priceInfo + ')');
            ActPaymentDelegate.this.C(str, priceInfo);
            Function2 function2 = ActPaymentDelegate.this.f42166g;
            if (function2 != null) {
                function2.invoke(Boolean.TRUE, "");
            }
        }

        @Override // le.g
        public void f(List<h> list) {
            List<h> list2 = list;
            if (list2 == null || list2.isEmpty()) {
                ActPaymentDelegate.this.y(this.f42175b, null, "No products find");
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (h hVar : list) {
                List<Object> a10 = hVar.a();
                if (a10 != null) {
                    for (Object obj : a10) {
                        arrayList.add(obj);
                    }
                }
            }
            ActPaymentDelegate.this.y(this.f42175b, arrayList, "");
        }

        @Override // le.g
        public void g() {
            Logger.f41511a.h("ActPaymentDelegate", "onSetupFinished");
            ActPaymentDelegate.this.f42167h = true;
            ActPaymentDelegate.this.f42163d = false;
            if (ActPaymentDelegate.this.f42169j) {
                List list = ActPaymentDelegate.this.f42171l;
                if (list != null) {
                    ActPaymentDelegate.this.L(list);
                    return;
                }
                return;
            }
            ActPaymentDelegate.this.K();
        }
    }

    public ActPaymentDelegate(@Nullable ActResource actResource) {
        this.f42160a = actResource;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(ActPaymentDelegate actPaymentDelegate) {
        hi.b bVar = actPaymentDelegate.f42173n;
        if (bVar != null) {
            bVar.cancel();
        }
        actPaymentDelegate.f42173n = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(String str, GPayPriceInfo gPayPriceInfo) {
        CoinSku coinSku = this.f42164e;
        if (coinSku != null) {
            EventManager.T0(EventManager.f42463a, this.f42168i, coinSku, gPayPriceInfo, str, null, this.f42160a, null, null, null, MediaPlayer.MEDIA_PLAYER_OPTION_VIEW_HEIGHT, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C(String str, GPayPriceInfo gPayPriceInfo) {
        SubsSku subsSku = this.f42165f;
        if (subsSku != null) {
            EventManager.U0(EventManager.f42463a, this.f42168i, subsSku, gPayPriceInfo, str, null, this.f42160a, null, null, null, null, TTVideoEngineInterface.PLAYER_OPTION_DUMMYSURFACE_FORBID, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String D() {
        return UUID.randomUUID().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AtomicInteger E() {
        return new AtomicInteger(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I(ActPaymentDelegate actPaymentDelegate, String str) {
        ComponentActivity componentActivity;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        BaseActivity baseActivity = null;
        if (d10 != null) {
            componentActivity = (IDActivity) d10.get();
        } else {
            componentActivity = null;
        }
        if (componentActivity instanceof BaseActivity) {
            baseActivity = (BaseActivity) componentActivity;
        }
        if (baseActivity != null) {
            baseActivity.x(R$string.common_unknown_exception);
        }
        actPaymentDelegate.z();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K() {
        String skuId;
        CoinSku coinSku = this.f42164e;
        String str = "";
        String str2 = (coinSku == null || (str2 = coinSku.getGpSkuId()) == null) ? "" : "";
        SubsSku subsSku = this.f42165f;
        if (subsSku != null && (skuId = subsSku.getSkuId()) != null) {
            str = skuId;
        }
        if (str2.length() == 0 && str.length() == 0) {
            String str3 = "queryPriceFromGoogle failed : coinSkuId(" + str2 + ") subsSkuId(" + str + ')';
            Logger.f41511a.e("ActPaymentDelegate", str3);
            Function2<? super Boolean, ? super String, Unit> function2 = this.f42166g;
            if (function2 != null) {
                function2.invoke(Boolean.FALSE, str3);
            }
            z();
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (str2.length() > 0) {
            arrayList.add(new zc.g(le.h.f62164a.a(), CollectionsKt.t(str2)));
        }
        if (str.length() > 0) {
            arrayList.add(new zc.g(le.h.f62164a.b(), CollectionsKt.t(str)));
        }
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("queryPriceFromGoogle -> supportOneTimePurchase(");
        BillingRepo billingRepo = BillingRepo.f43237a;
        sb2.append(billingRepo.A());
        sb2.append(") supportSubscription(");
        sb2.append(billingRepo.B());
        sb2.append(')');
        logger.h("ActPaymentDelegate", sb2.toString());
        billingRepo.e0(t(), arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(List<ActQueryPriceSku> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (ActQueryPriceSku actQueryPriceSku : list) {
            if (actQueryPriceSku.isSubscription()) {
                arrayList3.add(actQueryPriceSku.getSkuId());
            } else {
                arrayList2.add(actQueryPriceSku.getSkuId());
            }
        }
        if (!arrayList2.isEmpty()) {
            arrayList.add(new zc.g(le.h.f62164a.a(), arrayList2));
        }
        if (!arrayList3.isEmpty()) {
            arrayList.add(new zc.g(le.h.f62164a.b(), arrayList3));
        }
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("queryPriceFromGoogle -> supportOneTimePurchase(");
        BillingRepo billingRepo = BillingRepo.f43237a;
        sb2.append(billingRepo.A());
        sb2.append(") supportSubscription(");
        sb2.append(billingRepo.B());
        sb2.append(')');
        logger.h("ActPaymentDelegate", sb2.toString());
        billingRepo.e0(t(), arrayList);
    }

    private final void N(final BaseActivity baseActivity) {
        h0.f51735a.e(new Runnable() { // from class: le.e
            @Override // java.lang.Runnable
            public final void run() {
                ActPaymentDelegate.O(BaseActivity.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(BaseActivity baseActivity) {
        new gi.a(baseActivity).show();
    }

    private final void P(final Context context) {
        z();
        h0.f51735a.e(new Runnable() { // from class: le.d
            @Override // java.lang.Runnable
            public final void run() {
                ActPaymentDelegate.Q(ActPaymentDelegate.this, context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(ActPaymentDelegate actPaymentDelegate, Context context) {
        hi.b bVar = new hi.b(context);
        bVar.w(false);
        bVar.show();
        actPaymentDelegate.f42173n = bVar;
    }

    private final void s(BaseActivity baseActivity) {
        BillingRepo.f43237a.t(this.f42163d, t(), w(), new b(baseActivity));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String t() {
        return w() + '_' + x().getAndIncrement();
    }

    private final void u(BaseActivity baseActivity, CoinSku coinSku) {
        BillingRepo billingRepo = BillingRepo.f43237a;
        if (!billingRepo.A()) {
            N(baseActivity);
        } else if (coinSku.getSkuDetails() != null) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putFloat("amount", coinSku.getRecharge());
            bundle.putString(AppLovinEventParameters.PRODUCT_IDENTIFIER, coinSku.getGpSkuId());
            bundle.putString("product_id", coinSku.getSkuProductId());
            bundle.putString("scene", this.f42168i);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "win_product_create_order", bundle, 0L, 4, null);
            EventManager.F0(eventManager, this.f42168i, coinSku, null, this.f42160a, null, null, null, null, null, null, 1012, null);
            EventManager.B0(eventManager, this.f42168i, coinSku, null, this.f42160a, null, null, null, null, null, 500, null);
            BillingRepo.M(billingRepo, this.f42168i, baseActivity, t(), coinSku, null, this.f42160a, 16, null);
        } else {
            Logger.f41511a.e("ActPaymentDelegate", "launchBillingFlow failed -> skuDetails is null");
            EventManager.K0(EventManager.f42463a, this.f42168i, coinSku, null, this.f42160a, String.valueOf(k.f609a.a()), "SkuDetails is null", 4, null);
            N(baseActivity);
        }
    }

    private final void v(BaseActivity baseActivity, SubsSku subsSku) {
        BillingRepo billingRepo = BillingRepo.f43237a;
        if (!billingRepo.B()) {
            N(baseActivity);
        } else if (subsSku.getSkuDetails() != null) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putFloat("amount", subsSku.getPayAmount());
            bundle.putString(AppLovinEventParameters.PRODUCT_IDENTIFIER, subsSku.getSkuId());
            bundle.putString("product_id", subsSku.getProductId());
            bundle.putString("scene", this.f42168i);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "win_product_create_order", bundle, 0L, 4, null);
            EventManager.G0(eventManager, this.f42168i, subsSku, null, this.f42160a, 0, null, null, null, null, null, null, DataLoaderHelper.DATALOADER_KEY_ENABLE_ENGINE_PORTRAIT, null);
            BillingRepo.N(billingRepo, this.f42168i, baseActivity, t(), subsSku, null, this.f42160a, null, 0, null, null, null, 2000, null);
        } else {
            Logger.f41511a.e("ActPaymentDelegate", "launchBillingFlow failed -> skuDetails is null");
            EventManager.L0(EventManager.f42463a, this.f42168i, subsSku, null, this.f42160a, 0, String.valueOf(k.f609a.a()), "SkuDetails is null", 16, null);
            N(baseActivity);
        }
    }

    private final String w() {
        return (String) this.f42161b.getValue();
    }

    private final AtomicInteger x() {
        return (AtomicInteger) this.f42162c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:140:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0198 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0181 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0285 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x026e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void y(com.startshorts.androidplayer.ui.activity.base.BaseActivity r11, java.util.List<? extends java.lang.Object> r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 808
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.billing.ActPaymentDelegate.y(com.startshorts.androidplayer.ui.activity.base.BaseActivity, java.util.List, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z() {
        h0.f51735a.e(new Runnable() { // from class: le.a
            @Override // java.lang.Runnable
            public final void run() {
                ActPaymentDelegate.A(ActPaymentDelegate.this);
            }
        });
    }

    public final void F(@NotNull BaseActivity activity, @NotNull CoinSku coinSku, @NotNull String scene, @NotNull Function2<? super Boolean, ? super String, Unit> onPayResult) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(coinSku, "coinSku");
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(onPayResult, "onPayResult");
        this.f42168i = scene;
        this.f42164e = coinSku;
        this.f42165f = null;
        this.f42166g = onPayResult;
        P(activity);
        if (!this.f42167h) {
            Logger.f41511a.h("ActPaymentDelegate", "connect pay manager");
            s(activity);
            return;
        }
        Logger logger = Logger.f41511a;
        logger.h("ActPaymentDelegate", "pay manager init succeed, start gPay -> " + coinSku);
        K();
    }

    public final void G(@NotNull BaseActivity activity, @NotNull SubsSku subsSku, @NotNull String scene, @NotNull Function2<? super Boolean, ? super String, Unit> onPayResult) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(subsSku, "subsSku");
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(onPayResult, "onPayResult");
        this.f42168i = scene;
        this.f42165f = subsSku;
        this.f42164e = null;
        this.f42166g = onPayResult;
        P(activity);
        if (!this.f42167h) {
            Logger.f41511a.h("ActPaymentDelegate", "connect pay manager");
            s(activity);
            return;
        }
        Logger logger = Logger.f41511a;
        logger.h("ActPaymentDelegate", "pay manager init succeed, start gPay -> " + this.f42165f);
        K();
    }

    public final void H(@NotNull Context context, @NotNull String eventScene) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(eventScene, "eventScene");
        P(context);
        CoroutineUtil.k(CoroutineUtil.f48072a, null, "queryNotAcknowledgedPurchases", false, new ActPaymentDelegate$queryNotAcknowledgedPurchases$1(this, eventScene, null), new Function1() { // from class: le.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit I;
                I = ActPaymentDelegate.I(ActPaymentDelegate.this, (String) obj);
                return I;
            }
        }, 5, null);
    }

    public final void J(@NotNull BaseActivity activity, @NotNull String queryPriceRequestId, @NotNull List<ActQueryPriceSku> skus, @NotNull n<? super Boolean, ? super List<ActQueryPriceResult>, ? super String, Unit> onQueryResult) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(queryPriceRequestId, "queryPriceRequestId");
        Intrinsics.checkNotNullParameter(skus, "skus");
        Intrinsics.checkNotNullParameter(onQueryResult, "onQueryResult");
        this.f42169j = true;
        this.f42170k = queryPriceRequestId;
        this.f42171l = skus;
        this.f42172m = onQueryResult;
        if (!this.f42167h) {
            Logger.f41511a.h("ActPaymentDelegate", "connect pay manager");
            s(activity);
            return;
        }
        Logger logger = Logger.f41511a;
        logger.h("ActPaymentDelegate", "pay manager init succeed, start queryPriceFromGoogle -> " + skus);
        L(skus);
    }

    public final void M() {
        this.f42167h = false;
        BillingRepo billingRepo = BillingRepo.f43237a;
        billingRepo.f0(w());
        billingRepo.g0(w());
        z();
        this.f42166g = null;
        this.f42164e = null;
        this.f42165f = null;
        this.f42169j = false;
        this.f42170k = null;
        this.f42171l = null;
        this.f42172m = null;
    }
}
