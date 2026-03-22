package com.startshorts.androidplayer.viewmodel.tag;

import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.tag.TagFilterShortsListResult;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TagFilterViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: TagFilterViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49459a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final ApiErrorState f49460b;

        public a(boolean z10, @Nullable ApiErrorState apiErrorState) {
            super(null);
            this.f49459a = z10;
            this.f49460b = apiErrorState;
        }

        @Nullable
        public final ApiErrorState a() {
            return this.f49460b;
        }

        public final boolean b() {
            return this.f49459a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f49459a == aVar.f49459a && Intrinsics.areEqual(this.f49460b, aVar.f49460b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Boolean.hashCode(this.f49459a) * 31;
            ApiErrorState apiErrorState = this.f49460b;
            if (apiErrorState == null) {
                hashCode = 0;
            } else {
                hashCode = apiErrorState.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "Error(refresh=" + this.f49459a + ", apiErrorState=" + this.f49460b + ')';
        }
    }

    /* compiled from: TagFilterViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.tag.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0695b extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0695b f49461a = new C0695b();

        private C0695b() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof C0695b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 1714602328;
        }

        @NotNull
        public String toString() {
            return "Idle";
        }
    }

    /* compiled from: TagFilterViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f49462a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final TagFilterShortsListResult f49463b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f49464c;

        public c(boolean z10, @Nullable TagFilterShortsListResult tagFilterShortsListResult, boolean z11) {
            super(null);
            this.f49462a = z10;
            this.f49463b = tagFilterShortsListResult;
            this.f49464c = z11;
        }

        public final boolean a() {
            return this.f49462a;
        }

        @Nullable
        public final TagFilterShortsListResult b() {
            return this.f49463b;
        }

        public final boolean c() {
            return this.f49464c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f49462a == cVar.f49462a && Intrinsics.areEqual(this.f49463b, cVar.f49463b) && this.f49464c == cVar.f49464c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = Boolean.hashCode(this.f49462a) * 31;
            TagFilterShortsListResult tagFilterShortsListResult = this.f49463b;
            if (tagFilterShortsListResult == null) {
                hashCode = 0;
            } else {
                hashCode = tagFilterShortsListResult.hashCode();
            }
            return ((hashCode2 + hashCode) * 31) + Boolean.hashCode(this.f49464c);
        }

        @NotNull
        public String toString() {
            return "LoadSucceed(refresh=" + this.f49462a + ", tagFilterShortsListResult=" + this.f49463b + ", isComplete=" + this.f49464c + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
