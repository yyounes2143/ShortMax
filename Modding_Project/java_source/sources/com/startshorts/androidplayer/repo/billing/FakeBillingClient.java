package com.startshorts.androidplayer.repo.billing;

import ad.k;
import ad.m;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import com.adjust.sdk.Constants;
import com.google.android.material.timepicker.TimeModel;
import com.hades.aar.activity.IDActivity;
import com.huawei.hms.support.feature.result.CommonConstant;
import com.shorttv.aar.billing.bean.ErrorCode;
import com.shorttv.aar.billing.bean.ErrorType;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.tip.Builder;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.FakeBillingClient;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import fk.u;
import gg.p;
import gg.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import le.h;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
import zc.e;
import zc.f;
import zc.g;
import zc.j;
/* compiled from: FakeBillingClient.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFakeBillingClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FakeBillingClient.kt\ncom/startshorts/androidplayer/repo/billing/FakeBillingClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,591:1\n1863#2,2:592\n1863#2,2:594\n1863#2,2:596\n1863#2:598\n1863#2,2:599\n1864#2:601\n295#2,2:602\n774#2:604\n865#2,2:605\n1557#2:607\n1628#2,3:608\n1557#2:611\n1628#2,3:612\n1863#2,2:615\n1863#2,2:617\n*S KotlinDebug\n*F\n+ 1 FakeBillingClient.kt\ncom/startshorts/androidplayer/repo/billing/FakeBillingClient\n*L\n90#1:592,2\n93#1:594,2\n100#1:596,2\n104#1:598\n106#1:599,2\n104#1:601\n142#1:602,2\n181#1:604\n181#1:605,2\n190#1:607\n190#1:608,3\n190#1:611\n190#1:612,3\n199#1:615,2\n206#1:617,2\n*E\n"})
/* loaded from: classes7.dex */
public final class FakeBillingClient implements q {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f43280l = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private boolean f43283c;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f43285e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Object f43286f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private ActResource f43287g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private j f43288h;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f43281a = true;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f43282b = true;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f43284d = true;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private HashMap<String, CoinSku> f43289i = new HashMap<>();
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private HashMap<String, SubsSku> f43290j = new HashMap<>();
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private b f43291k = new b();

    /* compiled from: FakeBillingClient.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: FakeBillingClient.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFakeBillingClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FakeBillingClient.kt\ncom/startshorts/androidplayer/repo/billing/FakeBillingClient$FakeBillingClientDS\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,591:1\n1#2:592\n1557#3:593\n1628#3,3:594\n1557#3:597\n1628#3,3:598\n295#3,2:601\n295#3,2:603\n295#3,2:605\n1557#3:607\n1628#3,3:608\n295#3,2:611\n1557#3:613\n1628#3,3:614\n*S KotlinDebug\n*F\n+ 1 FakeBillingClient.kt\ncom/startshorts/androidplayer/repo/billing/FakeBillingClient$FakeBillingClientDS\n*L\n239#1:593\n239#1:594,3\n262#1:597\n262#1:598,3\n281#1:601,2\n286#1:603,2\n321#1:605,2\n324#1:607\n324#1:608,3\n335#1:611,2\n338#1:613\n338#1:614,3\n*E\n"})
    /* loaded from: classes7.dex */
    private final class b {

        /* compiled from: FakeBillingClient.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f43293e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ CoinSku f43294f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ JSONObject f43295g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ String f43296h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Ref.BooleanRef booleanRef, CoinSku coinSku, JSONObject jSONObject, String str) {
                super(0L, 1, null);
                this.f43293e = booleanRef;
                this.f43294f = coinSku;
                this.f43295g = jSONObject;
                this.f43296h = str;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                this.f43293e.element = true;
                String valueOf = String.valueOf(System.currentTimeMillis());
                String str = "PCN220513171445751001000014572350" + valueOf;
                f fVar = new f();
                fVar.l(valueOf);
                fVar.o(CollectionsKt.h(this.f43294f.getGpSkuId()));
                fVar.q(valueOf);
                fVar.s(1);
                fVar.t("00001111");
                fVar.r(str);
                JSONObject jSONObject = this.f43295g;
                jSONObject.put("orderId", valueOf);
                jSONObject.put("purchaseTime", valueOf);
                jSONObject.put("purchaseToken", str);
                fVar.m(jSONObject.toString());
                BillingRepo.f43237a.D(this.f43296h, fVar);
            }
        }

        /* compiled from: FakeBillingClient.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.repo.billing.FakeBillingClient$b$b  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0627b extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f43297e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ FakeBillingClient f43298f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ CoinSku f43299g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ String f43300h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ JSONObject f43301i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f43302j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f43303k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0627b(Ref.BooleanRef booleanRef, FakeBillingClient fakeBillingClient, CoinSku coinSku, String str, JSONObject jSONObject, String str2, String str3) {
                super(0L, 1, null);
                this.f43297e = booleanRef;
                this.f43298f = fakeBillingClient;
                this.f43299g = coinSku;
                this.f43300h = str;
                this.f43301i = jSONObject;
                this.f43302j = str2;
                this.f43303k = str3;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                this.f43297e.element = true;
                String valueOf = String.valueOf(System.currentTimeMillis());
                b bVar = this.f43298f.f43291k;
                String gpSkuId = this.f43299g.getGpSkuId();
                String str = this.f43300h;
                JSONObject jSONObject = this.f43301i;
                jSONObject.put("orderId", valueOf);
                jSONObject.put("purchaseTime", valueOf);
                jSONObject.put("purchaseToken", "PCN220513171445751001000014572350" + valueOf);
                Unit unit = Unit.f60915a;
                String jSONObject2 = jSONObject.toString();
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
                bVar.e(gpSkuId, str, "", jSONObject2);
                BillingRepo.f43237a.W(this.f43302j, this.f43299g.getGpSkuId(), "内购掉单测试");
                EventManager.K0(EventManager.f42463a, this.f43303k, this.f43299g, null, this.f43298f.t(), String.valueOf(k.f609a.a()), "SkuDetails is null", 4, null);
            }
        }

        /* compiled from: FakeBillingClient.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class c extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f43304e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ String f43305f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ SubsSku f43306g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ String f43307h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ JSONObject f43308i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f43309j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(Ref.BooleanRef booleanRef, String str, SubsSku subsSku, String str2, JSONObject jSONObject, String str3) {
                super(0L, 1, null);
                this.f43304e = booleanRef;
                this.f43305f = str;
                this.f43306g = subsSku;
                this.f43307h = str2;
                this.f43308i = jSONObject;
                this.f43309j = str3;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                this.f43304e.element = true;
                String valueOf = String.valueOf(System.currentTimeMillis());
                f fVar = new f();
                fVar.l(this.f43305f);
                fVar.o(CollectionsKt.h(this.f43306g.getSkuId()));
                fVar.q(valueOf);
                fVar.r(this.f43307h);
                fVar.s(1);
                fVar.t("00001111");
                JSONObject jSONObject = this.f43308i;
                jSONObject.put("purchaseTime", valueOf);
                fVar.m(jSONObject.toString());
                BillingRepo.f43237a.J(this.f43309j, fVar);
            }
        }

        /* compiled from: FakeBillingClient.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class d extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f43310e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ b f43311f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ SubsSku f43312g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ String f43313h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ String f43314i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ JSONObject f43315j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f43316k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ String f43317l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ SubsSku f43318m;

            /* renamed from: n  reason: collision with root package name */
            final /* synthetic */ FakeBillingClient f43319n;

            /* renamed from: o  reason: collision with root package name */
            final /* synthetic */ int f43320o;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            d(Ref.BooleanRef booleanRef, b bVar, SubsSku subsSku, String str, String str2, JSONObject jSONObject, String str3, String str4, SubsSku subsSku2, FakeBillingClient fakeBillingClient, int i10) {
                super(0L, 1, null);
                this.f43310e = booleanRef;
                this.f43311f = bVar;
                this.f43312g = subsSku;
                this.f43313h = str;
                this.f43314i = str2;
                this.f43315j = jSONObject;
                this.f43316k = str3;
                this.f43317l = str4;
                this.f43318m = subsSku2;
                this.f43319n = fakeBillingClient;
                this.f43320o = i10;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                this.f43310e.element = true;
                b bVar = this.f43311f;
                String skuId = this.f43312g.getSkuId();
                String str = this.f43313h;
                String str2 = this.f43314i;
                JSONObject jSONObject = this.f43315j;
                jSONObject.put("purchaseTime", String.valueOf(System.currentTimeMillis()));
                Unit unit = Unit.f60915a;
                String jSONObject2 = jSONObject.toString();
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
                bVar.e(skuId, str, str2, jSONObject2);
                BillingRepo.f43237a.Y(this.f43316k, this.f43312g.getSkuId(), "订阅掉单测试");
                EventManager.L0(EventManager.f42463a, this.f43317l, this.f43318m, null, this.f43319n.t(), this.f43320o, String.valueOf(k.f609a.a()), "SkuDetails is null", 4, null);
            }
        }

        public b() {
        }

        private final List<String> g() {
            dd.k kVar = dd.k.f50341a;
            List<String> a10 = kVar.a("fake_not_acknowledged_purchases_list" + AccountRepo.f43052a.t0(), String.class, null);
            if (a10 == null) {
                return CollectionsKt.n();
            }
            return a10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean k(String str, String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new JSONObject(it).optString("purchaseToken").equals(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean l(Function1 function1, Object obj) {
            return ((Boolean) function1.invoke(obj)).booleanValue();
        }

        private final void m(List<String> list) {
            dd.k kVar = dd.k.f50341a;
            kVar.e("fake_not_acknowledged_purchases_list" + AccountRepo.f43052a.t0(), list);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void o(Ref.BooleanRef booleanRef, FakeBillingClient fakeBillingClient, String str, CoinSku coinSku, DialogInterface dialogInterface) {
            j jVar;
            m b10;
            if (!booleanRef.element && (jVar = fakeBillingClient.f43288h) != null && (b10 = jVar.b()) != null) {
                b10.b(str, coinSku.getGpSkuId(), new zc.a(ErrorType.PURCHASE_FAILED, ErrorCode.USER_CANCELED, "User Cancelled"));
            }
        }

        public static /* synthetic */ void q(b bVar, String str, String str2, SubsSku subsSku, BaseEpisode baseEpisode, String str3, int i10, String str4, SubsSku subsSku2, int i11, Object obj) {
            BaseEpisode baseEpisode2;
            String str5;
            SubsSku subsSku3;
            if ((i11 & 8) != 0) {
                baseEpisode2 = null;
            } else {
                baseEpisode2 = baseEpisode;
            }
            if ((i11 & 64) != 0) {
                str5 = null;
            } else {
                str5 = str4;
            }
            if ((i11 & 128) != 0) {
                subsSku3 = null;
            } else {
                subsSku3 = subsSku2;
            }
            bVar.p(str, str2, subsSku, baseEpisode2, str3, i10, str5, subsSku3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void r(Ref.BooleanRef booleanRef, FakeBillingClient fakeBillingClient, String str, SubsSku subsSku, DialogInterface dialogInterface) {
            j jVar;
            m b10;
            if (!booleanRef.element && (jVar = fakeBillingClient.f43288h) != null && (b10 = jVar.b()) != null) {
                b10.b(str, subsSku.getSkuId(), new zc.a(ErrorType.PURCHASE_FAILED, ErrorCode.USER_CANCELED, "User Cancelled"));
            }
        }

        public final void e(@NotNull String productId, @NotNull String obfuscatedAccountId, @Nullable String str, @NotNull String originalJson) {
            Intrinsics.checkNotNullParameter(productId, "productId");
            Intrinsics.checkNotNullParameter(obfuscatedAccountId, "obfuscatedAccountId");
            Intrinsics.checkNotNullParameter(originalJson, "originalJson");
            Logger logger = Logger.f41511a;
            logger.h("FakeBillingClient", "addNotAcknowledgedPurchases -> productId=" + productId + ",obfuscatedAccountId=" + obfuscatedAccountId);
            JSONObject jSONObject = new JSONObject();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("GPA.");
            sb2.append(System.currentTimeMillis());
            jSONObject.put("orderId", sb2.toString());
            jSONObject.put("packageName", u.f51776a.b().getPackageName());
            jSONObject.put("products", new JSONArray((Collection) CollectionsKt.e(productId)));
            jSONObject.put("purchaseTime", System.currentTimeMillis());
            jSONObject.put("purchaseState", 0);
            jSONObject.put("purchaseToken", str);
            jSONObject.put("quantity", 1);
            jSONObject.put("acknowledged", false);
            jSONObject.put("originalJson", originalJson);
            jSONObject.put("accountIdentifiers", new JSONObject().put("obfuscatedAccountId", obfuscatedAccountId));
            List<String> g12 = CollectionsKt.g1(g());
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
            g12.add(jSONObject2);
            m(g12);
            logger.h("FakeBillingClient", "addNotAcknowledgedPurchases -> \n" + g().size() + " \nsku=" + jSONObject);
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x0224, code lost:
            if (r1 == null) goto L33;
         */
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final zc.e f(@org.jetbrains.annotations.NotNull java.lang.String r34, @org.jetbrains.annotations.NotNull java.lang.String r35) {
            /*
                Method dump skipped, instructions count: 866
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.FakeBillingClient.b.f(java.lang.String, java.lang.String):zc.e");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v5, types: [zc.f, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v0, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r9v2, types: [java.util.ArrayList] */
        @NotNull
        public final List<f> h() {
            ?? n10;
            String str;
            List<String> g10 = g();
            ArrayList<f> arrayList = new ArrayList(CollectionsKt.z(g10, 10));
            for (String str2 : g10) {
                JSONObject jSONObject = new JSONObject(str2);
                JSONObject optJSONObject = jSONObject.optJSONObject("accountIdentifiers");
                ?? fVar = new f();
                fVar.l(jSONObject.optString("orderId"));
                fVar.n(jSONObject.optString("packageName"));
                JSONArray optJSONArray = jSONObject.optJSONArray("products");
                if (optJSONArray != null) {
                    int length = optJSONArray.length();
                    n10 = new ArrayList(length);
                    for (int i10 = 0; i10 < length; i10++) {
                        n10.add(optJSONArray.optString(i10));
                    }
                } else {
                    n10 = CollectionsKt.n();
                }
                fVar.o(n10);
                fVar.q(jSONObject.optString("purchaseTime"));
                fVar.p(jSONObject.optInt("purchaseState"));
                fVar.r(jSONObject.optString("purchaseToken"));
                fVar.s(jSONObject.optInt("quantity"));
                fVar.k(false);
                fVar.m(jSONObject.optString("originalJson"));
                fVar.t(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS);
                if (optJSONObject != null) {
                    str = optJSONObject.optString("obfuscatedAccountId");
                } else {
                    str = null;
                }
                fVar.j(new zc.c(str, null));
                arrayList.add(fVar);
            }
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("getNotAcknowledgedPurchases -> ");
            ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
            for (f fVar2 : arrayList) {
                arrayList2.add("products=" + fVar2.d() + ',' + fVar2.a());
            }
            sb2.append(arrayList2);
            logger.h("FakeBillingClient", sb2.toString());
            return arrayList;
        }

        @NotNull
        public final String i(@Nullable Object obj) {
            SubsSku subsSku;
            String skuId;
            CoinSku coinSku = null;
            if (obj instanceof SubsSku) {
                subsSku = (SubsSku) obj;
            } else {
                subsSku = null;
            }
            if (subsSku == null || (skuId = subsSku.getSkuId()) == null) {
                if (obj instanceof CoinSku) {
                    coinSku = (CoinSku) obj;
                }
                if (coinSku != null) {
                    return coinSku.getGpSkuId();
                }
                return "";
            }
            return skuId;
        }

        public final void j(@NotNull final String purchaseToken) {
            Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
            Logger logger = Logger.f41511a;
            logger.h("FakeBillingClient", "removeNotAcknowledgedPurchases before -> purchaseToken=" + purchaseToken + ",size=" + g().size());
            List<String> g12 = CollectionsKt.g1(g());
            final Function1 function1 = new Function1() { // from class: com.startshorts.androidplayer.repo.billing.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean k10;
                    k10 = FakeBillingClient.b.k(purchaseToken, (String) obj);
                    return Boolean.valueOf(k10);
                }
            };
            g12.removeIf(new Predicate() { // from class: com.startshorts.androidplayer.repo.billing.b
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean l10;
                    l10 = FakeBillingClient.b.l(Function1.this, obj);
                    return l10;
                }
            });
            m(g12);
            logger.h("FakeBillingClient", "removeNotAcknowledgedPurchases before -> purchaseToken=" + purchaseToken + ",size=" + g().size());
        }

        public final void n(@NotNull final String opId, @NotNull String scene, @NotNull final CoinSku coinSku, @NotNull String obfuscatedAccountId) {
            Intrinsics.checkNotNullParameter(opId, "opId");
            Intrinsics.checkNotNullParameter(scene, "scene");
            Intrinsics.checkNotNullParameter(coinSku, "coinSku");
            Intrinsics.checkNotNullParameter(obfuscatedAccountId, "obfuscatedAccountId");
            Logger logger = Logger.f41511a;
            logger.h("FakeBillingClient", "showTestPurchaseDialog -> opId=" + opId + ",scene=" + scene + ",coinSku=" + coinSku + ",obfuscatedAccountId=" + obfuscatedAccountId);
            JSONObject a10 = p.f52356a.a(coinSku.getGpSkuId());
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            if (d10 != null) {
                final FakeBillingClient fakeBillingClient = FakeBillingClient.this;
                final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                IDActivity iDActivity = d10.get();
                Intrinsics.checkNotNull(iDActivity);
                Builder builder = new Builder();
                builder.setContent("当前为测试内购模式，点击即可支付成功");
                builder.setPositiveButtonText("确定支付");
                builder.setPositiveButtonClickListener(new a(booleanRef, coinSku, a10, opId));
                builder.setNegativeButtonText("掉单测试");
                builder.setNegativeButtonClickListener(new C0627b(booleanRef, fakeBillingClient, coinSku, obfuscatedAccountId, a10, opId, scene));
                li.c cVar = new li.c(iDActivity, builder);
                cVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.startshorts.androidplayer.repo.billing.c
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        FakeBillingClient.b.o(Ref.BooleanRef.this, fakeBillingClient, opId, coinSku, dialogInterface);
                    }
                });
                cVar.show();
            }
        }

        public final void p(@NotNull final String opId, @NotNull String scene, @NotNull final SubsSku clickedSku, @Nullable BaseEpisode baseEpisode, @NotNull String obfuscatedAccountId, int i10, @Nullable String str, @Nullable SubsSku subsSku) {
            SubsSku subsSku2;
            float payAmount;
            String jSONObject;
            Intrinsics.checkNotNullParameter(opId, "opId");
            Intrinsics.checkNotNullParameter(scene, "scene");
            Intrinsics.checkNotNullParameter(clickedSku, "clickedSku");
            Intrinsics.checkNotNullParameter(obfuscatedAccountId, "obfuscatedAccountId");
            Logger logger = Logger.f41511a;
            logger.h("FakeBillingClient", "showTestSubsDialog -> opId=" + opId + ",scene=" + scene + ",sku=" + clickedSku + ",episode=" + baseEpisode + ",obfuscatedAccountId=" + obfuscatedAccountId);
            String valueOf = String.valueOf(System.currentTimeMillis());
            if (i10 == 0) {
                subsSku2 = subsSku;
            } else {
                subsSku2 = clickedSku;
            }
            if (subsSku2 == null) {
                logger.e("FakeBillingClient", "showTestSubsDialog finalSku is null");
                return;
            }
            if (clickedSku.enableDiscount()) {
                payAmount = clickedSku.getFirstAmount();
            } else {
                payAmount = clickedSku.getPayAmount();
            }
            long j10 = payAmount * ((float) TTVideoEngineInterface.PLAYER_TIME_BASE);
            if (Intrinsics.areEqual(ae.a.f627a.d(), Constants.REFERRER_API_XIAOMI)) {
                jSONObject = "PCN220513171445751001000014572350" + valueOf;
            } else {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("linkedPurchaseToken", str);
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(Locale.ENGLISH, TimeModel.NUMBER_FORMAT, Arrays.copyOf(new Object[]{Long.valueOf(j10)}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(...)");
                jSONObject2.put("priceAmountMicros", format);
                jSONObject2.put("priceCurrencyCode", "USD");
                jSONObject2.put("mode", String.valueOf(i10));
                jSONObject2.put("obfuscatedExternalAccountId", obfuscatedAccountId);
                jSONObject2.put("orderId", valueOf);
                jSONObject2.put(CommonConstant.KEY_COUNTRY_CODE, AccountRepo.f43052a.h0());
                jSONObject2.put("appVersion", DeviceUtil.f48146a.V());
                jSONObject = jSONObject2.toString();
                Intrinsics.checkNotNull(jSONObject);
            }
            String str2 = jSONObject;
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("orderId", valueOf);
            jSONObject3.put(InAppPurchaseMetaData.KEY_PRODUCT_ID, new JSONArray((Collection) CollectionsKt.e(subsSku2.getSkuId())));
            jSONObject3.put("quantity", 1);
            jSONObject3.put(InAppPurchaseMetaData.KEY_SIGNATURE, "00001111");
            jSONObject3.put("purchaseToken", str2);
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            if (d10 != null) {
                final FakeBillingClient fakeBillingClient = FakeBillingClient.this;
                final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                IDActivity iDActivity = d10.get();
                Intrinsics.checkNotNull(iDActivity);
                Builder builder = new Builder();
                builder.setContent("当前为测试订阅模式，点击即可订阅成功");
                builder.setPositiveButtonText("确定订阅");
                SubsSku subsSku3 = subsSku2;
                builder.setPositiveButtonClickListener(new c(booleanRef, valueOf, subsSku3, str2, jSONObject3, opId));
                builder.setNegativeButtonText("掉单测试");
                builder.setNegativeButtonClickListener(new d(booleanRef, this, subsSku3, obfuscatedAccountId, str2, jSONObject3, opId, scene, clickedSku, fakeBillingClient, i10));
                li.c cVar = new li.c(iDActivity, builder);
                cVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.startshorts.androidplayer.repo.billing.d
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        FakeBillingClient.b.r(Ref.BooleanRef.this, fakeBillingClient, opId, clickedSku, dialogInterface);
                    }
                });
                cVar.show();
            }
        }
    }

    public FakeBillingClient() {
        BillingRepo billingRepo = BillingRepo.f43237a;
        billingRepo.k0(".vip.");
        billingRepo.j0(".new.");
    }

    @Override // gg.q
    public boolean a() {
        return this.f43283c;
    }

    @Override // gg.q
    public void b(@Nullable String str) {
        this.f43285e = str;
    }

    @Override // gg.q
    @Nullable
    public Object c(@NotNull String str, @NotNull String str2, @NotNull rs.c<Object> cVar) {
        this.f43291k.j(str2);
        return Unit.f60915a;
    }

    @Override // gg.q
    public void d(@Nullable Object obj) {
        this.f43286f = obj;
    }

    @Override // gg.q
    @Nullable
    public Object e(@NotNull String str, @NotNull rs.c<? super List<f>> cVar) {
        Logger.f41511a.h("FakeBillingClient", "checkNotAcknowledgedPurchases -> productType=" + str);
        List<f> h10 = this.f43291k.h();
        BillingRepo billingRepo = BillingRepo.f43237a;
        String w10 = billingRepo.w();
        String z10 = billingRepo.z();
        ArrayList arrayList = new ArrayList();
        for (Object obj : CollectionsKt.g1(h10)) {
            f fVar = (f) obj;
            h hVar = h.f62164a;
            boolean z11 = false;
            if (Intrinsics.areEqual(str, hVar.b())) {
                z11 = StringsKt.b0(fVar.d().get(0), z10, false, 2, null);
            } else if (!Intrinsics.areEqual(str, hVar.a()) || !StringsKt.b0(fVar.d().get(0), z10, false, 2, null)) {
                z11 = true;
            }
            if (z11) {
                arrayList.add(obj);
            }
        }
        List g12 = CollectionsKt.g1(arrayList);
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("checkNotAcknowledgedPurchases -> productType=");
        sb2.append(str);
        sb2.append(",DISCOUNT_FLAG=");
        sb2.append(w10);
        sb2.append(",SUBS_FLAG=");
        sb2.append(z10);
        sb2.append("\nnotAcknowledgedPurchases=");
        List<f> list = h10;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.z(list, 10));
        for (f fVar2 : list) {
            arrayList2.add(fVar2.d());
        }
        sb2.append(arrayList2);
        sb2.append("\nresult=");
        List<f> list2 = g12;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.z(list2, 10));
        for (f fVar3 : list2) {
            arrayList3.add(fVar3.d());
        }
        sb2.append(arrayList3);
        logger.h("FakeBillingClient", sb2.toString());
        return g12;
    }

    @Override // gg.q
    public void f(@Nullable List<CoinSku> list) {
        Integer num;
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("saveCoinSkuToFakeBillClient -> coinSkuList=");
        if (list != null) {
            num = Integer.valueOf(list.size());
        } else {
            num = null;
        }
        sb2.append(num);
        logger.h("FakeBillingClient", sb2.toString());
        if (list != null) {
            for (CoinSku coinSku : list) {
                this.f43289i.put(coinSku.getSkuProductId(), coinSku);
            }
        }
    }

    @Override // gg.q
    public void g() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "checkNotAcknowledgedPurchases", false, new FakeBillingClient$checkNotAcknowledgedPurchases$1(this, null), 2, null);
    }

    @Override // gg.q
    public void h(@NotNull Context context, @NotNull String opId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(opId, "opId");
        Logger logger = Logger.f41511a;
        logger.h("FakeBillingClient", "startConnection -> opId=" + opId);
    }

    @Override // gg.q
    public void i(@Nullable ActResource actResource) {
        this.f43287g = actResource;
    }

    @Override // gg.q
    public boolean isConnected() {
        return this.f43284d;
    }

    @Override // gg.q
    public boolean j() {
        return this.f43281a;
    }

    @Override // gg.q
    public void k(@NotNull Context context, @NotNull String opId, @Nullable j jVar) {
        m b10;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(opId, "opId");
        Logger logger = Logger.f41511a;
        logger.h("FakeBillingClient", "setup -> opId=" + opId + ",config=" + jVar);
        this.f43288h = jVar;
        if (jVar != null && (b10 = jVar.b()) != null) {
            b10.f(true);
        }
        w(true);
    }

    @Override // gg.q
    public void l(@NotNull String opId, @NotNull List<g> products, boolean z10) {
        m mVar;
        m b10;
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(opId, "opId");
        Intrinsics.checkNotNullParameter(products, "products");
        Logger logger = Logger.f41511a;
        logger.h("FakeBillingClient", "queryProductDetails -> opId=" + opId + ",products.size=" + products.size() + ",forceSkuDetails=" + z10);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Collection<CoinSku> values = this.f43289i.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        for (CoinSku coinSku : values) {
            Logger logger2 = Logger.f41511a;
            logger2.h("FakeBillingClient", "queryProductDetails -> coinSkuListCached,productId(" + coinSku.getSkuProductId() + "),gpSkuId(" + coinSku.getGpSkuId() + "),price(" + coinSku.getRecharge() + ')');
        }
        Collection<SubsSku> values2 = this.f43290j.values();
        Intrinsics.checkNotNullExpressionValue(values2, "<get-values>(...)");
        for (SubsSku subsSku : values2) {
            Logger logger3 = Logger.f41511a;
            logger3.h("FakeBillingClient", "queryProductDetails -> coinSkuListCached,productId(" + subsSku.getSkuId() + "),gpSkuId(" + subsSku.getSkuId() + "),firstAmount(" + subsSku.getFirstAmount() + "),payAmount(" + subsSku.getPayAmount() + ')');
        }
        List<g> list = products;
        for (g gVar : list) {
            Logger logger4 = Logger.f41511a;
            logger4.h("FakeBillingClient", "queryProductDetails -> products, productIds=" + gVar.a() + ",productType=" + gVar.b());
        }
        for (g gVar2 : list) {
            if (Intrinsics.areEqual(gVar2.b(), h.f62164a.a())) {
                arrayList = arrayList2;
            } else {
                arrayList = arrayList3;
            }
            for (String str : gVar2.a()) {
                e f10 = this.f43291k.f(str, gVar2.b());
                if (f10 != null) {
                    arrayList.add(f10);
                }
            }
        }
        ErrorCode errorCode = ErrorCode.OK;
        h hVar = h.f62164a;
        List<zc.h> t10 = CollectionsKt.t(new zc.h(errorCode, hVar.a(), arrayList2), new zc.h(errorCode, hVar.b(), arrayList3));
        Logger logger5 = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("queryProductDetails -> opId=");
        sb2.append(opId);
        sb2.append(",productDetailsInApp.size=");
        sb2.append(arrayList2.size());
        sb2.append(",productDetailsSubs.size=");
        sb2.append(arrayList3.size());
        sb2.append(',');
        j jVar = this.f43288h;
        if (jVar != null) {
            mVar = jVar.b();
        } else {
            mVar = null;
        }
        sb2.append(mVar);
        logger5.h("FakeBillingClient", sb2.toString());
        j jVar2 = this.f43288h;
        if (jVar2 != null && (b10 = jVar2.b()) != null) {
            b10.d(opId, t10);
        }
    }

    @Override // gg.q
    public void m(@Nullable List<SubsSku> list) {
        Integer num;
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("saveSubsSkuToFakeBillClient -> subsSkuList=");
        if (list != null) {
            num = Integer.valueOf(list.size());
        } else {
            num = null;
        }
        sb2.append(num);
        logger.h("FakeBillingClient", sb2.toString());
        if (list != null) {
            for (SubsSku subsSku : list) {
                this.f43290j.put(subsSku.getProductId(), subsSku);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    @Override // gg.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void n(@org.jetbrains.annotations.NotNull java.lang.String r19, @org.jetbrains.annotations.NotNull android.app.Activity r20, @org.jetbrains.annotations.NotNull java.lang.String r21, @org.jetbrains.annotations.NotNull java.lang.String r22, @org.jetbrains.annotations.NotNull java.lang.String r23, @org.jetbrains.annotations.NotNull java.lang.Object r24, int r25, @org.jetbrains.annotations.Nullable zc.k r26, @org.jetbrains.annotations.Nullable java.lang.String r27, @org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.subs.SubsSku r28) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.billing.FakeBillingClient.n(java.lang.String, android.app.Activity, java.lang.String, java.lang.String, java.lang.String, java.lang.Object, int, zc.k, java.lang.String, com.startshorts.androidplayer.bean.subs.SubsSku):void");
    }

    @Override // gg.q
    public boolean o() {
        return this.f43282b;
    }

    @Nullable
    public ActResource t() {
        return this.f43287g;
    }

    @Nullable
    public String u() {
        return this.f43285e;
    }

    @Nullable
    public Object v() {
        return this.f43286f;
    }

    public void w(boolean z10) {
        this.f43283c = z10;
    }
}
