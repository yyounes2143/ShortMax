package com.startshorts.androidplayer.viewmodel.search;

import com.startshorts.androidplayer.bean.search.EpisodeSearchResult;
import com.startshorts.androidplayer.bean.search.SearchRankingResultV2;
import com.startshorts.androidplayer.bean.search.SearchResult;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class d {

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final SearchRankingResultV2 f49323a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f49324b;

        public a(@Nullable SearchRankingResultV2 searchRankingResultV2, boolean z10) {
            super(null);
            this.f49323a = searchRankingResultV2;
            this.f49324b = z10;
        }

        @Nullable
        public final SearchRankingResultV2 a() {
            return this.f49323a;
        }

        public final boolean b() {
            return this.f49324b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f49323a, aVar.f49323a) && this.f49324b == aVar.f49324b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            SearchRankingResultV2 searchRankingResultV2 = this.f49323a;
            if (searchRankingResultV2 == null) {
                hashCode = 0;
            } else {
                hashCode = searchRankingResultV2.hashCode();
            }
            return (hashCode * 31) + Boolean.hashCode(this.f49324b);
        }

        @NotNull
        public String toString() {
            return "Init(popularAndRanking=" + this.f49323a + ", showHistory=" + this.f49324b + ')';
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49325a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f49326b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final String f49327c;

        /* renamed from: d  reason: collision with root package name */
        private final int f49328d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final SearchRankingResultV2 f49329e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull String keyword, boolean z10, @Nullable String str, int i10, @Nullable SearchRankingResultV2 searchRankingResultV2) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f49325a = keyword;
            this.f49326b = z10;
            this.f49327c = str;
            this.f49328d = i10;
            this.f49329e = searchRankingResultV2;
        }

        @NotNull
        public final String a() {
            return this.f49325a;
        }

        @Nullable
        public final String b() {
            return this.f49327c;
        }

        public final boolean c() {
            return this.f49326b;
        }

        @Nullable
        public final SearchRankingResultV2 d() {
            return this.f49329e;
        }

        public final int e() {
            return this.f49328d;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (Intrinsics.areEqual(this.f49325a, bVar.f49325a) && this.f49326b == bVar.f49326b && Intrinsics.areEqual(this.f49327c, bVar.f49327c) && this.f49328d == bVar.f49328d && Intrinsics.areEqual(this.f49329e, bVar.f49329e)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = ((this.f49325a.hashCode() * 31) + Boolean.hashCode(this.f49326b)) * 31;
            String str = this.f49327c;
            int i10 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode3 = (((hashCode2 + hashCode) * 31) + Integer.hashCode(this.f49328d)) * 31;
            SearchRankingResultV2 searchRankingResultV2 = this.f49329e;
            if (searchRankingResultV2 != null) {
                i10 = searchRankingResultV2.hashCode();
            }
            return hashCode3 + i10;
        }

        @NotNull
        public String toString() {
            return "SearchExactlyFailed(keyword=" + this.f49325a + ", networkError=" + this.f49326b + ", message=" + this.f49327c + ", status=" + this.f49328d + ", popularAndRanking=" + this.f49329e + ')';
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49330a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f49331b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull String keyword, @Nullable String str) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f49330a = keyword;
            this.f49331b = str;
        }

        @NotNull
        public final String a() {
            return this.f49330a;
        }

        @Nullable
        public final String b() {
            return this.f49331b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (Intrinsics.areEqual(this.f49330a, cVar.f49330a) && Intrinsics.areEqual(this.f49331b, cVar.f49331b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.f49330a.hashCode() * 31;
            String str = this.f49331b;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "SearchExactlyMoreFailed(keyword=" + this.f49330a + ", message=" + this.f49331b + ')';
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.search.d$d  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0688d extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49332a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0688d(@NotNull String keyword) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f49332a = keyword;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0688d) && Intrinsics.areEqual(this.f49332a, ((C0688d) obj).f49332a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49332a.hashCode();
        }

        @NotNull
        public String toString() {
            return "SearchExactlyMoreStart(keyword=" + this.f49332a + ')';
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49333a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final SearchResult f49334b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull String keyword, @NotNull SearchResult exactlyList) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            Intrinsics.checkNotNullParameter(exactlyList, "exactlyList");
            this.f49333a = keyword;
            this.f49334b = exactlyList;
        }

        @NotNull
        public final SearchResult a() {
            return this.f49334b;
        }

        @NotNull
        public final String b() {
            return this.f49333a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            if (Intrinsics.areEqual(this.f49333a, eVar.f49333a) && Intrinsics.areEqual(this.f49334b, eVar.f49334b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f49333a.hashCode() * 31) + this.f49334b.hashCode();
        }

        @NotNull
        public String toString() {
            return "SearchExactlyMoreSucceed(keyword=" + this.f49333a + ", exactlyList=" + this.f49334b + ')';
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49335a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull String keyword) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f49335a = keyword;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof f) && Intrinsics.areEqual(this.f49335a, ((f) obj).f49335a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49335a.hashCode();
        }

        @NotNull
        public String toString() {
            return "SearchExactlyStart(keyword=" + this.f49335a + ')';
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49336a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final SearchResult f49337b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull String keyword, @NotNull SearchResult exactlyList) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            Intrinsics.checkNotNullParameter(exactlyList, "exactlyList");
            this.f49336a = keyword;
            this.f49337b = exactlyList;
        }

        @NotNull
        public final SearchResult a() {
            return this.f49337b;
        }

        @NotNull
        public final String b() {
            return this.f49336a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            if (Intrinsics.areEqual(this.f49336a, gVar.f49336a) && Intrinsics.areEqual(this.f49337b, gVar.f49337b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f49336a.hashCode() * 31) + this.f49337b.hashCode();
        }

        @NotNull
        public String toString() {
            return "SearchExactlySucceed(keyword=" + this.f49336a + ", exactlyList=" + this.f49337b + ')';
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends d {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f49338a;

        public h(@Nullable String str) {
            super(null);
            this.f49338a = str;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof h) && Intrinsics.areEqual(this.f49338a, ((h) obj).f49338a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f49338a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @NotNull
        public String toString() {
            return "SearchFuzzyFailed(message=" + this.f49338a + ')';
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f49339a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(@NotNull String keyword) {
            super(null);
            Intrinsics.checkNotNullParameter(keyword, "keyword");
            this.f49339a = keyword;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof i) && Intrinsics.areEqual(this.f49339a, ((i) obj).f49339a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49339a.hashCode();
        }

        @NotNull
        public String toString() {
            return "SearchFuzzyStart(keyword=" + this.f49339a + ')';
        }
    }

    /* compiled from: SearchViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<EpisodeSearchResult> f49340a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(@NotNull List<EpisodeSearchResult> fuzzyList) {
            super(null);
            Intrinsics.checkNotNullParameter(fuzzyList, "fuzzyList");
            this.f49340a = fuzzyList;
        }

        @NotNull
        public final List<EpisodeSearchResult> a() {
            return this.f49340a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof j) && Intrinsics.areEqual(this.f49340a, ((j) obj).f49340a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49340a.hashCode();
        }

        @NotNull
        public String toString() {
            return "SearchFuzzySucceed(fuzzyList=" + this.f49340a + ')';
        }
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private d() {
    }
}
