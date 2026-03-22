package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnlockViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f48752a = new a(null);

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends e {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final b f48753b = new b();

        private b() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 1078928006;
        }

        @NotNull
        public String toString() {
            return "ExpansionSkuExpired";
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends e {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final List<Object> f48754b;

        public c(@Nullable List<? extends Object> list) {
            super(null);
            this.f48754b = list;
        }

        @Nullable
        public final List<Object> a() {
            return this.f48754b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f48754b, ((c) obj).f48754b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<Object> list = this.f48754b;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "HandleProductDetailList(list=" + this.f48754b + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends e {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final BaseEpisode f48755b;

        public d(@Nullable BaseEpisode baseEpisode) {
            super(null);
            this.f48755b = baseEpisode;
        }

        @Nullable
        public final BaseEpisode a() {
            return this.f48755b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof d) && Intrinsics.areEqual(this.f48755b, ((d) obj).f48755b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            BaseEpisode baseEpisode = this.f48755b;
            if (baseEpisode == null) {
                return 0;
            }
            return baseEpisode.hashCode();
        }

        @NotNull
        public String toString() {
            return "Init(episode=" + this.f48755b + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.immersion.e$e  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0664e extends e {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f48756b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f48757c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final GPayPriceInfo f48758d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0664e(@Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            this.f48756b = str;
            this.f48757c = gpSkuId;
            this.f48758d = priceInfo;
        }

        @Nullable
        public final String a() {
            return this.f48756b;
        }

        @NotNull
        public final String b() {
            return this.f48757c;
        }

        @NotNull
        public final GPayPriceInfo c() {
            return this.f48758d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0664e)) {
                return false;
            }
            C0664e c0664e = (C0664e) obj;
            if (Intrinsics.areEqual(this.f48756b, c0664e.f48756b) && Intrinsics.areEqual(this.f48757c, c0664e.f48757c) && Intrinsics.areEqual(this.f48758d, c0664e.f48758d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f48756b;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return (((hashCode * 31) + this.f48757c.hashCode()) * 31) + this.f48758d.hashCode();
        }

        @NotNull
        public String toString() {
            return "LogPurchaseEvent(gpOrderId=" + this.f48756b + ", gpSkuId=" + this.f48757c + ", priceInfo=" + this.f48758d + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends e {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f48759b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f48760c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final GPayPriceInfo f48761d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo) {
            super(null);
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            this.f48759b = str;
            this.f48760c = gpSkuId;
            this.f48761d = priceInfo;
        }

        @Nullable
        public final String a() {
            return this.f48759b;
        }

        @NotNull
        public final String b() {
            return this.f48760c;
        }

        @NotNull
        public final GPayPriceInfo c() {
            return this.f48761d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            if (Intrinsics.areEqual(this.f48759b, fVar.f48759b) && Intrinsics.areEqual(this.f48760c, fVar.f48760c) && Intrinsics.areEqual(this.f48761d, fVar.f48761d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f48759b;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return (((hashCode * 31) + this.f48760c.hashCode()) * 31) + this.f48761d.hashCode();
        }

        @NotNull
        public String toString() {
            return "LogSubsEvent(gpOrderId=" + this.f48759b + ", gpSkuId=" + this.f48760c + ", priceInfo=" + this.f48761d + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends e {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48762b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull String unlockStyle) {
            super(null);
            Intrinsics.checkNotNullParameter(unlockStyle, "unlockStyle");
            this.f48762b = unlockStyle;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof g) && Intrinsics.areEqual(this.f48762b, ((g) obj).f48762b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48762b.hashCode();
        }

        @NotNull
        public String toString() {
            return "PreQueryUnlockMethods(unlockStyle=" + this.f48762b + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends e {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final h f48763b = new h();

        private h() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof h)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -594858325;
        }

        @NotNull
        public String toString() {
            return "QueryProducts";
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends e {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48764b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f48765c;

        /* renamed from: d  reason: collision with root package name */
        private final int f48766d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final String f48767e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private final String f48768f;

        public /* synthetic */ i(String str, String str2, int i10, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i11 & 4) != 0 ? -1 : i10, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : str4);
        }

        @Nullable
        public final String a() {
            return this.f48765c;
        }

        @Nullable
        public final String b() {
            return this.f48767e;
        }

        @NotNull
        public final String c() {
            return this.f48764b;
        }

        @Nullable
        public final String d() {
            return this.f48768f;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            if (Intrinsics.areEqual(this.f48764b, iVar.f48764b) && Intrinsics.areEqual(this.f48765c, iVar.f48765c) && this.f48766d == iVar.f48766d && Intrinsics.areEqual(this.f48767e, iVar.f48767e) && Intrinsics.areEqual(this.f48768f, iVar.f48768f)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3 = this.f48764b.hashCode() * 31;
            String str = this.f48765c;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode4 = (((hashCode3 + hashCode) * 31) + Integer.hashCode(this.f48766d)) * 31;
            String str2 = this.f48767e;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i11 = (hashCode4 + hashCode2) * 31;
            String str3 = this.f48768f;
            if (str3 != null) {
                i10 = str3.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "QueryUnlockMethods(scene=" + this.f48764b + ", action=" + this.f48765c + ", unlockingEpisodes=" + this.f48766d + ", from=" + this.f48767e + ", secondFrom=" + this.f48768f + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(@NotNull String scene, @Nullable String str, int i10, @Nullable String str2, @Nullable String str3) {
            super(null);
            Intrinsics.checkNotNullParameter(scene, "scene");
            this.f48764b = scene;
            this.f48765c = str;
            this.f48766d = i10;
            this.f48767e = str2;
            this.f48768f = str3;
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends e {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Context f48769b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f48770c;

        public j(@Nullable Context context, @Nullable String str) {
            super(null);
            this.f48769b = context;
            this.f48770c = str;
        }

        @Nullable
        public final String a() {
            return this.f48770c;
        }

        @Nullable
        public final Context b() {
            return this.f48769b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            if (Intrinsics.areEqual(this.f48769b, jVar.f48769b) && Intrinsics.areEqual(this.f48770c, jVar.f48770c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f48769b;
            int i10 = 0;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            int i11 = hashCode * 31;
            String str = this.f48770c;
            if (str != null) {
                i10 = str.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "QueryWatchAdResult(context=" + this.f48769b + ", action=" + this.f48770c + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k extends e {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48771b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(@NotNull String unlockStyle) {
            super(null);
            Intrinsics.checkNotNullParameter(unlockStyle, "unlockStyle");
            this.f48771b = unlockStyle;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof k) && Intrinsics.areEqual(this.f48771b, ((k) obj).f48771b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48771b.hashCode();
        }

        @NotNull
        public String toString() {
            return "SaleSkuQueryUnlockMethods(unlockStyle=" + this.f48771b + ')';
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class l extends e {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Context f48772b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f48773c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final String f48774d;

        public /* synthetic */ l(Context context, boolean z10, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : context, z10, (i10 & 4) != 0 ? null : str);
        }

        public final boolean a() {
            return this.f48773c;
        }

        @Nullable
        public final Context b() {
            return this.f48772b;
        }

        @Nullable
        public final String c() {
            return this.f48774d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            if (Intrinsics.areEqual(this.f48772b, lVar.f48772b) && this.f48773c == lVar.f48773c && Intrinsics.areEqual(this.f48774d, lVar.f48774d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f48772b;
            int i10 = 0;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            int hashCode2 = ((hashCode * 31) + Boolean.hashCode(this.f48773c)) * 31;
            String str = this.f48774d;
            if (str != null) {
                i10 = str.hashCode();
            }
            return hashCode2 + i10;
        }

        @NotNull
        public String toString() {
            return "SingleUnlockEpisodeByAd(context=" + this.f48772b + ", autoUnlockOtherEpisodes=" + this.f48773c + ", scene=" + this.f48774d + ')';
        }

        public l(@Nullable Context context, boolean z10, @Nullable String str) {
            super(null);
            this.f48772b = context;
            this.f48773c = z10;
            this.f48774d = str;
        }
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class n extends e {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Context f48779b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final ShortDiscountSku f48780c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final String f48781d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private String f48782e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(@Nullable Context context, @NotNull ShortDiscountSku coinSku, @Nullable String str, @Nullable String str2) {
            super(null);
            Intrinsics.checkNotNullParameter(coinSku, "coinSku");
            this.f48779b = context;
            this.f48780c = coinSku;
            this.f48781d = str;
            this.f48782e = str2;
        }

        @NotNull
        public final ShortDiscountSku a() {
            return this.f48780c;
        }

        @Nullable
        public final Context b() {
            return this.f48779b;
        }

        @Nullable
        public final String c() {
            return this.f48781d;
        }

        @Nullable
        public final String d() {
            return this.f48782e;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof n)) {
                return false;
            }
            n nVar = (n) obj;
            if (Intrinsics.areEqual(this.f48779b, nVar.f48779b) && Intrinsics.areEqual(this.f48780c, nVar.f48780c) && Intrinsics.areEqual(this.f48781d, nVar.f48781d) && Intrinsics.areEqual(this.f48782e, nVar.f48782e)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            Context context = this.f48779b;
            int i10 = 0;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            int hashCode3 = ((hashCode * 31) + this.f48780c.hashCode()) * 31;
            String str = this.f48781d;
            if (str == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str.hashCode();
            }
            int i11 = (hashCode3 + hashCode2) * 31;
            String str2 = this.f48782e;
            if (str2 != null) {
                i10 = str2.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "UnlockEpisodeByDiscount(context=" + this.f48779b + ", coinSku=" + this.f48780c + ", orderNumber=" + this.f48781d + ", purchaseToken=" + this.f48782e + ')';
        }
    }

    public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class m extends e {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Context f48775b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f48776c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f48777d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final String f48778e;

        public /* synthetic */ m(Context context, boolean z10, boolean z11, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : context, z10, z11, (i10 & 8) != 0 ? "" : str);
        }

        @NotNull
        public final String a() {
            return this.f48778e;
        }

        public final boolean b() {
            return this.f48776c;
        }

        @Nullable
        public final Context c() {
            return this.f48775b;
        }

        public final boolean d() {
            return this.f48777d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof m)) {
                return false;
            }
            m mVar = (m) obj;
            if (Intrinsics.areEqual(this.f48775b, mVar.f48775b) && this.f48776c == mVar.f48776c && this.f48777d == mVar.f48777d && Intrinsics.areEqual(this.f48778e, mVar.f48778e)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f48775b;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            return (((((hashCode * 31) + Boolean.hashCode(this.f48776c)) * 31) + Boolean.hashCode(this.f48777d)) * 31) + this.f48778e.hashCode();
        }

        @NotNull
        public String toString() {
            return "SingleUnlockEpisodeByCoins(context=" + this.f48775b + ", autoUnlockOtherEpisodes=" + this.f48776c + ", recharged=" + this.f48777d + ", action=" + this.f48778e + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(@Nullable Context context, boolean z10, boolean z11, @NotNull String action) {
            super(null);
            Intrinsics.checkNotNullParameter(action, "action");
            this.f48775b = context;
            this.f48776c = z10;
            this.f48777d = z11;
            this.f48778e = action;
        }
    }

    private e() {
    }
}
