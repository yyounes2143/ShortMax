package com.startshorts.androidplayer.viewmodel.purchase;

import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.bean.purchase.BlackFridayCoinSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.QueryBlackFridayCoinSkuResult;
import com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.subs.SubsUpdateMode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PurchaseViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49040a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final QueryBlackFridayCoinSkuResult f49041b;

        public a(boolean z10, @Nullable QueryBlackFridayCoinSkuResult queryBlackFridayCoinSkuResult) {
            super(null);
            this.f49040a = z10;
            this.f49041b = queryBlackFridayCoinSkuResult;
        }

        public final boolean a() {
            return this.f49040a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f49040a == aVar.f49040a && Intrinsics.areEqual(this.f49041b, aVar.f49041b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Boolean.hashCode(this.f49040a) * 31;
            QueryBlackFridayCoinSkuResult queryBlackFridayCoinSkuResult = this.f49041b;
            if (queryBlackFridayCoinSkuResult == null) {
                hashCode = 0;
            } else {
                hashCode = queryBlackFridayCoinSkuResult.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "BlackFridayCoinSkuResult(isEmpty=" + this.f49040a + ", result=" + this.f49041b + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.purchase.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0676b extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final CoinSku f49042a;

        public C0676b(@Nullable CoinSku coinSku) {
            super(null);
            this.f49042a = coinSku;
        }

        @Nullable
        public final CoinSku a() {
            return this.f49042a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0676b) && Intrinsics.areEqual(this.f49042a, ((C0676b) obj).f49042a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            CoinSku coinSku = this.f49042a;
            if (coinSku == null) {
                return 0;
            }
            return coinSku.hashCode();
        }

        @NotNull
        public String toString() {
            return "ExpansionSkuResult(sku=" + this.f49042a + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final SubsSku f49043a;

        public c(@Nullable SubsSku subsSku) {
            super(null);
            this.f49043a = subsSku;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f49043a, ((c) obj).f49043a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            SubsSku subsSku = this.f49043a;
            if (subsSku == null) {
                return 0;
            }
            return subsSku.hashCode();
        }

        @NotNull
        public String toString() {
            return "ExpansionSubsSkuResult(sku=" + this.f49043a + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49044a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final QueryNormalCoinSkuResult f49045b;

        public d(boolean z10, @Nullable QueryNormalCoinSkuResult queryNormalCoinSkuResult) {
            super(null);
            this.f49044a = z10;
            this.f49045b = queryNormalCoinSkuResult;
        }

        public final boolean a() {
            return this.f49044a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f49044a == dVar.f49044a && Intrinsics.areEqual(this.f49045b, dVar.f49045b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Boolean.hashCode(this.f49044a) * 31;
            QueryNormalCoinSkuResult queryNormalCoinSkuResult = this.f49045b;
            if (queryNormalCoinSkuResult == null) {
                hashCode = 0;
            } else {
                hashCode = queryNormalCoinSkuResult.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "NormalCoinSkuResult(isEmpty=" + this.f49044a + ", result=" + this.f49045b + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<zc.g> f49046a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull List<zc.g> list) {
            super(null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.f49046a = list;
        }

        @NotNull
        public final List<zc.g> a() {
            return this.f49046a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof e) && Intrinsics.areEqual(this.f49046a, ((e) obj).f49046a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49046a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Products(list=" + this.f49046a + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final SubsSku f49047a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final SubsSku f49048b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final SubsUpdateMode f49049c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull SubsSku clickedSku, @Nullable SubsSku subsSku, @NotNull SubsUpdateMode mode) {
            super(null);
            Intrinsics.checkNotNullParameter(clickedSku, "clickedSku");
            Intrinsics.checkNotNullParameter(mode, "mode");
            this.f49047a = clickedSku;
            this.f49048b = subsSku;
            this.f49049c = mode;
        }

        @NotNull
        public final SubsSku a() {
            return this.f49047a;
        }

        @Nullable
        public final SubsSku b() {
            return this.f49048b;
        }

        @NotNull
        public final SubsUpdateMode c() {
            return this.f49049c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            if (Intrinsics.areEqual(this.f49047a, fVar.f49047a) && Intrinsics.areEqual(this.f49048b, fVar.f49048b) && Intrinsics.areEqual(this.f49049c, fVar.f49049c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f49047a.hashCode() * 31;
            SubsSku subsSku = this.f49048b;
            if (subsSku == null) {
                hashCode = 0;
            } else {
                hashCode = subsSku.hashCode();
            }
            return ((hashCode2 + hashCode) * 31) + this.f49049c.hashCode();
        }

        @NotNull
        public String toString() {
            return "QuerySubsUpdateModeResult(clickedSku=" + this.f49047a + ", inSubscriptionSku=" + this.f49048b + ", mode=" + this.f49049c + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final TTPInfoResult f49050a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull TTPInfoResult ttpInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(ttpInfo, "ttpInfo");
            this.f49050a = ttpInfo;
        }

        @NotNull
        public final TTPInfoResult a() {
            return this.f49050a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof g) && Intrinsics.areEqual(this.f49050a, ((g) obj).f49050a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49050a.hashCode();
        }

        @NotNull
        public String toString() {
            return "QueryTTPInfo(ttpInfo=" + this.f49050a + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<BlackFridayCoinSku> f49051a;

        public h(@Nullable List<BlackFridayCoinSku> list) {
            super(null);
            this.f49051a = list;
        }

        @Nullable
        public final List<BlackFridayCoinSku> a() {
            return this.f49051a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof h) && Intrinsics.areEqual(this.f49051a, ((h) obj).f49051a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<BlackFridayCoinSku> list = this.f49051a;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowBlackFridayCoinSkuList(list=" + this.f49051a + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final CoinSku f49052a;

        public i(@Nullable CoinSku coinSku) {
            super(null);
            this.f49052a = coinSku;
        }

        @Nullable
        public final CoinSku a() {
            return this.f49052a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof i) && Intrinsics.areEqual(this.f49052a, ((i) obj).f49052a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            CoinSku coinSku = this.f49052a;
            if (coinSku == null) {
                return 0;
            }
            return coinSku.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowExpansionSku(sku=" + this.f49052a + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final SubsSku f49053a;

        public j(@Nullable SubsSku subsSku) {
            super(null);
            this.f49053a = subsSku;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof j) && Intrinsics.areEqual(this.f49053a, ((j) obj).f49053a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            SubsSku subsSku = this.f49053a;
            if (subsSku == null) {
                return 0;
            }
            return subsSku.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowExpansionSubsSku(sku=" + this.f49053a + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<CoinSku> f49054a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final CoinSku f49055b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final List<SubsSku> f49056c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final SubsSku f49057d;

        public k(@Nullable List<CoinSku> list, @Nullable CoinSku coinSku, @Nullable List<SubsSku> list2, @Nullable SubsSku subsSku) {
            super(null);
            this.f49054a = list;
            this.f49055b = coinSku;
            this.f49056c = list2;
            this.f49057d = subsSku;
        }

        @Nullable
        public final SubsSku a() {
            return this.f49057d;
        }

        @Nullable
        public final List<CoinSku> b() {
            return this.f49054a;
        }

        @Nullable
        public final List<SubsSku> c() {
            return this.f49056c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            if (Intrinsics.areEqual(this.f49054a, kVar.f49054a) && Intrinsics.areEqual(this.f49055b, kVar.f49055b) && Intrinsics.areEqual(this.f49056c, kVar.f49056c) && Intrinsics.areEqual(this.f49057d, kVar.f49057d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            List<CoinSku> list = this.f49054a;
            int i10 = 0;
            if (list == null) {
                hashCode = 0;
            } else {
                hashCode = list.hashCode();
            }
            int i11 = hashCode * 31;
            CoinSku coinSku = this.f49055b;
            if (coinSku == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = coinSku.hashCode();
            }
            int i12 = (i11 + hashCode2) * 31;
            List<SubsSku> list2 = this.f49056c;
            if (list2 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = list2.hashCode();
            }
            int i13 = (i12 + hashCode3) * 31;
            SubsSku subsSku = this.f49057d;
            if (subsSku != null) {
                i10 = subsSku.hashCode();
            }
            return i13 + i10;
        }

        @NotNull
        public String toString() {
            return "ShowSkuList(coinSkuList=" + this.f49054a + ", mainCoinSku=" + this.f49055b + ", subsSkuList=" + this.f49056c + ", activeSubscribeSku=" + this.f49057d + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
