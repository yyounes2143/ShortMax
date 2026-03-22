package com.startshorts.androidplayer.viewmodel.billing;

import com.startshorts.androidplayer.bean.order.OtherOrderResult;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BillingViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f48392a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final OtherOrderResult f48393b;

        public a(boolean z10, @Nullable OtherOrderResult otherOrderResult) {
            super(null);
            this.f48392a = z10;
            this.f48393b = otherOrderResult;
        }

        public final boolean a() {
            return this.f48392a;
        }

        @Nullable
        public final OtherOrderResult b() {
            return this.f48393b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f48392a == aVar.f48392a && Intrinsics.areEqual(this.f48393b, aVar.f48393b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Boolean.hashCode(this.f48392a) * 31;
            OtherOrderResult otherOrderResult = this.f48393b;
            if (otherOrderResult == null) {
                hashCode = 0;
            } else {
                hashCode = otherOrderResult.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "CreateOtherOrderResult(createResult=" + this.f48392a + ", result=" + this.f48393b + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.billing.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0654b extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0654b f48394a = new C0654b();

        private C0654b() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof C0654b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1653562719;
        }

        @NotNull
        public String toString() {
            return "ExchangeCoinsFailed";
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48395a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48396b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final GPayPriceInfo f48397c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final String f48398d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo, @Nullable String str2) {
            super(null);
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            this.f48395a = str;
            this.f48396b = gpSkuId;
            this.f48397c = priceInfo;
            this.f48398d = str2;
        }

        @Nullable
        public final String a() {
            return this.f48395a;
        }

        @NotNull
        public final String b() {
            return this.f48396b;
        }

        @NotNull
        public final GPayPriceInfo c() {
            return this.f48397c;
        }

        @Nullable
        public final String d() {
            return this.f48398d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (Intrinsics.areEqual(this.f48395a, cVar.f48395a) && Intrinsics.areEqual(this.f48396b, cVar.f48396b) && Intrinsics.areEqual(this.f48397c, cVar.f48397c) && Intrinsics.areEqual(this.f48398d, cVar.f48398d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f48395a;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode2 = ((((hashCode * 31) + this.f48396b.hashCode()) * 31) + this.f48397c.hashCode()) * 31;
            String str2 = this.f48398d;
            if (str2 != null) {
                i10 = str2.hashCode();
            }
            return hashCode2 + i10;
        }

        @NotNull
        public String toString() {
            return "ExchangeCoinsSuccess(gpOrderId=" + this.f48395a + ", gpSkuId=" + this.f48396b + ", priceInfo=" + this.f48397c + ", purchaseToken=" + this.f48398d + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final d f48399a = new d();

        private d() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 1976930486;
        }

        @NotNull
        public String toString() {
            return "ExchangePremiumFailed";
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48400a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48401b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final GPayPriceInfo f48402c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            this.f48400a = str;
            this.f48401b = gpSkuId;
            this.f48402c = priceInfo;
        }

        @Nullable
        public final String a() {
            return this.f48400a;
        }

        @NotNull
        public final String b() {
            return this.f48401b;
        }

        @NotNull
        public final GPayPriceInfo c() {
            return this.f48402c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (Intrinsics.areEqual(this.f48400a, eVar.f48400a) && Intrinsics.areEqual(this.f48401b, eVar.f48401b) && Intrinsics.areEqual(this.f48402c, eVar.f48402c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f48400a;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return (((hashCode * 31) + this.f48401b.hashCode()) * 31) + this.f48402c.hashCode();
        }

        @NotNull
        public String toString() {
            return "ExchangePremiumSuccess(gpOrderId=" + this.f48400a + ", gpSkuId=" + this.f48401b + ", priceInfo=" + this.f48402c + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final f f48403a = new f();

        private f() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof f)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1346579429;
        }

        @NotNull
        public String toString() {
            return "ItemAlreadyOwned";
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final AcknowledgePurchaseResult f48404a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull AcknowledgePurchaseResult result) {
            super(null);
            Intrinsics.checkNotNullParameter(result, "result");
            this.f48404a = result;
        }

        @NotNull
        public final AcknowledgePurchaseResult a() {
            return this.f48404a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof g) && Intrinsics.areEqual(this.f48404a, ((g) obj).f48404a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48404a.hashCode();
        }

        @NotNull
        public String toString() {
            return "NotAcknowledgedPurchasesConsumed(result=" + this.f48404a + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final AcknowledgePurchaseResult f48405a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(@NotNull AcknowledgePurchaseResult result) {
            super(null);
            Intrinsics.checkNotNullParameter(result, "result");
            this.f48405a = result;
        }

        @NotNull
        public final AcknowledgePurchaseResult a() {
            return this.f48405a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof h) && Intrinsics.areEqual(this.f48405a, ((h) obj).f48405a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48405a.hashCode();
        }

        @NotNull
        public String toString() {
            return "NotAcknowledgedSubsConsumed(result=" + this.f48405a + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final i f48406a = new i();

        private i() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof i)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -233197482;
        }

        @NotNull
        public String toString() {
            return "NotExistNotAcknowledgedPurchases";
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final j f48407a = new j();

        private j() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof j)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 1682115311;
        }

        @NotNull
        public String toString() {
            return "NotExistNotAcknowledgedSubs";
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final GPayExchangePremiumResult.RechargeUserInfo f48408a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(@NotNull GPayExchangePremiumResult.RechargeUserInfo userInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(userInfo, "userInfo");
            this.f48408a = userInfo;
        }

        @NotNull
        public final GPayExchangePremiumResult.RechargeUserInfo a() {
            return this.f48408a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof k) && Intrinsics.areEqual(this.f48408a, ((k) obj).f48408a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48408a.hashCode();
        }

        @NotNull
        public String toString() {
            return "NotifySwitchAccount(userInfo=" + this.f48408a + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class l extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final l f48409a = new l();

        private l() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof l)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 932803725;
        }

        @NotNull
        public String toString() {
            return "OrderCreateFail";
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class m extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<Object> f48410a;

        public m(@Nullable List<Object> list) {
            super(null);
            this.f48410a = list;
        }

        @Nullable
        public final List<Object> a() {
            return this.f48410a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof m) && Intrinsics.areEqual(this.f48410a, ((m) obj).f48410a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<Object> list = this.f48410a;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "ProductDetailList(list=" + this.f48410a + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class n extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48411a;

        public n(@Nullable String str) {
            super(null);
            this.f48411a = str;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof n) && Intrinsics.areEqual(this.f48411a, ((n) obj).f48411a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f48411a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @NotNull
        public String toString() {
            return "PurchaseFailed(errMsg=" + this.f48411a + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class o extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final TTPInfoResult f48412a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(@NotNull TTPInfoResult ttpInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(ttpInfo, "ttpInfo");
            this.f48412a = ttpInfo;
        }

        @NotNull
        public final TTPInfoResult a() {
            return this.f48412a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof o) && Intrinsics.areEqual(this.f48412a, ((o) obj).f48412a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48412a.hashCode();
        }

        @NotNull
        public String toString() {
            return "QueryTTPInfo(ttpInfo=" + this.f48412a + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class p extends b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f48413a;

        public p(boolean z10) {
            super(null);
            this.f48413a = z10;
        }

        public final boolean a() {
            return this.f48413a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof p) && this.f48413a == ((p) obj).f48413a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Boolean.hashCode(this.f48413a);
        }

        @NotNull
        public String toString() {
            return "RefreshBalanceSucceed(needUnlock=" + this.f48413a + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class q extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final q f48414a = new q();

        private q() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof q)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 309834676;
        }

        @NotNull
        public String toString() {
            return "SetupFinished";
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class r extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48415a;

        public r(@Nullable String str) {
            super(null);
            this.f48415a = str;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof r) && Intrinsics.areEqual(this.f48415a, ((r) obj).f48415a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f48415a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @NotNull
        public String toString() {
            return "SubsFailed(errMsg=" + this.f48415a + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class s extends b {

        /* renamed from: a  reason: collision with root package name */
        private final int f48416a;

        public s(int i10) {
            super(null);
            this.f48416a = i10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof s) && this.f48416a == ((s) obj).f48416a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48416a);
        }

        @NotNull
        public String toString() {
            return "UpdatePremiumFailed(subsUpdateMode=" + this.f48416a + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class t extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f48417a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48418b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final GPayPriceInfo f48419c;

        /* renamed from: d  reason: collision with root package name */
        private final int f48420d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public t(@Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo, int i10) {
            super(null);
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            this.f48417a = str;
            this.f48418b = gpSkuId;
            this.f48419c = priceInfo;
            this.f48420d = i10;
        }

        @Nullable
        public final String a() {
            return this.f48417a;
        }

        @NotNull
        public final String b() {
            return this.f48418b;
        }

        @NotNull
        public final GPayPriceInfo c() {
            return this.f48419c;
        }

        public final int d() {
            return this.f48420d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof t)) {
                return false;
            }
            t tVar = (t) obj;
            if (Intrinsics.areEqual(this.f48417a, tVar.f48417a) && Intrinsics.areEqual(this.f48418b, tVar.f48418b) && Intrinsics.areEqual(this.f48419c, tVar.f48419c) && this.f48420d == tVar.f48420d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f48417a;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return (((((hashCode * 31) + this.f48418b.hashCode()) * 31) + this.f48419c.hashCode()) * 31) + Integer.hashCode(this.f48420d);
        }

        @NotNull
        public String toString() {
            return "UpdatePremiumSuccess(gpOrderId=" + this.f48417a + ", gpSkuId=" + this.f48418b + ", priceInfo=" + this.f48419c + ", subsUpdateMode=" + this.f48420d + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class u extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final u f48421a = new u();

        private u() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof u)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1624730773;
        }

        @NotNull
        public String toString() {
            return "UserCancelled";
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
