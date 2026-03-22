package com.startshorts.androidplayer.viewmodel.discover;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverCategoryShorts;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverMoreCategoryFilterViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class d {

    /* compiled from: DiscoverMoreCategoryFilterViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final ApiErrorState f48518a;

        public a(@Nullable ApiErrorState apiErrorState) {
            super(null);
            this.f48518a = apiErrorState;
        }

        @Nullable
        public final ApiErrorState a() {
            return this.f48518a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48518a, ((a) obj).f48518a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            ApiErrorState apiErrorState = this.f48518a;
            if (apiErrorState == null) {
                return 0;
            }
            return apiErrorState.hashCode();
        }

        @NotNull
        public String toString() {
            return "Error(apiErrorState=" + this.f48518a + ')';
        }
    }

    /* compiled from: DiscoverMoreCategoryFilterViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final b f48519a = new b();

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
            return 1930704198;
        }

        @NotNull
        public String toString() {
            return "Idle";
        }
    }

    /* compiled from: DiscoverMoreCategoryFilterViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f48520a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final List<DiscoverCategoryShorts> f48521b;

        public c(boolean z10, @Nullable List<DiscoverCategoryShorts> list) {
            super(null);
            this.f48520a = z10;
            this.f48521b = list;
        }

        @Nullable
        public final List<DiscoverCategoryShorts> a() {
            return this.f48521b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f48520a == cVar.f48520a && Intrinsics.areEqual(this.f48521b, cVar.f48521b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Boolean.hashCode(this.f48520a) * 31;
            List<DiscoverCategoryShorts> list = this.f48521b;
            if (list == null) {
                hashCode = 0;
            } else {
                hashCode = list.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "ModuleLoadSucceed(refresh=" + this.f48520a + ", discoverCategoryShortsList=" + this.f48521b + ')';
        }
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private d() {
    }
}
