package com.startshorts.androidplayer.viewmodel.subs;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.subs.SubsPrivilege;
import com.startshorts.androidplayer.bean.subs.SubsPrivilege2;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.subs.SubsUpdateMode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f49434a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull ApiErrorState state) {
            super(null);
            Intrinsics.checkNotNullParameter(state, "state");
            this.f49434a = state;
        }

        @NotNull
        public final ApiErrorState a() {
            return this.f49434a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f49434a, ((a) obj).f49434a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49434a.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadSkuListFailed(state=" + this.f49434a + ')';
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.subs.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0693b extends b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49435a;

        public C0693b(boolean z10) {
            super(null);
            this.f49435a = z10;
        }

        public final boolean a() {
            return this.f49435a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0693b) && this.f49435a == ((C0693b) obj).f49435a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Boolean.hashCode(this.f49435a);
        }

        @NotNull
        public String toString() {
            return "OnSkuListResult(isEmpty=" + this.f49435a + ')';
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<zc.g> f49436a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull List<zc.g> list) {
            super(null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.f49436a = list;
        }

        @NotNull
        public final List<zc.g> a() {
            return this.f49436a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f49436a, ((c) obj).f49436a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49436a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Products(list=" + this.f49436a + ')';
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final SubsSku f49437a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final SubsSku f49438b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final SubsUpdateMode f49439c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull SubsSku clickedSku, @Nullable SubsSku subsSku, @NotNull SubsUpdateMode mode) {
            super(null);
            Intrinsics.checkNotNullParameter(clickedSku, "clickedSku");
            Intrinsics.checkNotNullParameter(mode, "mode");
            this.f49437a = clickedSku;
            this.f49438b = subsSku;
            this.f49439c = mode;
        }

        @NotNull
        public final SubsSku a() {
            return this.f49437a;
        }

        @Nullable
        public final SubsSku b() {
            return this.f49438b;
        }

        @NotNull
        public final SubsUpdateMode c() {
            return this.f49439c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (Intrinsics.areEqual(this.f49437a, dVar.f49437a) && Intrinsics.areEqual(this.f49438b, dVar.f49438b) && Intrinsics.areEqual(this.f49439c, dVar.f49439c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f49437a.hashCode() * 31;
            SubsSku subsSku = this.f49438b;
            if (subsSku == null) {
                hashCode = 0;
            } else {
                hashCode = subsSku.hashCode();
            }
            return ((hashCode2 + hashCode) * 31) + this.f49439c.hashCode();
        }

        @NotNull
        public String toString() {
            return "QuerySubsUpdateModeResult(clickedSku=" + this.f49437a + ", inSubscriptionSku=" + this.f49438b + ", mode=" + this.f49439c + ')';
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<SubsPrivilege2> f49440a;

        public e(@Nullable List<SubsPrivilege2> list) {
            super(null);
            this.f49440a = list;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof e) && Intrinsics.areEqual(this.f49440a, ((e) obj).f49440a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<SubsPrivilege2> list = this.f49440a;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowPrivilegeList2(list=" + this.f49440a + ')';
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends b {

        /* renamed from: a  reason: collision with root package name */
        private final int f49441a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final List<SubsPrivilege> f49442b;

        public f(int i10, @Nullable List<SubsPrivilege> list) {
            super(null);
            this.f49441a = i10;
            this.f49442b = list;
        }

        @Nullable
        public final List<SubsPrivilege> a() {
            return this.f49442b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            if (this.f49441a == fVar.f49441a && Intrinsics.areEqual(this.f49442b, fVar.f49442b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Integer.hashCode(this.f49441a) * 31;
            List<SubsPrivilege> list = this.f49442b;
            if (list == null) {
                hashCode = 0;
            } else {
                hashCode = list.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "ShowPrivilegeList(pos=" + this.f49441a + ", list=" + this.f49442b + ')';
        }
    }

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<SubsSku> f49443a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final SubsSku f49444b;

        public g(@Nullable List<SubsSku> list, @Nullable SubsSku subsSku) {
            super(null);
            this.f49443a = list;
            this.f49444b = subsSku;
        }

        @Nullable
        public final SubsSku a() {
            return this.f49444b;
        }

        @Nullable
        public final List<SubsSku> b() {
            return this.f49443a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (Intrinsics.areEqual(this.f49443a, gVar.f49443a) && Intrinsics.areEqual(this.f49444b, gVar.f49444b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            List<SubsSku> list = this.f49443a;
            int i10 = 0;
            if (list == null) {
                hashCode = 0;
            } else {
                hashCode = list.hashCode();
            }
            int i11 = hashCode * 31;
            SubsSku subsSku = this.f49444b;
            if (subsSku != null) {
                i10 = subsSku.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "ShowSkuList(list=" + this.f49443a + ", activeSubscribeSku=" + this.f49444b + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
