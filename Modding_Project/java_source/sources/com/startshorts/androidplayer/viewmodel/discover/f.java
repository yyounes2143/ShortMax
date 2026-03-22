package com.startshorts.androidplayer.viewmodel.discover;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverMoreViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class f {

    /* compiled from: DiscoverMoreViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends f {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f48524a;

        public a(@Nullable ApiErrorState apiErrorState) {
            super(null);
            this.f48524a = apiErrorState;
        }

        @Nullable
        public final ApiErrorState a() {
            return this.f48524a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48524a, ((a) obj).f48524a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            ApiErrorState apiErrorState = this.f48524a;
            if (apiErrorState == null) {
                return 0;
            }
            return apiErrorState.hashCode();
        }

        @NotNull
        public String toString() {
            return "Error(apiErrorState=" + this.f48524a + ')';
        }
    }

    /* compiled from: DiscoverMoreViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends f {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f48525a = new b();

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
            return 144627900;
        }

        @NotNull
        public String toString() {
            return "Idle";
        }
    }

    /* compiled from: DiscoverMoreViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends f {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final DiscoverModule f48526a;

        public c(@Nullable DiscoverModule discoverModule) {
            super(null);
            this.f48526a = discoverModule;
        }

        @Nullable
        public final DiscoverModule a() {
            return this.f48526a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f48526a, ((c) obj).f48526a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            DiscoverModule discoverModule = this.f48526a;
            if (discoverModule == null) {
                return 0;
            }
            return discoverModule.hashCode();
        }

        @NotNull
        public String toString() {
            return "ModuleLoadSucceed(module=" + this.f48526a + ')';
        }
    }

    public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private f() {
    }
}
