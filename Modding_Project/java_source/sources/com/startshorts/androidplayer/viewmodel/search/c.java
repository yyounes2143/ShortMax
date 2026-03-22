package com.startshorts.androidplayer.viewmodel.search;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class c {

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f49316a = new a();

        private a() {
            super(null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -304715906;
        }

        @NotNull
        public String toString() {
            return "Init";
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49317a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Long f49318b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull String keyword, @Nullable Long l10) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f49317a = keyword;
            this.f49318b = l10;
        }

        @NotNull
        public final String a() {
            return this.f49317a;
        }

        @Nullable
        public final Long b() {
            return this.f49318b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f49317a, bVar.f49317a) && Intrinsics.areEqual(this.f49318b, bVar.f49318b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f49317a.hashCode() * 31;
            Long l10 = this.f49318b;
            if (l10 == null) {
                hashCode = 0;
            } else {
                hashCode = l10.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "SearchExactly(keyword=" + this.f49317a + ", searchDelayTime=" + this.f49318b + ')';
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.search.c$c  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0687c extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49319a;

        /* renamed from: b  reason: collision with root package name */
        private final int f49320b;

        /* renamed from: c  reason: collision with root package name */
        private final int f49321c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0687c(@NotNull String keyword, int i10, int i11) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f49319a = keyword;
            this.f49320b = i10;
            this.f49321c = i11;
        }

        @NotNull
        public final String a() {
            return this.f49319a;
        }

        public final int b() {
            return this.f49320b;
        }

        public final int c() {
            return this.f49321c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0687c)) {
                return false;
            }
            C0687c c0687c = (C0687c) obj;
            if (Intrinsics.areEqual(this.f49319a, c0687c.f49319a) && this.f49320b == c0687c.f49320b && this.f49321c == c0687c.f49321c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f49319a.hashCode() * 31) + Integer.hashCode(this.f49320b)) * 31) + Integer.hashCode(this.f49321c);
        }

        @NotNull
        public String toString() {
            return "SearchExactlyMore(keyword=" + this.f49319a + ", pageNumber=" + this.f49320b + ", pageSize=" + this.f49321c + ')';
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49322a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull String keyword) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f49322a = keyword;
        }

        @NotNull
        public final String a() {
            return this.f49322a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof d) && Intrinsics.areEqual(this.f49322a, ((d) obj).f49322a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49322a.hashCode();
        }

        @NotNull
        public String toString() {
            return "SearchFuzzy(keyword=" + this.f49322a + ')';
        }
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private c() {
    }
}
