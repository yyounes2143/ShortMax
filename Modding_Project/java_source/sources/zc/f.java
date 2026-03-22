package zc;

import com.android.billingclient.api.Purchase;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CommonPurchase.kt */
@Metadata
/* loaded from: classes6.dex */
public final class f {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f71605m = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private List<String> f71606a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private String f71607b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private String f71608c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f71609d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f71610e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private String f71611f;

    /* renamed from: g  reason: collision with root package name */
    private int f71612g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f71613h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private String f71614i;

    /* renamed from: j  reason: collision with root package name */
    private int f71615j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private String f71616k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private c f71617l;

    /* compiled from: CommonPurchase.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final f a(@NotNull Purchase purchase) {
            Intrinsics.checkNotNullParameter(purchase, "purchase");
            List<String> products = purchase.getProducts();
            Intrinsics.checkNotNullExpressionValue(products, "getProducts(...)");
            String originalJson = purchase.getOriginalJson();
            Intrinsics.checkNotNullExpressionValue(originalJson, "getOriginalJson(...)");
            String signature = purchase.getSignature();
            Intrinsics.checkNotNullExpressionValue(signature, "getSignature(...)");
            String orderId = purchase.getOrderId();
            String purchaseToken = purchase.getPurchaseToken();
            Intrinsics.checkNotNullExpressionValue(purchaseToken, "getPurchaseToken(...)");
            int purchaseState = purchase.getPurchaseState();
            boolean isAcknowledged = purchase.isAcknowledged();
            String packageName = purchase.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
            return new f(products, originalJson, signature, orderId, "", purchaseToken, purchaseState, isAcknowledged, packageName, purchase.getQuantity(), String.valueOf(purchase.getPurchaseTime()), c.f71567c.a(purchase.getAccountIdentifiers()));
        }

        private a() {
        }
    }

    /* compiled from: CommonPurchase.kt */
    @Metadata
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface b {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final a f71618c = a.f71619a;

        /* compiled from: CommonPurchase.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            static final /* synthetic */ a f71619a = new a();

            /* renamed from: b  reason: collision with root package name */
            private static int f71620b = 1;

            /* renamed from: c  reason: collision with root package name */
            private static int f71621c = 2;

            private a() {
            }

            public final int a() {
                return f71620b;
            }
        }
    }

    public f() {
        this.f71606a = CollectionsKt.n();
        this.f71607b = "";
        this.f71608c = "";
        this.f71611f = "";
        this.f71614i = "";
        this.f71616k = "";
    }

    @Nullable
    public final c a() {
        return this.f71617l;
    }

    @Nullable
    public final String b() {
        return this.f71609d;
    }

    @NotNull
    public final String c() {
        return this.f71607b;
    }

    @NotNull
    public final List<String> d() {
        return this.f71606a;
    }

    public final int e() {
        return this.f71612g;
    }

    @NotNull
    public final String f() {
        return this.f71611f;
    }

    @NotNull
    public final String g() {
        return this.f71608c;
    }

    @Nullable
    public final String h() {
        return this.f71610e;
    }

    public final boolean i() {
        return this.f71613h;
    }

    public final void j(@Nullable c cVar) {
        this.f71617l = cVar;
    }

    public final void k(boolean z10) {
        this.f71613h = z10;
    }

    public final void l(@Nullable String str) {
        this.f71609d = str;
    }

    public final void m(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f71607b = str;
    }

    public final void n(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f71614i = str;
    }

    public final void o(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f71606a = list;
    }

    public final void p(int i10) {
        this.f71612g = i10;
    }

    public final void q(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f71616k = str;
    }

    public final void r(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f71611f = str;
    }

    public final void s(int i10) {
        this.f71615j = i10;
    }

    public final void t(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f71608c = str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(@NotNull List<String> products, @NotNull String originalJson, @NotNull String signature, @Nullable String str, @NotNull String subscriptionId, @NotNull String purchaseToken, int i10, boolean z10, @NotNull String packageName, int i11, @NotNull String purchaseTime, @Nullable c cVar) {
        this();
        Intrinsics.checkNotNullParameter(products, "products");
        Intrinsics.checkNotNullParameter(originalJson, "originalJson");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Intrinsics.checkNotNullParameter(subscriptionId, "subscriptionId");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(purchaseTime, "purchaseTime");
        this.f71606a = products;
        this.f71607b = originalJson;
        this.f71608c = signature;
        this.f71609d = str;
        this.f71610e = subscriptionId;
        this.f71611f = purchaseToken;
        this.f71612g = i10;
        this.f71613h = z10;
        this.f71614i = packageName;
        this.f71615j = i11;
        this.f71616k = purchaseTime;
        this.f71617l = cVar;
    }
}
