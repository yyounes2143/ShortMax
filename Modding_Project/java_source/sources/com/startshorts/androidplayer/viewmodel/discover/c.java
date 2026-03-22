package com.startshorts.androidplayer.viewmodel.discover;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverMoreCategoryFilterViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class c {

    /* compiled from: DiscoverMoreCategoryFilterViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f48512a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f48513b;

        /* renamed from: c  reason: collision with root package name */
        private final int f48514c;

        /* renamed from: d  reason: collision with root package name */
        private final int f48515d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final String f48516e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private final Integer f48517f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull String bannerId, @Nullable String str, int i10, int i11, @NotNull String from, @Nullable Integer num) {
            super(null);
            Intrinsics.checkNotNullParameter(bannerId, "bannerId");
            Intrinsics.checkNotNullParameter(from, "from");
            this.f48512a = bannerId;
            this.f48513b = str;
            this.f48514c = i10;
            this.f48515d = i11;
            this.f48516e = from;
            this.f48517f = num;
        }

        @NotNull
        public final String a() {
            return this.f48512a;
        }

        @Nullable
        public final String b() {
            return this.f48513b;
        }

        @NotNull
        public final String c() {
            return this.f48516e;
        }

        public final int d() {
            return this.f48514c;
        }

        public final int e() {
            return this.f48515d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f48512a, aVar.f48512a) && Intrinsics.areEqual(this.f48513b, aVar.f48513b) && this.f48514c == aVar.f48514c && this.f48515d == aVar.f48515d && Intrinsics.areEqual(this.f48516e, aVar.f48516e) && Intrinsics.areEqual(this.f48517f, aVar.f48517f)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Integer f() {
            return this.f48517f;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f48512a.hashCode() * 31;
            String str = this.f48513b;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode3 = (((((((hashCode2 + hashCode) * 31) + Integer.hashCode(this.f48514c)) * 31) + Integer.hashCode(this.f48515d)) * 31) + this.f48516e.hashCode()) * 31;
            Integer num = this.f48517f;
            if (num != null) {
                i10 = num.hashCode();
            }
            return hashCode3 + i10;
        }

        @NotNull
        public String toString() {
            return "QueryCategoryEpisode(bannerId=" + this.f48512a + ", categoryId=" + this.f48513b + ", pageNumber=" + this.f48514c + ", pageSize=" + this.f48515d + ", from=" + this.f48516e + ", recommendId=" + this.f48517f + ')';
        }
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private c() {
    }
}
