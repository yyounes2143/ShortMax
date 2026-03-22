package com.startshorts.androidplayer.viewmodel.billing;

import android.content.Context;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentSkuResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BillingViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f48352a = new b(null);

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.billing.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0653a extends a {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Context f48353b;

        public C0653a() {
            this(null, 1, null);
        }

        @Nullable
        public final Context a() {
            return this.f48353b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0653a) && Intrinsics.areEqual(this.f48353b, ((C0653a) obj).f48353b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            Context context = this.f48353b;
            if (context == null) {
                return 0;
            }
            return context.hashCode();
        }

        @NotNull
        public String toString() {
            return "ActivityResumeProcess(context=" + this.f48353b + ')';
        }

        public C0653a(@Nullable Context context) {
            super(null);
            this.f48353b = context;
        }

        public /* synthetic */ C0653a(Context context, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : context);
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48354b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull String scene) {
            super(null);
            Intrinsics.checkNotNullParameter(scene, "scene");
            this.f48354b = scene;
        }

        @NotNull
        public final String a() {
            return this.f48354b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f48354b, ((c) obj).f48354b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48354b.hashCode();
        }

        @NotNull
        public String toString() {
            return "Connect(scene=" + this.f48354b + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Context f48355b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f48356c;

        /* renamed from: d  reason: collision with root package name */
        private final int f48357d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final String f48358e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private final String f48359f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private final String f48360g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private final String f48361h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private final String f48362i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private final String f48363j;

        public /* synthetic */ d(Context context, String str, int i10, String str2, String str3, String str4, String str5, String str6, String str7, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, (i11 & 2) != 0 ? null : str, i10, str2, str3, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : str5, (i11 & 128) != 0 ? null : str6, (i11 & 256) != 0 ? null : str7);
        }

        public final int a() {
            return this.f48357d;
        }

        @NotNull
        public final Context b() {
            return this.f48355b;
        }

        @Nullable
        public final String c() {
            return this.f48363j;
        }

        @Nullable
        public final String d() {
            return this.f48356c;
        }

        @Nullable
        public final String e() {
            return this.f48362i;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (Intrinsics.areEqual(this.f48355b, dVar.f48355b) && Intrinsics.areEqual(this.f48356c, dVar.f48356c) && this.f48357d == dVar.f48357d && Intrinsics.areEqual(this.f48358e, dVar.f48358e) && Intrinsics.areEqual(this.f48359f, dVar.f48359f) && Intrinsics.areEqual(this.f48360g, dVar.f48360g) && Intrinsics.areEqual(this.f48361h, dVar.f48361h) && Intrinsics.areEqual(this.f48362i, dVar.f48362i) && Intrinsics.areEqual(this.f48363j, dVar.f48363j)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String f() {
            return this.f48359f;
        }

        @Nullable
        public final String g() {
            return this.f48361h;
        }

        @Nullable
        public final String h() {
            return this.f48358e;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            int hashCode6;
            int hashCode7 = this.f48355b.hashCode() * 31;
            String str = this.f48356c;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode8 = (((hashCode7 + hashCode) * 31) + Integer.hashCode(this.f48357d)) * 31;
            String str2 = this.f48358e;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int i11 = (hashCode8 + hashCode2) * 31;
            String str3 = this.f48359f;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int i12 = (i11 + hashCode3) * 31;
            String str4 = this.f48360g;
            if (str4 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str4.hashCode();
            }
            int i13 = (i12 + hashCode4) * 31;
            String str5 = this.f48361h;
            if (str5 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str5.hashCode();
            }
            int i14 = (i13 + hashCode5) * 31;
            String str6 = this.f48362i;
            if (str6 == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = str6.hashCode();
            }
            int i15 = (i14 + hashCode6) * 31;
            String str7 = this.f48363j;
            if (str7 != null) {
                i10 = str7.hashCode();
            }
            return i15 + i10;
        }

        @Nullable
        public final String i() {
            return this.f48360g;
        }

        @NotNull
        public String toString() {
            return "CreateOtherOrder(context=" + this.f48355b + ", currencyUnit=" + this.f48356c + ", businessType=" + this.f48357d + ", skuId=" + this.f48358e + ", productId=" + this.f48359f + ", skuModuleConfigId=" + this.f48360g + ", shortPlayId=" + this.f48361h + ", episode=" + this.f48362i + ", countryCode=" + this.f48363j + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull Context context, @Nullable String str, int i10, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
            super(null);
            Intrinsics.checkNotNullParameter(context, "context");
            this.f48355b = context;
            this.f48356c = str;
            this.f48357d = i10;
            this.f48358e = str2;
            this.f48359f = str3;
            this.f48360g = str4;
            this.f48361h = str5;
            this.f48362i = str6;
            this.f48363j = str7;
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48364b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final BaseActivity f48365c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final CoinSku f48366d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final BaseEpisode f48367e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f48368f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private final String f48369g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private final String f48370h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private final String f48371i;

        public /* synthetic */ e(String str, BaseActivity baseActivity, CoinSku coinSku, BaseEpisode baseEpisode, boolean z10, String str2, String str3, String str4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, baseActivity, coinSku, (i10 & 8) != 0 ? null : baseEpisode, (i10 & 16) != 0 ? true : z10, (i10 & 32) != 0 ? null : str2, (i10 & 64) != 0 ? null : str3, (i10 & 128) != 0 ? null : str4);
        }

        @Nullable
        public final BaseActivity a() {
            return this.f48365c;
        }

        @Nullable
        public final String b() {
            return this.f48371i;
        }

        @Nullable
        public final BaseEpisode c() {
            return this.f48367e;
        }

        @NotNull
        public final String d() {
            return this.f48364b;
        }

        @Nullable
        public final String e() {
            return this.f48370h;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (Intrinsics.areEqual(this.f48364b, eVar.f48364b) && Intrinsics.areEqual(this.f48365c, eVar.f48365c) && Intrinsics.areEqual(this.f48366d, eVar.f48366d) && Intrinsics.areEqual(this.f48367e, eVar.f48367e) && this.f48368f == eVar.f48368f && Intrinsics.areEqual(this.f48369g, eVar.f48369g) && Intrinsics.areEqual(this.f48370h, eVar.f48370h) && Intrinsics.areEqual(this.f48371i, eVar.f48371i)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String f() {
            return this.f48369g;
        }

        @NotNull
        public final CoinSku g() {
            return this.f48366d;
        }

        public final boolean h() {
            return this.f48368f;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5 = this.f48364b.hashCode() * 31;
            BaseActivity baseActivity = this.f48365c;
            int i10 = 0;
            if (baseActivity == null) {
                hashCode = 0;
            } else {
                hashCode = baseActivity.hashCode();
            }
            int hashCode6 = (((hashCode5 + hashCode) * 31) + this.f48366d.hashCode()) * 31;
            BaseEpisode baseEpisode = this.f48367e;
            if (baseEpisode == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = baseEpisode.hashCode();
            }
            int hashCode7 = (((hashCode6 + hashCode2) * 31) + Boolean.hashCode(this.f48368f)) * 31;
            String str = this.f48369g;
            if (str == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str.hashCode();
            }
            int i11 = (hashCode7 + hashCode3) * 31;
            String str2 = this.f48370h;
            if (str2 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str2.hashCode();
            }
            int i12 = (i11 + hashCode4) * 31;
            String str3 = this.f48371i;
            if (str3 != null) {
                i10 = str3.hashCode();
            }
            return i12 + i10;
        }

        @NotNull
        public String toString() {
            return "Purchase(eventScene=" + this.f48364b + ", activity=" + this.f48365c + ", sku=" + this.f48366d + ", episode=" + this.f48367e + ", isLogEventOrderClick=" + this.f48368f + ", secondFrom=" + this.f48369g + ", from=" + this.f48370h + ", adPurchaseScene=" + this.f48371i + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull String eventScene, @Nullable BaseActivity baseActivity, @NotNull CoinSku sku, @Nullable BaseEpisode baseEpisode, boolean z10, @Nullable String str, @Nullable String str2, @Nullable String str3) {
            super(null);
            Intrinsics.checkNotNullParameter(eventScene, "eventScene");
            Intrinsics.checkNotNullParameter(sku, "sku");
            this.f48364b = eventScene;
            this.f48365c = baseActivity;
            this.f48366d = sku;
            this.f48367e = baseEpisode;
            this.f48368f = z10;
            this.f48369g = str;
            this.f48370h = str2;
            this.f48371i = str3;
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48372b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull String eventScene) {
            super(null);
            Intrinsics.checkNotNullParameter(eventScene, "eventScene");
            this.f48372b = eventScene;
        }

        @NotNull
        public final String a() {
            return this.f48372b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof f) && Intrinsics.areEqual(this.f48372b, ((f) obj).f48372b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48372b.hashCode();
        }

        @NotNull
        public String toString() {
            return "QueryNotAcknowledgedPurchases(eventScene=" + this.f48372b + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48373b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull String eventScene) {
            super(null);
            Intrinsics.checkNotNullParameter(eventScene, "eventScene");
            this.f48373b = eventScene;
        }

        @NotNull
        public final String a() {
            return this.f48373b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof g) && Intrinsics.areEqual(this.f48373b, ((g) obj).f48373b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48373b.hashCode();
        }

        @NotNull
        public String toString() {
            return "QueryNotAcknowledgedSubs(eventScene=" + this.f48373b + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final List<zc.g> f48374b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(@NotNull List<zc.g> list) {
            super(null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.f48374b = list;
        }

        @NotNull
        public final List<zc.g> a() {
            return this.f48374b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof h) && Intrinsics.areEqual(this.f48374b, ((h) obj).f48374b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48374b.hashCode();
        }

        @NotNull
        public String toString() {
            return "QueryProductDetailList(list=" + this.f48374b + ')';
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends a {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f48375b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Integer f48376c;

        public i() {
            this(null, null, 3, null);
        }

        @Nullable
        public final String a() {
            return this.f48375b;
        }

        @Nullable
        public final Integer b() {
            return this.f48376c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            if (Intrinsics.areEqual(this.f48375b, iVar.f48375b) && Intrinsics.areEqual(this.f48376c, iVar.f48376c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f48375b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i11 = hashCode * 31;
            Integer num = this.f48376c;
            if (num != null) {
                i10 = num.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "QueryTTPInfo(orderNo=" + this.f48375b + ", orderType=" + this.f48376c + ')';
        }

        public i(@Nullable String str, @Nullable Integer num) {
            super(null);
            this.f48375b = str;
            this.f48376c = num;
        }

        public /* synthetic */ i(String str, Integer num, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : num);
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48377b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final BaseActivity f48378c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final SubsSku f48379d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final BaseEpisode f48380e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private final String f48381f;

        /* renamed from: g  reason: collision with root package name */
        private final int f48382g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private final zc.k f48383h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private final String f48384i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private final SubsSku f48385j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private final String f48386k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private final String f48387l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private final String f48388m;

        public /* synthetic */ j(String str, BaseActivity baseActivity, SubsSku subsSku, BaseEpisode baseEpisode, String str2, int i10, zc.k kVar, String str3, SubsSku subsSku2, String str4, String str5, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, baseActivity, subsSku, (i11 & 8) != 0 ? null : baseEpisode, (i11 & 16) != 0 ? null : str2, (i11 & 32) != 0 ? 2 : i10, (i11 & 64) != 0 ? null : kVar, (i11 & 128) != 0 ? null : str3, (i11 & 256) != 0 ? null : subsSku2, (i11 & 512) != 0 ? null : str4, (i11 & 1024) != 0 ? null : str5, (i11 & 2048) != 0 ? null : str6);
        }

        @Nullable
        public final BaseActivity a() {
            return this.f48378c;
        }

        @Nullable
        public final String b() {
            return this.f48388m;
        }

        @Nullable
        public final BaseEpisode c() {
            return this.f48380e;
        }

        @NotNull
        public final String d() {
            return this.f48377b;
        }

        @Nullable
        public final String e() {
            return this.f48386k;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            if (Intrinsics.areEqual(this.f48377b, jVar.f48377b) && Intrinsics.areEqual(this.f48378c, jVar.f48378c) && Intrinsics.areEqual(this.f48379d, jVar.f48379d) && Intrinsics.areEqual(this.f48380e, jVar.f48380e) && Intrinsics.areEqual(this.f48381f, jVar.f48381f) && this.f48382g == jVar.f48382g && Intrinsics.areEqual(this.f48383h, jVar.f48383h) && Intrinsics.areEqual(this.f48384i, jVar.f48384i) && Intrinsics.areEqual(this.f48385j, jVar.f48385j) && Intrinsics.areEqual(this.f48386k, jVar.f48386k) && Intrinsics.areEqual(this.f48387l, jVar.f48387l) && Intrinsics.areEqual(this.f48388m, jVar.f48388m)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final String f() {
            return this.f48381f;
        }

        @Nullable
        public final SubsSku g() {
            return this.f48385j;
        }

        @Nullable
        public final String h() {
            return this.f48384i;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            int hashCode6;
            int hashCode7;
            int hashCode8;
            int hashCode9 = this.f48377b.hashCode() * 31;
            BaseActivity baseActivity = this.f48378c;
            int i10 = 0;
            if (baseActivity == null) {
                hashCode = 0;
            } else {
                hashCode = baseActivity.hashCode();
            }
            int hashCode10 = (((hashCode9 + hashCode) * 31) + this.f48379d.hashCode()) * 31;
            BaseEpisode baseEpisode = this.f48380e;
            if (baseEpisode == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = baseEpisode.hashCode();
            }
            int i11 = (hashCode10 + hashCode2) * 31;
            String str = this.f48381f;
            if (str == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str.hashCode();
            }
            int hashCode11 = (((i11 + hashCode3) * 31) + Integer.hashCode(this.f48382g)) * 31;
            zc.k kVar = this.f48383h;
            if (kVar == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = kVar.hashCode();
            }
            int i12 = (hashCode11 + hashCode4) * 31;
            String str2 = this.f48384i;
            if (str2 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = str2.hashCode();
            }
            int i13 = (i12 + hashCode5) * 31;
            SubsSku subsSku = this.f48385j;
            if (subsSku == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = subsSku.hashCode();
            }
            int i14 = (i13 + hashCode6) * 31;
            String str3 = this.f48386k;
            if (str3 == null) {
                hashCode7 = 0;
            } else {
                hashCode7 = str3.hashCode();
            }
            int i15 = (i14 + hashCode7) * 31;
            String str4 = this.f48387l;
            if (str4 == null) {
                hashCode8 = 0;
            } else {
                hashCode8 = str4.hashCode();
            }
            int i16 = (i15 + hashCode8) * 31;
            String str5 = this.f48388m;
            if (str5 != null) {
                i10 = str5.hashCode();
            }
            return i16 + i10;
        }

        @Nullable
        public final String i() {
            return this.f48387l;
        }

        @NotNull
        public final SubsSku j() {
            return this.f48379d;
        }

        public final int k() {
            return this.f48382g;
        }

        @Nullable
        public final zc.k l() {
            return this.f48383h;
        }

        @NotNull
        public String toString() {
            return "Subs(eventScene=" + this.f48377b + ", activity=" + this.f48378c + ", sku=" + this.f48379d + ", episode=" + this.f48380e + ", obfuscatedAccountId=" + this.f48381f + ", subscriptionUpdateMode=" + this.f48382g + ", subscriptionUpdateParams=" + this.f48383h + ", oldToken=" + this.f48384i + ", oldSku=" + this.f48385j + ", from=" + this.f48386k + ", secondFrom=" + this.f48387l + ", adPurchaseScene=" + this.f48388m + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(@NotNull String eventScene, @Nullable BaseActivity baseActivity, @NotNull SubsSku sku, @Nullable BaseEpisode baseEpisode, @Nullable String str, int i10, @Nullable zc.k kVar, @Nullable String str2, @Nullable SubsSku subsSku, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
            super(null);
            Intrinsics.checkNotNullParameter(eventScene, "eventScene");
            Intrinsics.checkNotNullParameter(sku, "sku");
            this.f48377b = eventScene;
            this.f48378c = baseActivity;
            this.f48379d = sku;
            this.f48380e = baseEpisode;
            this.f48381f = str;
            this.f48382g = i10;
            this.f48383h = kVar;
            this.f48384i = str2;
            this.f48385j = subsSku;
            this.f48386k = str3;
            this.f48387l = str4;
            this.f48388m = str5;
        }
    }

    /* compiled from: BillingViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k extends a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48389b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final ThirdPartyPaymentSkuResult f48390c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final BaseEpisode f48391d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(@NotNull String eventScene, @NotNull ThirdPartyPaymentSkuResult sku, @Nullable BaseEpisode baseEpisode) {
            super(null);
            Intrinsics.checkNotNullParameter(eventScene, "eventScene");
            Intrinsics.checkNotNullParameter(sku, "sku");
            this.f48389b = eventScene;
            this.f48390c = sku;
            this.f48391d = baseEpisode;
        }

        @Nullable
        public final BaseEpisode a() {
            return this.f48391d;
        }

        @NotNull
        public final String b() {
            return this.f48389b;
        }

        @NotNull
        public final ThirdPartyPaymentSkuResult c() {
            return this.f48390c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            if (Intrinsics.areEqual(this.f48389b, kVar.f48389b) && Intrinsics.areEqual(this.f48390c, kVar.f48390c) && Intrinsics.areEqual(this.f48391d, kVar.f48391d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = ((this.f48389b.hashCode() * 31) + this.f48390c.hashCode()) * 31;
            BaseEpisode baseEpisode = this.f48391d;
            if (baseEpisode == null) {
                hashCode = 0;
            } else {
                hashCode = baseEpisode.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "ThirdPartyPayment(eventScene=" + this.f48389b + ", sku=" + this.f48390c + ", episode=" + this.f48391d + ')';
        }

        public /* synthetic */ k(String str, ThirdPartyPaymentSkuResult thirdPartyPaymentSkuResult, BaseEpisode baseEpisode, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, thirdPartyPaymentSkuResult, (i10 & 4) != 0 ? null : baseEpisode);
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
