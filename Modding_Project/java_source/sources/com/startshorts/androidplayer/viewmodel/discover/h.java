package com.startshorts.androidplayer.viewmodel.discover;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverRankingTabViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class h {

    /* compiled from: DiscoverRankingTabViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends h {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f48528a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull ApiErrorState errorState) {
            super(null);
            Intrinsics.checkNotNullParameter(errorState, "errorState");
            this.f48528a = errorState;
        }

        @NotNull
        public final ApiErrorState a() {
            return this.f48528a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48528a, ((a) obj).f48528a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48528a.hashCode();
        }

        @NotNull
        public String toString() {
            return "InitLoadError(errorState=" + this.f48528a + ')';
        }
    }

    /* compiled from: DiscoverRankingTabViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends h {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final DiscoverModule f48529a;

        public b(@Nullable DiscoverModule discoverModule) {
            super(null);
            this.f48529a = discoverModule;
        }

        @Nullable
        public final DiscoverModule a() {
            return this.f48529a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof b) && Intrinsics.areEqual(this.f48529a, ((b) obj).f48529a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            DiscoverModule discoverModule = this.f48529a;
            if (discoverModule == null) {
                return 0;
            }
            return discoverModule.hashCode();
        }

        @NotNull
        public String toString() {
            return "InitLoadSucceed(module=" + this.f48529a + ')';
        }
    }

    public /* synthetic */ h(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private h() {
    }
}
