package com.shorttv.aar.billing.core;

import ad.m;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import cd.g;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ConsumeParams;
import com.android.billingclient.api.ConsumeResponseListener;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryProductDetailsResult;
import com.android.billingclient.api.QueryPurchasesParams;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.UserChoiceBillingListener;
import com.android.billingclient.api.UserChoiceDetails;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.shorttv.aar.billing.bean.ErrorCode;
import com.shorttv.aar.billing.bean.ErrorType;
import com.shorttv.aar.billing.bean.ProductDataType;
import com.shorttv.aar.billing.util.CoroutineUtil;
import gt.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zc.e;
import zc.f;
import zc.h;
import zc.j;
import zc.k;
/* compiled from: BillingClient.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBillingClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,617:1\n426#2,11:618\n426#2,9:629\n435#2,2:642\n426#2,11:644\n1863#3:638\n1863#3,2:639\n1864#3:641\n1557#3:655\n1628#3,3:656\n1863#3,2:659\n*S KotlinDebug\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient\n*L\n303#1:618,11\n359#1:629,9\n359#1:642,2\n515#1:644,11\n362#1:638\n363#1:639,2\n362#1:641\n101#1:655\n101#1:656,3\n559#1:659,2\n*E\n"})
/* loaded from: classes6.dex */
public final class BillingClient {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f36992m = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private com.android.billingclient.api.BillingClient f36993a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private j f36994b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Handler f36995c;

    /* renamed from: g  reason: collision with root package name */
    private boolean f36999g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private volatile String f37000h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private volatile String f37001i;

    /* renamed from: j  reason: collision with root package name */
    private int f37002j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private r f37003k;

    /* renamed from: d  reason: collision with root package name */
    private boolean f36996d = true;

    /* renamed from: e  reason: collision with root package name */
    private boolean f36997e = true;

    /* renamed from: f  reason: collision with root package name */
    private boolean f36998f = true;

    /* renamed from: l  reason: collision with root package name */
    private long f37004l = -1;

    /* compiled from: BillingClient.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BillingClient.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nBillingClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$3$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,617:1\n1863#2,2:618\n*S KotlinDebug\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient$checkNotAcknowledgedPurchases$3$1\n*L\n316#1:618,2\n*E\n"})
    /* loaded from: classes6.dex */
    static final class b implements PurchasesResponseListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37005a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ i<List<zc.f>> f37006b;

        /* JADX WARN: Multi-variable type inference failed */
        b(String str, i<? super List<zc.f>> iVar) {
            this.f37005a = str;
            this.f37006b = iVar;
        }

        @Override // com.android.billingclient.api.PurchasesResponseListener
        public final void onQueryPurchasesResponse(BillingResult result, List<Purchase> list) {
            Intrinsics.checkNotNullParameter(result, "result");
            Intrinsics.checkNotNullParameter(list, "list");
            bd.b bVar = bd.b.f2605a;
            bVar.b("BillingClient", "checkNotAcknowledgedPurchases -> productType(" + this.f37005a + ") result(" + result + ") list(" + list + ')');
            ArrayList arrayList = new ArrayList();
            if (g.a(result)) {
                for (Purchase purchase : list) {
                    if (purchase.getPurchaseState() == 1 && !purchase.isAcknowledged()) {
                        f.a aVar = zc.f.f71605m;
                        Intrinsics.checkNotNull(purchase);
                        arrayList.add(aVar.a(purchase));
                    }
                }
            }
            i<List<zc.f>> iVar = this.f37006b;
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
            cd.b.a(iVar, arrayList);
        }
    }

    /* compiled from: BillingClient.kt */
    @Metadata
    /* loaded from: classes6.dex */
    static final class c implements ConsumeResponseListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37007a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ i<Object> f37008b;

        c(String str, i<Object> iVar) {
            this.f37007a = str;
            this.f37008b = iVar;
        }

        @Override // com.android.billingclient.api.ConsumeResponseListener
        public final void onConsumeResponse(BillingResult billingResult, String str) {
            Intrinsics.checkNotNullParameter(billingResult, "billingResult");
            Intrinsics.checkNotNullParameter(str, "<unused var>");
            bd.b bVar = bd.b.f2605a;
            bVar.b("BillingClient", "consume -> productType(" + this.f37007a + ") result(" + billingResult + ')');
            cd.b.a(this.f37008b, null);
        }
    }

    /* compiled from: BillingClient.kt */
    @Metadata
    /* loaded from: classes6.dex */
    static final class d implements AcknowledgePurchaseResponseListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37014a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ i<Object> f37015b;

        d(String str, i<Object> iVar) {
            this.f37014a = str;
            this.f37015b = iVar;
        }

        @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
        public final void onAcknowledgePurchaseResponse(BillingResult billingResult) {
            Intrinsics.checkNotNullParameter(billingResult, "billingResult");
            bd.b bVar = bd.b.f2605a;
            bVar.b("BillingClient", "consume -> productType(" + this.f37014a + ") result(" + billingResult + ')');
            cd.b.a(this.f37015b, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BillingClient.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nBillingClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient$queryProductDetails$3$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,617:1\n1557#2:618\n1628#2,3:619\n*S KotlinDebug\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient$queryProductDetails$3$2\n*L\n380#1:618\n380#1:619,3\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class e implements ProductDetailsResponseListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i<zc.i> f37016a;

        /* JADX WARN: Multi-variable type inference failed */
        e(i<? super zc.i> iVar) {
            this.f37016a = iVar;
        }

        @Override // com.android.billingclient.api.ProductDetailsResponseListener
        public final void onProductDetailsResponse(BillingResult result, QueryProductDetailsResult queryResult) {
            Intrinsics.checkNotNullParameter(result, "result");
            Intrinsics.checkNotNullParameter(queryResult, "queryResult");
            bd.b bVar = bd.b.f2605a;
            bVar.b("BillingClient", "queryProductDetailsAsync -> result(" + result + ") list(" + queryResult + ')');
            i<zc.i> iVar = this.f37016a;
            ErrorCode c10 = g.c(result.getResponseCode());
            List<ProductDetails> productDetailsList = queryResult.getProductDetailsList();
            Intrinsics.checkNotNullExpressionValue(productDetailsList, "getProductDetailsList(...)");
            List<ProductDetails> list = productDetailsList;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (ProductDetails productDetails : list) {
                e.c cVar = zc.e.f71572j;
                Intrinsics.checkNotNull(productDetails);
                arrayList.add(cVar.a(productDetails));
            }
            cd.b.a(iVar, new zc.i(c10, arrayList));
        }
    }

    /* compiled from: BillingClient.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class f implements BillingClientStateListener {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f37018b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f37019c;

        f(String str, Context context) {
            this.f37018b = str;
            this.f37019c = context;
        }

        @Override // com.android.billingclient.api.BillingClientStateListener
        public void onBillingServiceDisconnected() {
            bd.b bVar = bd.b.f2605a;
            bVar.a("BillingClient", "onBillingServiceDisconnected -> mSetupSuccess(" + BillingClient.this.f36999g + ')');
            if (BillingClient.this.f36999g) {
                BillingClient.this.f36999g = false;
                BillingClient.this.H();
                BillingClient.this.Y();
                BillingClient.this.p0(this.f37019c);
            }
        }

        @Override // com.android.billingclient.api.BillingClientStateListener
        public void onBillingSetupFinished(BillingResult billingResult) {
            Intrinsics.checkNotNullParameter(billingResult, "billingResult");
            bd.b bVar = bd.b.f2605a;
            bVar.b("BillingClient", "onBillingSetupFinished -> result(" + billingResult + ')');
            if (!g.a(billingResult)) {
                BillingClient.this.f36999g = false;
                BillingClient.this.i0(false);
                if (g.b(billingResult)) {
                    BillingClient.this.f36996d = false;
                    BillingClient.this.f36997e = false;
                }
                BillingClient.this.a0(this.f37018b, new zc.a(ErrorType.CONNECT_FAILED, g.c(billingResult.getResponseCode()), billingResult.getDebugMessage()));
            } else if (!BillingClient.this.f36999g) {
                BillingClient.this.f36999g = true;
                BillingClient.this.i0(true);
                BillingClient.this.E();
                BillingClient.this.G();
            }
        }
    }

    private final void D() {
        r rVar = this.f37003k;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f37003k = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E() {
        this.f36996d = true;
        this.f36997e = true;
        this.f36998f = true;
        CoroutineUtil.i(CoroutineUtil.f37028a, "checkFeatureSupport", false, new BillingClient$checkFeatureSupport$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H() {
        com.android.billingclient.api.BillingClient billingClient = this.f36993a;
        if (billingClient != null) {
            billingClient.endConnection();
        }
        this.f36993a = null;
    }

    private final synchronized boolean J(Context context, String str) {
        try {
            bd.b bVar = bd.b.f2605a;
            bVar.b("BillingClient", "createBillingClient -> opId(" + str + ')');
            try {
                BillingClient.Builder listener = com.android.billingclient.api.BillingClient.newBuilder(context).enablePendingPurchases(PendingPurchasesParams.newBuilder().enablePrepaidPlans().enableOneTimeProducts().build()).setListener(new PurchasesUpdatedListener() { // from class: ad.f
                    @Override // com.android.billingclient.api.PurchasesUpdatedListener
                    public final void onPurchasesUpdated(BillingResult billingResult, List list) {
                        com.shorttv.aar.billing.core.BillingClient.K(com.shorttv.aar.billing.core.BillingClient.this, billingResult, list);
                    }
                });
                Intrinsics.checkNotNullExpressionValue(listener, "setListener(...)");
                j jVar = this.f36994b;
                if (jVar != null && jVar.a()) {
                    listener.enableUserChoiceBilling(new UserChoiceBillingListener() { // from class: ad.g
                        @Override // com.android.billingclient.api.UserChoiceBillingListener
                        public final void userSelectedAlternativeBilling(UserChoiceDetails userChoiceDetails) {
                            com.shorttv.aar.billing.core.BillingClient.L(com.shorttv.aar.billing.core.BillingClient.this, userChoiceDetails);
                        }
                    });
                }
                this.f36993a = listener.build();
            } catch (Exception e10) {
                a0(str, new zc.a(ErrorType.CREATE_FAILED, ErrorCode.UNKNOWN, e10.getMessage()));
                return false;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(BillingClient billingClient, BillingResult billingResult, List list) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        bd.b.f2605a.b("BillingClient", "onPurchasesUpdated -> result(" + billingResult + ") list(" + list + ')');
        String str = "";
        if (g.a(billingResult)) {
            List<zc.f> list2 = null;
            if (list != null) {
                List<Purchase> list3 = list;
                arrayList = new ArrayList(CollectionsKt.z(list3, 10));
                for (Purchase purchase : list3) {
                    f.a aVar = zc.f.f71605m;
                    Intrinsics.checkNotNull(purchase);
                    arrayList.add(aVar.a(purchase));
                }
            } else {
                arrayList = null;
            }
            String str2 = billingClient.f37000h;
            if (str2 != null) {
                str = str2;
            }
            if (arrayList != null) {
                list2 = CollectionsKt.g1(arrayList);
            }
            billingClient.g0(str, list2);
            return;
        }
        String str3 = billingClient.f37000h;
        if (str3 != null) {
            str = str3;
        }
        billingClient.a0(str, new zc.a(ErrorType.PURCHASE_FAILED, g.c(billingResult.getResponseCode()), billingResult.getDebugMessage()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(BillingClient billingClient, UserChoiceDetails it) {
        m b10;
        Intrinsics.checkNotNullParameter(it, "it");
        j jVar = billingClient.f36994b;
        if (jVar != null && (b10 = jVar.b()) != null) {
            b10.g(zc.d.f71570b.a(it));
        }
    }

    private final synchronized void M() {
        if (this.f36995c == null) {
            this.f36995c = new Handler(Looper.getMainLooper());
        }
    }

    private final int N() {
        com.android.billingclient.api.BillingClient billingClient = this.f36993a;
        if (billingClient != null) {
            return billingClient.getConnectionState();
        }
        return 3;
    }

    private final long Q() {
        return SystemClock.elapsedRealtime();
    }

    private final void T(Activity activity, String str, String str2, zc.e eVar, k kVar) {
        BillingResult billingResult;
        BillingFlowParams.Builder obfuscatedAccountId = BillingFlowParams.newBuilder().setObfuscatedAccountId(str);
        Intrinsics.checkNotNullExpressionValue(obfuscatedAccountId, "setObfuscatedAccountId(...)");
        if (eVar.a() == ProductDataType.GOOGLE_PRODUCT) {
            ArrayList arrayList = new ArrayList();
            BillingFlowParams.ProductDetailsParams.Builder newBuilder = BillingFlowParams.ProductDetailsParams.newBuilder();
            Object c10 = eVar.c();
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type com.android.billingclient.api.ProductDetails");
            BillingFlowParams.ProductDetailsParams.Builder productDetails = newBuilder.setProductDetails((ProductDetails) c10);
            Intrinsics.checkNotNullExpressionValue(productDetails, "setProductDetails(...)");
            if (str2.length() > 0) {
                productDetails.setOfferToken(str2);
            }
            BillingFlowParams.ProductDetailsParams build = productDetails.build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            arrayList.add(build);
            obfuscatedAccountId.setProductDetailsParamsList(arrayList);
        } else if (eVar.a() == ProductDataType.GOOGLE_SKU) {
            bd.b.f2605a.a("BillingClient", "launchBillingFlow -> GOOGLE_SKU 类型已废弃，请迁移到 GOOGLE_PRODUCT");
            Object c11 = eVar.c();
            Intrinsics.checkNotNull(c11, "null cannot be cast to non-null type com.android.billingclient.api.SkuDetails");
            obfuscatedAccountId.setSkuDetails((SkuDetails) c11);
        }
        if (kVar != null) {
            BillingFlowParams.SubscriptionUpdateParams.Builder newBuilder2 = BillingFlowParams.SubscriptionUpdateParams.newBuilder();
            String a10 = kVar.a();
            if (a10 == null) {
                a10 = "";
            }
            obfuscatedAccountId.setSubscriptionUpdateParams(newBuilder2.setOldPurchaseToken(a10).setSubscriptionReplacementMode(kVar.b().covertToGoogleMode()).build());
        }
        com.android.billingclient.api.BillingClient billingClient = this.f36993a;
        if (billingClient != null) {
            billingResult = billingClient.launchBillingFlow(activity, obfuscatedAccountId.build());
        } else {
            billingResult = null;
        }
        bd.b bVar = bd.b.f2605a;
        bVar.b("BillingClient", "launchBillingFlow -> result(" + billingResult + ')');
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V(Object obj, BillingClient billingClient, Activity activity, String str, String str2, k kVar) {
        if (obj instanceof zc.e) {
            zc.e eVar = (zc.e) obj;
            billingClient.f37001i = eVar.d();
            billingClient.T(activity, str, str2, eVar, kVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object W(List<zc.g> list, rs.c<? super zc.i> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        QueryProductDetailsParams.Builder newBuilder = QueryProductDetailsParams.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder(...)");
        ArrayList arrayList = new ArrayList();
        for (zc.g gVar : list) {
            for (String str : gVar.a()) {
                QueryProductDetailsParams.Product.Builder productId = QueryProductDetailsParams.Product.newBuilder().setProductType(gVar.b()).setProductId(str);
                Intrinsics.checkNotNullExpressionValue(productId, "setProductId(...)");
                arrayList.add(productId.build());
            }
        }
        newBuilder.setProductList(arrayList);
        com.android.billingclient.api.BillingClient billingClient = this.f36993a;
        if (billingClient == null) {
            cd.b.a(eVar, new zc.i(ErrorCode.UNKNOWN, null));
        } else {
            billingClient.queryProductDetailsAsync(newBuilder.build(), new e(eVar));
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y() {
        Handler handler = this.f36995c;
        if (handler != null) {
            handler.post(new Runnable() { // from class: ad.h
                @Override // java.lang.Runnable
                public final void run() {
                    com.shorttv.aar.billing.core.BillingClient.Z(com.shorttv.aar.billing.core.BillingClient.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(BillingClient billingClient) {
        m b10;
        j jVar = billingClient.f36994b;
        if (jVar != null && (b10 = jVar.b()) != null) {
            b10.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a0(final String str, final zc.a aVar) {
        Handler handler = this.f36995c;
        if (handler != null) {
            handler.post(new Runnable() { // from class: ad.i
                @Override // java.lang.Runnable
                public final void run() {
                    com.shorttv.aar.billing.core.BillingClient.b0(com.shorttv.aar.billing.core.BillingClient.this, str, aVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(BillingClient billingClient, String str, zc.a aVar) {
        m b10;
        j jVar = billingClient.f36994b;
        if (jVar != null && (b10 = jVar.b()) != null) {
            b10.b(str, billingClient.f37001i, aVar);
        }
        String b11 = aVar.b();
        boolean z10 = false;
        if (b11 != null) {
            z10 = StringsKt.b0(b11, "There is already a pending purchase for the requested item", false, 2, null);
        }
        if (aVar.c() == ErrorType.PURCHASE_FAILED && !z10) {
            billingClient.f37000h = null;
            billingClient.f37001i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0(final List<zc.f> list) {
        Handler handler = this.f36995c;
        if (handler != null) {
            handler.post(new Runnable() { // from class: ad.d
                @Override // java.lang.Runnable
                public final void run() {
                    com.shorttv.aar.billing.core.BillingClient.d0(com.shorttv.aar.billing.core.BillingClient.this, list);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d0(BillingClient billingClient, List list) {
        m b10;
        j jVar = billingClient.f36994b;
        if (jVar != null && (b10 = jVar.b()) != null) {
            b10.c(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e0(final String str, final List<h> list) {
        Handler handler = this.f36995c;
        if (handler != null) {
            handler.post(new Runnable() { // from class: ad.c
                @Override // java.lang.Runnable
                public final void run() {
                    com.shorttv.aar.billing.core.BillingClient.f0(com.shorttv.aar.billing.core.BillingClient.this, str, list);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(BillingClient billingClient, String str, List list) {
        m b10;
        j jVar = billingClient.f36994b;
        if (jVar != null && (b10 = jVar.b()) != null) {
            b10.d(str, list);
        }
    }

    private final void g0(final String str, final List<zc.f> list) {
        Handler handler = this.f36995c;
        if (handler != null) {
            handler.post(new Runnable() { // from class: ad.j
                @Override // java.lang.Runnable
                public final void run() {
                    com.shorttv.aar.billing.core.BillingClient.h0(com.shorttv.aar.billing.core.BillingClient.this, str, list);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(BillingClient billingClient, String str, List list) {
        m b10;
        j jVar = billingClient.f36994b;
        if (jVar != null && (b10 = jVar.b()) != null) {
            b10.e(str, list);
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((zc.f) it.next()).e() == 1) {
                    billingClient.f37000h = null;
                    billingClient.f37001i = null;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0(final boolean z10) {
        Handler handler = this.f36995c;
        if (handler != null) {
            handler.post(new Runnable() { // from class: ad.a
                @Override // java.lang.Runnable
                public final void run() {
                    com.shorttv.aar.billing.core.BillingClient.j0(com.shorttv.aar.billing.core.BillingClient.this, z10);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(BillingClient billingClient, boolean z10) {
        m b10;
        j jVar = billingClient.f36994b;
        if (jVar != null && (b10 = jVar.b()) != null) {
            b10.f(z10);
        }
    }

    private final void m0(Context context, String str) {
        this.f37004l = Q();
        com.android.billingclient.api.BillingClient billingClient = this.f36993a;
        if (billingClient != null) {
            billingClient.startConnection(new f(str, context));
        }
    }

    private final void n0(final Context context) {
        D();
        this.f37003k = CoroutineUtil.e(CoroutineUtil.f37028a, 2000L, null, new Function0() { // from class: ad.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit o02;
                o02 = com.shorttv.aar.billing.core.BillingClient.o0(com.shorttv.aar.billing.core.BillingClient.this, context);
                return o02;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0(BillingClient billingClient, Context context) {
        if (billingClient.f36993a == null) {
            bd.b.f2605a.b("BillingClient", "try reconnect");
            billingClient.f37002j++;
            billingClient.k0(context, "", billingClient.f36994b);
        } else if (!billingClient.f36999g) {
            bd.b.f2605a.b("BillingClient", "try reconnect");
            billingClient.f37002j++;
            billingClient.l0(context, "");
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p0(Context context) {
        if (this.f37002j >= 3) {
            bd.b bVar = bd.b.f2605a;
            bVar.a("BillingClient", "try reconnect failed -> mTryReconnectCount(" + this.f37002j + ")>=3");
            return;
        }
        n0(context);
    }

    @Nullable
    public final Object F(@NotNull String str, @NotNull rs.c<? super List<zc.f>> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        com.android.billingclient.api.BillingClient billingClient = this.f36993a;
        if (billingClient == null) {
            cd.b.a(eVar, null);
        } else {
            QueryPurchasesParams build = QueryPurchasesParams.newBuilder().setProductType(str).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            billingClient.queryPurchasesAsync(build, new b(str, eVar));
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    public final void G() {
        CoroutineUtil.i(CoroutineUtil.f37028a, "checkNotAcknowledgedPurchases", false, new BillingClient$checkNotAcknowledgedPurchases$1(this, null), 2, null);
    }

    @Nullable
    public final Object I(@NotNull String str, @NotNull String str2, @NotNull rs.c<Object> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        com.android.billingclient.api.BillingClient billingClient = this.f36993a;
        if (billingClient == null) {
            cd.b.a(eVar, null);
        } else if (Intrinsics.areEqual(str, "inapp")) {
            ConsumeParams build = ConsumeParams.newBuilder().setPurchaseToken(str2).build();
            Intrinsics.checkNotNullExpressionValue(build, "build(...)");
            billingClient.consumeAsync(build, new c(str, eVar));
        } else {
            AcknowledgePurchaseParams build2 = AcknowledgePurchaseParams.newBuilder().setPurchaseToken(str2).build();
            Intrinsics.checkNotNullExpressionValue(build2, "build(...)");
            billingClient.acknowledgePurchase(build2, new d(str, eVar));
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    public final boolean O() {
        return this.f36996d;
    }

    public final boolean P() {
        return this.f36997e;
    }

    public final boolean R() {
        if (N() == 2) {
            return true;
        }
        return false;
    }

    public final boolean S() {
        if (this.f36993a != null) {
            return true;
        }
        return false;
    }

    public final void U(@NotNull String opId, @NotNull final Activity activity, @NotNull final String obfuscatedAccountId, @NotNull String obfuscatedProfileId, @NotNull final String offerToken, @NotNull final Object productDetails, @Nullable final k kVar) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(obfuscatedAccountId, "obfuscatedAccountId");
        Intrinsics.checkNotNullParameter(obfuscatedProfileId, "obfuscatedProfileId");
        Intrinsics.checkNotNullParameter(offerToken, "offerToken");
        Intrinsics.checkNotNullParameter(productDetails, "productDetails");
        this.f37000h = opId;
        Handler handler = this.f36995c;
        if (handler != null) {
            handler.post(new Runnable() { // from class: ad.e
                @Override // java.lang.Runnable
                public final void run() {
                    com.shorttv.aar.billing.core.BillingClient.V(productDetails, this, activity, obfuscatedAccountId, offerToken, kVar);
                }
            });
        }
    }

    public final void X(@NotNull String opId, @NotNull List<zc.g> products, boolean z10) {
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(products, "products");
        CoroutineUtil coroutineUtil = CoroutineUtil.f37028a;
        CoroutineUtil.i(coroutineUtil, "queryProductDetails(" + opId + ')', false, new BillingClient$queryProductDetails$1(products, this, opId, null), 2, null);
    }

    public final void k0(@NotNull Context context, @NotNull String opId, @Nullable j jVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(opId, "opId");
        if (this.f36993a != null) {
            a0(opId, new zc.a(ErrorType.CREATE_FAILED, ErrorCode.UNKNOWN, "already setup"));
            return;
        }
        bd.b.f2605a.b("BillingClient", "setup");
        this.f36994b = jVar;
        M();
        if (J(context, opId)) {
            l0(context, opId);
        }
    }

    public final synchronized void l0(@NotNull Context context, @NotNull String opId) {
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(opId, "opId");
            if (this.f36993a == null) {
                D();
                J(context, opId);
            }
            int N = N();
            if (N != 1 && N != 2) {
                bd.b.f2605a.b("BillingClient", "startConnection");
                try {
                    m0(context, opId);
                } catch (Exception e10) {
                    a0(opId, new zc.a(ErrorType.CONNECT_FAILED, ErrorCode.UNKNOWN, e10.getMessage()));
                }
                return;
            }
            bd.b bVar = bd.b.f2605a;
            bVar.a("BillingClient", "startConnection failed -> current connectionState(" + N + ')');
            if (N == 1) {
                long Q = Q();
                if (Q - this.f37004l > ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) {
                    bVar.a("BillingClient", "connecting timeout -> systemElapsedTime(" + Q + ") mLastConnectionTime(" + this.f37004l + ')');
                    this.f37004l = Q;
                    com.android.billingclient.api.BillingClient billingClient = this.f36993a;
                    this.f36993a = null;
                    CoroutineUtil.f37028a.g("clearBillingClient", true, new BillingClient$startConnection$1(billingClient, null));
                    k0(context, "", this.f36994b);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
