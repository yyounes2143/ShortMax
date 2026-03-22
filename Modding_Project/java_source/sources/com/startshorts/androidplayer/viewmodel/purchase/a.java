package com.startshorts.androidplayer.viewmodel.purchase;

import android.content.Context;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PurchaseViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0675a f49015a = new C0675a(null);

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.purchase.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0675a {
        public /* synthetic */ C0675a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0675a() {
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final List<Object> f49016b;

        public b(@Nullable List<? extends Object> list) {
            super(null);
            this.f49016b = list;
        }

        @Nullable
        public final List<Object> a() {
            return this.f49016b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f49016b, ((b) obj).f49016b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<Object> list = this.f49016b;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "HandleProductDetailList(list=" + this.f49016b + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f49017b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f49018c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final String f49019d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final GPayPriceInfo f49020e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private final BaseEpisode f49021f;

        /* renamed from: g  reason: collision with root package name */
        private final int f49022g;

        @Nullable
        public final BaseEpisode a() {
            return this.f49021f;
        }

        @Nullable
        public final String b() {
            return this.f49018c;
        }

        @NotNull
        public final String c() {
            return this.f49019d;
        }

        @NotNull
        public final GPayPriceInfo d() {
            return this.f49020e;
        }

        @NotNull
        public final String e() {
            return this.f49017b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (Intrinsics.areEqual(this.f49017b, cVar.f49017b) && Intrinsics.areEqual(this.f49018c, cVar.f49018c) && Intrinsics.areEqual(this.f49019d, cVar.f49019d) && Intrinsics.areEqual(this.f49020e, cVar.f49020e) && Intrinsics.areEqual(this.f49021f, cVar.f49021f) && this.f49022g == cVar.f49022g) {
                return true;
            }
            return false;
        }

        public final int f() {
            return this.f49022g;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f49017b.hashCode() * 31;
            String str = this.f49018c;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode3 = (((((hashCode2 + hashCode) * 31) + this.f49019d.hashCode()) * 31) + this.f49020e.hashCode()) * 31;
            BaseEpisode baseEpisode = this.f49021f;
            if (baseEpisode != null) {
                i10 = baseEpisode.hashCode();
            }
            return ((hashCode3 + i10) * 31) + Integer.hashCode(this.f49022g);
        }

        @NotNull
        public String toString() {
            return "LogExpandSubsEvent(scene=" + this.f49017b + ", gpOrderId=" + this.f49018c + ", gpSkuId=" + this.f49019d + ", priceInfo=" + this.f49020e + ", episode=" + this.f49021f + ", subsUpdateMode=" + this.f49022g + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends a {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f49023b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f49024c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final GPayPriceInfo f49025d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final BaseEpisode f49026e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo, @Nullable BaseEpisode baseEpisode) {
            super(null);
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            this.f49023b = str;
            this.f49024c = gpSkuId;
            this.f49025d = priceInfo;
            this.f49026e = baseEpisode;
        }

        @Nullable
        public final BaseEpisode a() {
            return this.f49026e;
        }

        @Nullable
        public final String b() {
            return this.f49023b;
        }

        @NotNull
        public final String c() {
            return this.f49024c;
        }

        @NotNull
        public final GPayPriceInfo d() {
            return this.f49025d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (Intrinsics.areEqual(this.f49023b, dVar.f49023b) && Intrinsics.areEqual(this.f49024c, dVar.f49024c) && Intrinsics.areEqual(this.f49025d, dVar.f49025d) && Intrinsics.areEqual(this.f49026e, dVar.f49026e)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f49023b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode2 = ((((hashCode * 31) + this.f49024c.hashCode()) * 31) + this.f49025d.hashCode()) * 31;
            BaseEpisode baseEpisode = this.f49026e;
            if (baseEpisode != null) {
                i10 = baseEpisode.hashCode();
            }
            return hashCode2 + i10;
        }

        @NotNull
        public String toString() {
            return "LogPurchaseEvent(gpOrderId=" + this.f49023b + ", gpSkuId=" + this.f49024c + ", priceInfo=" + this.f49025d + ", episode=" + this.f49026e + ')';
        }

        public /* synthetic */ d(String str, String str2, GPayPriceInfo gPayPriceInfo, BaseEpisode baseEpisode, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, gPayPriceInfo, (i10 & 8) != 0 ? null : baseEpisode);
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends a {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f49027b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f49028c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final GPayPriceInfo f49029d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final BaseEpisode f49030e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo, @Nullable BaseEpisode baseEpisode) {
            super(null);
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            this.f49027b = str;
            this.f49028c = gpSkuId;
            this.f49029d = priceInfo;
            this.f49030e = baseEpisode;
        }

        @Nullable
        public final String a() {
            return this.f49027b;
        }

        @NotNull
        public final String b() {
            return this.f49028c;
        }

        @NotNull
        public final GPayPriceInfo c() {
            return this.f49029d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (Intrinsics.areEqual(this.f49027b, eVar.f49027b) && Intrinsics.areEqual(this.f49028c, eVar.f49028c) && Intrinsics.areEqual(this.f49029d, eVar.f49029d) && Intrinsics.areEqual(this.f49030e, eVar.f49030e)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f49027b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode2 = ((((hashCode * 31) + this.f49028c.hashCode()) * 31) + this.f49029d.hashCode()) * 31;
            BaseEpisode baseEpisode = this.f49030e;
            if (baseEpisode != null) {
                i10 = baseEpisode.hashCode();
            }
            return hashCode2 + i10;
        }

        @NotNull
        public String toString() {
            return "LogSubsEvent(gpOrderId=" + this.f49027b + ", gpSkuId=" + this.f49028c + ", priceInfo=" + this.f49029d + ", episode=" + this.f49030e + ')';
        }

        public /* synthetic */ e(String str, String str2, GPayPriceInfo gPayPriceInfo, BaseEpisode baseEpisode, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, gPayPriceInfo, (i10 & 8) != 0 ? null : baseEpisode);
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final f f49031b = new f();

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
            return 623294270;
        }

        @NotNull
        public String toString() {
            return "QueryProducts";
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f49032b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f49033c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final BaseEpisode f49034d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull String scene, @Nullable String str, @Nullable BaseEpisode baseEpisode) {
            super(null);
            Intrinsics.checkNotNullParameter(scene, "scene");
            this.f49032b = scene;
            this.f49033c = str;
            this.f49034d = baseEpisode;
        }

        @Nullable
        public final String a() {
            return this.f49033c;
        }

        @Nullable
        public final BaseEpisode b() {
            return this.f49034d;
        }

        @NotNull
        public final String c() {
            return this.f49032b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (Intrinsics.areEqual(this.f49032b, gVar.f49032b) && Intrinsics.areEqual(this.f49033c, gVar.f49033c) && Intrinsics.areEqual(this.f49034d, gVar.f49034d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f49032b.hashCode() * 31;
            String str = this.f49033c;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = (hashCode2 + hashCode) * 31;
            BaseEpisode baseEpisode = this.f49034d;
            if (baseEpisode != null) {
                i10 = baseEpisode.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "QuerySkuList(scene=" + this.f49032b + ", action=" + this.f49033c + ", episode=" + this.f49034d + ')';
        }

        public /* synthetic */ g(String str, String str2, BaseEpisode baseEpisode, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? null : baseEpisode);
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends a {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Context f49035b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final SubsSku f49036c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final SubsSku f49037d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(@Nullable Context context, @NotNull SubsSku clickedSku, @Nullable SubsSku subsSku) {
            super(null);
            Intrinsics.checkNotNullParameter(clickedSku, "clickedSku");
            this.f49035b = context;
            this.f49036c = clickedSku;
            this.f49037d = subsSku;
        }

        @NotNull
        public final SubsSku a() {
            return this.f49036c;
        }

        @Nullable
        public final Context b() {
            return this.f49035b;
        }

        @Nullable
        public final SubsSku c() {
            return this.f49037d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            if (Intrinsics.areEqual(this.f49035b, hVar.f49035b) && Intrinsics.areEqual(this.f49036c, hVar.f49036c) && Intrinsics.areEqual(this.f49037d, hVar.f49037d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f49035b;
            int i10 = 0;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            int hashCode2 = ((hashCode * 31) + this.f49036c.hashCode()) * 31;
            SubsSku subsSku = this.f49037d;
            if (subsSku != null) {
                i10 = subsSku.hashCode();
            }
            return hashCode2 + i10;
        }

        @NotNull
        public String toString() {
            return "QuerySubsUpdateMode(context=" + this.f49035b + ", clickedSku=" + this.f49036c + ", inSubscriptionSku=" + this.f49037d + ')';
        }
    }

    /* compiled from: PurchaseViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends a {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f49038b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Integer f49039c;

        public i() {
            this(null, null, 3, null);
        }

        @Nullable
        public final String a() {
            return this.f49038b;
        }

        @Nullable
        public final Integer b() {
            return this.f49039c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            if (Intrinsics.areEqual(this.f49038b, iVar.f49038b) && Intrinsics.areEqual(this.f49039c, iVar.f49039c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f49038b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = hashCode * 31;
            Integer num = this.f49039c;
            if (num != null) {
                i10 = num.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "QueryTTPInfo(orderNo=" + this.f49038b + ", orderType=" + this.f49039c + ')';
        }

        public i(@Nullable String str, @Nullable Integer num) {
            super(null);
            this.f49038b = str;
            this.f49039c = num;
        }

        public /* synthetic */ i(String str, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : num);
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
