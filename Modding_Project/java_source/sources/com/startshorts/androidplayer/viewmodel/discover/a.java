package com.startshorts.androidplayer.viewmodel.discover;

import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a {

    /* compiled from: DiscoverViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.discover.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0658a extends a {

        /* renamed from: a  reason: collision with root package name */
        private final int f48495a;

        public C0658a(int i10) {
            super(null);
            this.f48495a = i10;
        }

        public final int a() {
            return this.f48495a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0658a) && this.f48495a == ((C0658a) obj).f48495a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48495a);
        }

        @NotNull
        public String toString() {
            return "LoadModules(tabId=" + this.f48495a + ')';
        }
    }

    /* compiled from: DiscoverViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final DiscoverModule f48496a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48497b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48498c;

        /* renamed from: d  reason: collision with root package name */
        private final int f48499d;

        /* renamed from: e  reason: collision with root package name */
        private final int f48500e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull DiscoverModule discoverModule, @NotNull String from, int i10, int i11, int i12) {
            super(null);
            Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
            Intrinsics.checkNotNullParameter(from, "from");
            this.f48496a = discoverModule;
            this.f48497b = from;
            this.f48498c = i10;
            this.f48499d = i11;
            this.f48500e = i12;
        }

        @NotNull
        public final DiscoverModule a() {
            return this.f48496a;
        }

        public final int b() {
            return this.f48500e;
        }

        @NotNull
        public final String c() {
            return this.f48497b;
        }

        public final int d() {
            return this.f48499d;
        }

        public final int e() {
            return this.f48498c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f48496a, bVar.f48496a) && Intrinsics.areEqual(this.f48497b, bVar.f48497b) && this.f48498c == bVar.f48498c && this.f48499d == bVar.f48499d && this.f48500e == bVar.f48500e) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.f48496a.hashCode() * 31) + this.f48497b.hashCode()) * 31) + Integer.hashCode(this.f48498c)) * 31) + Integer.hashCode(this.f48499d)) * 31) + Integer.hashCode(this.f48500e);
        }

        @NotNull
        public String toString() {
            return "LoadModulesPage(discoverModule=" + this.f48496a + ", from=" + this.f48497b + ", pageSize=" + this.f48498c + ", pageNum=" + this.f48499d + ", firstPageSize=" + this.f48500e + ')';
        }
    }

    /* compiled from: DiscoverViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f48501a = new c();

        private c() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1746197422;
        }

        @NotNull
        public String toString() {
            return "LoadTabs";
        }
    }

    /* compiled from: DiscoverViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final d f48502a = new d();

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
            return -1496425173;
        }

        @NotNull
        public String toString() {
            return "LogAppOpenDay2";
        }
    }

    /* compiled from: DiscoverViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends a {

        /* renamed from: a  reason: collision with root package name */
        private final int f48503a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Function1<DiscoverModule, Boolean> f48504b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public e(int i10, @NotNull Function1<? super DiscoverModule, Boolean> moduleFilter) {
            super(null);
            Intrinsics.checkNotNullParameter(moduleFilter, "moduleFilter");
            this.f48503a = i10;
            this.f48504b = moduleFilter;
        }

        @NotNull
        public final Function1<DiscoverModule, Boolean> a() {
            return this.f48504b;
        }

        public final int b() {
            return this.f48503a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f48503a == eVar.f48503a && Intrinsics.areEqual(this.f48504b, eVar.f48504b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (Integer.hashCode(this.f48503a) * 31) + this.f48504b.hashCode();
        }

        @NotNull
        public String toString() {
            return "RefreshModule(tabId=" + this.f48503a + ", moduleFilter=" + this.f48504b + ')';
        }
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private a() {
    }
}
