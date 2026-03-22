package com.startshorts.androidplayer.viewmodel.discover;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.DiscoverTabPage;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: DiscoverViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f48505a;

        public a(@Nullable ApiErrorState apiErrorState) {
            super(null);
            this.f48505a = apiErrorState;
        }

        @Nullable
        public final ApiErrorState a() {
            return this.f48505a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48505a, ((a) obj).f48505a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            ApiErrorState apiErrorState = this.f48505a;
            if (apiErrorState == null) {
                return 0;
            }
            return apiErrorState.hashCode();
        }

        @NotNull
        public String toString() {
            return "Error(apiErrorState=" + this.f48505a + ')';
        }
    }

    /* compiled from: DiscoverViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.discover.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0659b extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final DiscoverModule f48506a;

        public C0659b(@Nullable DiscoverModule discoverModule) {
            super(null);
            this.f48506a = discoverModule;
        }

        @Nullable
        public final DiscoverModule a() {
            return this.f48506a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0659b) && Intrinsics.areEqual(this.f48506a, ((C0659b) obj).f48506a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            DiscoverModule discoverModule = this.f48506a;
            if (discoverModule == null) {
                return 0;
            }
            return discoverModule.hashCode();
        }

        @NotNull
        public String toString() {
            return "ModuleLoadPageSucceed(module=" + this.f48506a + ')';
        }
    }

    /* compiled from: DiscoverViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final DiscoverTabPage f48507a;

        public c(@Nullable DiscoverTabPage discoverTabPage) {
            super(null);
            this.f48507a = discoverTabPage;
        }

        @Nullable
        public final DiscoverTabPage a() {
            return this.f48507a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f48507a, ((c) obj).f48507a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            DiscoverTabPage discoverTabPage = this.f48507a;
            if (discoverTabPage == null) {
                return 0;
            }
            return discoverTabPage.hashCode();
        }

        @NotNull
        public String toString() {
            return "ModuleLoadSucceed(discoverTabPage=" + this.f48507a + ')';
        }
    }

    /* compiled from: DiscoverViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<DiscoverModule> f48508a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Function1<DiscoverModule, Boolean> f48509b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public d(@NotNull List<DiscoverModule> modules, @NotNull Function1<? super DiscoverModule, Boolean> moduleFilter) {
            super(null);
            Intrinsics.checkNotNullParameter(modules, "modules");
            Intrinsics.checkNotNullParameter(moduleFilter, "moduleFilter");
            this.f48508a = modules;
            this.f48509b = moduleFilter;
        }

        @NotNull
        public final Function1<DiscoverModule, Boolean> a() {
            return this.f48509b;
        }

        @NotNull
        public final List<DiscoverModule> b() {
            return this.f48508a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (Intrinsics.areEqual(this.f48508a, dVar.f48508a) && Intrinsics.areEqual(this.f48509b, dVar.f48509b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f48508a.hashCode() * 31) + this.f48509b.hashCode();
        }

        @NotNull
        public String toString() {
            return "ModuleRefreshSucceed(modules=" + this.f48508a + ", moduleFilter=" + this.f48509b + ')';
        }
    }

    /* compiled from: DiscoverViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Integer f48510a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final List<DiscoverTab> f48511b;

        public e(@Nullable Integer num, @Nullable List<DiscoverTab> list) {
            super(null);
            this.f48510a = num;
            this.f48511b = list;
        }

        @Nullable
        public final Integer a() {
            return this.f48510a;
        }

        @Nullable
        public final List<DiscoverTab> b() {
            return this.f48511b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (Intrinsics.areEqual(this.f48510a, eVar.f48510a) && Intrinsics.areEqual(this.f48511b, eVar.f48511b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            Integer num = this.f48510a;
            int i10 = 0;
            if (num == null) {
                hashCode = 0;
            } else {
                hashCode = num.hashCode();
            }
            int i11 = hashCode * 31;
            List<DiscoverTab> list = this.f48511b;
            if (list != null) {
                i10 = list.hashCode();
            }
            return i11 + i10;
        }

        @NotNull
        public String toString() {
            return "TabsLoadSucceed(tabId=" + this.f48510a + ", tabs=" + this.f48511b + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
