package com.startshorts.androidplayer.viewmodel.subs;

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
/* compiled from: SubsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.subs.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0692a extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<Object> f49419a;

        public C0692a(@Nullable List<? extends Object> list) {
            super(null);
            this.f49419a = list;
        }

        @Nullable
        public final List<Object> a() {
            return this.f49419a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0692a) && Intrinsics.areEqual(this.f49419a, ((C0692a) obj).f49419a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<Object> list = this.f49419a;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "HandleProductDetailList(list=" + this.f49419a + ')';
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49420a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f49421b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f49422c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final GPayPriceInfo f49423d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final BaseEpisode f49424e;

        /* renamed from: f  reason: collision with root package name */
        private final int f49425f;

        public /* synthetic */ b(String str, String str2, String str3, GPayPriceInfo gPayPriceInfo, BaseEpisode baseEpisode, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, gPayPriceInfo, (i11 & 16) != 0 ? null : baseEpisode, (i11 & 32) != 0 ? 2 : i10);
        }

        @Nullable
        public final BaseEpisode a() {
            return this.f49424e;
        }

        @Nullable
        public final String b() {
            return this.f49421b;
        }

        @NotNull
        public final String c() {
            return this.f49422c;
        }

        @NotNull
        public final GPayPriceInfo d() {
            return this.f49423d;
        }

        @NotNull
        public final String e() {
            return this.f49420a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f49420a, bVar.f49420a) && Intrinsics.areEqual(this.f49421b, bVar.f49421b) && Intrinsics.areEqual(this.f49422c, bVar.f49422c) && Intrinsics.areEqual(this.f49423d, bVar.f49423d) && Intrinsics.areEqual(this.f49424e, bVar.f49424e) && this.f49425f == bVar.f49425f) {
                return true;
            }
            return false;
        }

        public final int f() {
            return this.f49425f;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f49420a.hashCode() * 31;
            String str = this.f49421b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode3 = (((((hashCode2 + hashCode) * 31) + this.f49422c.hashCode()) * 31) + this.f49423d.hashCode()) * 31;
            BaseEpisode baseEpisode = this.f49424e;
            if (baseEpisode != null) {
                i10 = baseEpisode.hashCode();
            }
            return ((hashCode3 + i10) * 31) + Integer.hashCode(this.f49425f);
        }

        @NotNull
        public String toString() {
            return "LogSubsEvent(scene=" + this.f49420a + ", gpOrderId=" + this.f49421b + ", gpSkuId=" + this.f49422c + ", priceInfo=" + this.f49423d + ", episode=" + this.f49424e + ", subsUpdateMode=" + this.f49425f + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull String scene, @Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo, @Nullable BaseEpisode baseEpisode, int i10) {
            super(null);
            Intrinsics.checkNotNullParameter(scene, "scene");
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            this.f49420a = scene;
            this.f49421b = str;
            this.f49422c = gpSkuId;
            this.f49423d = priceInfo;
            this.f49424e = baseEpisode;
            this.f49425f = i10;
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f49426a;

        @NotNull
        public final Context a() {
            return this.f49426a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f49426a, ((c) obj).f49426a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49426a.hashCode();
        }

        @NotNull
        public String toString() {
            return "QueryPrivilegeList2(context=" + this.f49426a + ')';
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f49427a;

        /* renamed from: b  reason: collision with root package name */
        private final int f49428b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull Context context, int i10) {
            super(null);
            Intrinsics.checkNotNullParameter(context, "context");
            this.f49427a = context;
            this.f49428b = i10;
        }

        @NotNull
        public final Context a() {
            return this.f49427a;
        }

        public final int b() {
            return this.f49428b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (Intrinsics.areEqual(this.f49427a, dVar.f49427a) && this.f49428b == dVar.f49428b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f49427a.hashCode() * 31) + Integer.hashCode(this.f49428b);
        }

        @NotNull
        public String toString() {
            return "QueryPrivilegeList(context=" + this.f49427a + ", position=" + this.f49428b + ')';
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final e f49429a = new e();

        private e() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof e)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1643595010;
        }

        @NotNull
        public String toString() {
            return "QueryProducts";
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final BaseEpisode f49430a;

        public f(@Nullable BaseEpisode baseEpisode) {
            super(null);
            this.f49430a = baseEpisode;
        }

        @Nullable
        public final BaseEpisode a() {
            return this.f49430a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof f) && Intrinsics.areEqual(this.f49430a, ((f) obj).f49430a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            BaseEpisode baseEpisode = this.f49430a;
            if (baseEpisode == null) {
                return 0;
            }
            return baseEpisode.hashCode();
        }

        @NotNull
        public String toString() {
            return "QuerySkuList(episode=" + this.f49430a + ')';
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Context f49431a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final SubsSku f49432b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final SubsSku f49433c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@Nullable Context context, @NotNull SubsSku clickedSku, @Nullable SubsSku subsSku) {
            super(null);
            Intrinsics.checkNotNullParameter(clickedSku, "clickedSku");
            this.f49431a = context;
            this.f49432b = clickedSku;
            this.f49433c = subsSku;
        }

        @NotNull
        public final SubsSku a() {
            return this.f49432b;
        }

        @Nullable
        public final Context b() {
            return this.f49431a;
        }

        @Nullable
        public final SubsSku c() {
            return this.f49433c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (Intrinsics.areEqual(this.f49431a, gVar.f49431a) && Intrinsics.areEqual(this.f49432b, gVar.f49432b) && Intrinsics.areEqual(this.f49433c, gVar.f49433c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Context context = this.f49431a;
            int i10 = 0;
            if (context == null) {
                hashCode = 0;
            } else {
                hashCode = context.hashCode();
            }
            int hashCode2 = ((hashCode * 31) + this.f49432b.hashCode()) * 31;
            SubsSku subsSku = this.f49433c;
            if (subsSku != null) {
                i10 = subsSku.hashCode();
            }
            return hashCode2 + i10;
        }

        @NotNull
        public String toString() {
            return "QuerySubsUpdateMode(context=" + this.f49431a + ", clickedSku=" + this.f49432b + ", inSubscriptionSku=" + this.f49433c + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
