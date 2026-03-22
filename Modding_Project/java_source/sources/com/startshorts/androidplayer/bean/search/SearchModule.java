package com.startshorts.androidplayer.bean.search;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchModule.kt */
@Metadata
/* loaded from: classes6.dex */
public abstract class SearchModule {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int STYLE_EMPTY_SPACE = 12;
    public static final int STYLE_SEARCH_ACT_BANNER = 10;
    public static final int STYLE_SEARCH_BOTTOM_PADDING = 9;
    public static final int STYLE_SEARCH_EXACTLY = 4;
    public static final int STYLE_SEARCH_FUZZY = 3;
    public static final int STYLE_SEARCH_HISTORY = 1;
    public static final int STYLE_SEARCH_NO_MORE_RESULT = 7;
    public static final int STYLE_SEARCH_NO_NETWORK = 8;
    public static final int STYLE_SEARCH_NO_RESULT = 6;
    public static final int STYLE_SEARCH_POPULAR = 2;
    public static final int STYLE_SEARCH_POPULAR_TITLE = 5;
    public static final int STYLE_YOUR_MIGHT_LIKE = 13;
    private int bottomMargin;
    private int topMargin;
    private final int viewType;

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class ActBannerModule extends SearchModule {
        @NotNull
        public static final ActBannerModule INSTANCE = new ActBannerModule();

        private ActBannerModule() {
            super(10, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof ActBannerModule)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1289659688;
        }

        @NotNull
        public String toString() {
            return "ActBannerModule";
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class BottomPaddingModule extends SearchModule {
        @NotNull
        public static final BottomPaddingModule INSTANCE = new BottomPaddingModule();

        private BottomPaddingModule() {
            super(9, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof BottomPaddingModule)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1907465504;
        }

        @NotNull
        public String toString() {
            return "BottomPaddingModule";
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class EmptyModule extends SearchModule {
        @NotNull
        public static final EmptyModule INSTANCE = new EmptyModule();

        private EmptyModule() {
            super(12, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof EmptyModule)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 1325820295;
        }

        @NotNull
        public String toString() {
            return "EmptyModule";
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class ExactlyEpisodeModule extends SearchModule {
        @NotNull
        private final EpisodeSearchResult info;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ExactlyEpisodeModule(@NotNull EpisodeSearchResult info) {
            super(4, null);
            Intrinsics.checkNotNullParameter(info, "info");
            this.info = info;
        }

        public static /* synthetic */ ExactlyEpisodeModule copy$default(ExactlyEpisodeModule exactlyEpisodeModule, EpisodeSearchResult episodeSearchResult, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                episodeSearchResult = exactlyEpisodeModule.info;
            }
            return exactlyEpisodeModule.copy(episodeSearchResult);
        }

        @NotNull
        public final EpisodeSearchResult component1() {
            return this.info;
        }

        @NotNull
        public final ExactlyEpisodeModule copy(@NotNull EpisodeSearchResult info) {
            Intrinsics.checkNotNullParameter(info, "info");
            return new ExactlyEpisodeModule(info);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof ExactlyEpisodeModule) && Intrinsics.areEqual(this.info, ((ExactlyEpisodeModule) obj).info)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final EpisodeSearchResult getInfo() {
            return this.info;
        }

        public int hashCode() {
            return this.info.hashCode();
        }

        @NotNull
        public String toString() {
            return "ExactlyEpisodeModule(info=" + this.info + ')';
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class FuzzyEpisodeModule extends SearchModule {
        @NotNull
        private final EpisodeSearchResult info;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FuzzyEpisodeModule(@NotNull EpisodeSearchResult info) {
            super(3, null);
            Intrinsics.checkNotNullParameter(info, "info");
            this.info = info;
        }

        public static /* synthetic */ FuzzyEpisodeModule copy$default(FuzzyEpisodeModule fuzzyEpisodeModule, EpisodeSearchResult episodeSearchResult, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                episodeSearchResult = fuzzyEpisodeModule.info;
            }
            return fuzzyEpisodeModule.copy(episodeSearchResult);
        }

        @NotNull
        public final EpisodeSearchResult component1() {
            return this.info;
        }

        @NotNull
        public final FuzzyEpisodeModule copy(@NotNull EpisodeSearchResult info) {
            Intrinsics.checkNotNullParameter(info, "info");
            return new FuzzyEpisodeModule(info);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof FuzzyEpisodeModule) && Intrinsics.areEqual(this.info, ((FuzzyEpisodeModule) obj).info)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final EpisodeSearchResult getInfo() {
            return this.info;
        }

        public int hashCode() {
            return this.info.hashCode();
        }

        @NotNull
        public String toString() {
            return "FuzzyEpisodeModule(info=" + this.info + ')';
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class NetworkErrorModule extends SearchModule {
        @NotNull
        public static final NetworkErrorModule INSTANCE = new NetworkErrorModule();

        private NetworkErrorModule() {
            super(8, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof NetworkErrorModule)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 1016769624;
        }

        @NotNull
        public String toString() {
            return "NetworkErrorModule";
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class NoMoreResultModule extends SearchModule {
        @NotNull
        public static final NoMoreResultModule INSTANCE = new NoMoreResultModule();

        private NoMoreResultModule() {
            super(7, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof NoMoreResultModule)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return 2140676497;
        }

        @NotNull
        public String toString() {
            return "NoMoreResultModule";
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class NoResultModule extends SearchModule {
        @NotNull
        public static final NoResultModule INSTANCE = new NoResultModule();

        private NoResultModule() {
            super(6, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof NoResultModule)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1401996516;
        }

        @NotNull
        public String toString() {
            return "NoResultModule";
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class PopularEpisodeModule extends SearchModule {
        @NotNull
        private final EpisodeSearchResult info;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PopularEpisodeModule(@NotNull EpisodeSearchResult info) {
            super(2, null);
            Intrinsics.checkNotNullParameter(info, "info");
            this.info = info;
        }

        public static /* synthetic */ PopularEpisodeModule copy$default(PopularEpisodeModule popularEpisodeModule, EpisodeSearchResult episodeSearchResult, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                episodeSearchResult = popularEpisodeModule.info;
            }
            return popularEpisodeModule.copy(episodeSearchResult);
        }

        @NotNull
        public final EpisodeSearchResult component1() {
            return this.info;
        }

        @NotNull
        public final PopularEpisodeModule copy(@NotNull EpisodeSearchResult info) {
            Intrinsics.checkNotNullParameter(info, "info");
            return new PopularEpisodeModule(info);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof PopularEpisodeModule) && Intrinsics.areEqual(this.info, ((PopularEpisodeModule) obj).info)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final EpisodeSearchResult getInfo() {
            return this.info;
        }

        public int hashCode() {
            return this.info.hashCode();
        }

        @NotNull
        public String toString() {
            return "PopularEpisodeModule(info=" + this.info + ')';
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class PopularTitleModule extends SearchModule {
        @NotNull
        private final EpisodeSearchResult info;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PopularTitleModule(@NotNull EpisodeSearchResult info) {
            super(5, null);
            Intrinsics.checkNotNullParameter(info, "info");
            this.info = info;
        }

        public static /* synthetic */ PopularTitleModule copy$default(PopularTitleModule popularTitleModule, EpisodeSearchResult episodeSearchResult, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                episodeSearchResult = popularTitleModule.info;
            }
            return popularTitleModule.copy(episodeSearchResult);
        }

        @NotNull
        public final EpisodeSearchResult component1() {
            return this.info;
        }

        @NotNull
        public final PopularTitleModule copy(@NotNull EpisodeSearchResult info) {
            Intrinsics.checkNotNullParameter(info, "info");
            return new PopularTitleModule(info);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof PopularTitleModule) && Intrinsics.areEqual(this.info, ((PopularTitleModule) obj).info)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final EpisodeSearchResult getInfo() {
            return this.info;
        }

        public int hashCode() {
            return this.info.hashCode();
        }

        @NotNull
        public String toString() {
            return "PopularTitleModule(info=" + this.info + ')';
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class SearchHistoryModule extends SearchModule {
        @NotNull
        public static final SearchHistoryModule INSTANCE = new SearchHistoryModule();

        private SearchHistoryModule() {
            super(1, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj || (obj instanceof SearchHistoryModule)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return -1034885946;
        }

        @NotNull
        public String toString() {
            return "SearchHistoryModule";
        }
    }

    /* compiled from: SearchModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class YouMightLikeModule extends SearchModule {
        @NotNull
        private final List<YouMightLikeKey> list;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public YouMightLikeModule(@NotNull List<YouMightLikeKey> list) {
            super(13, null);
            Intrinsics.checkNotNullParameter(list, "list");
            this.list = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ YouMightLikeModule copy$default(YouMightLikeModule youMightLikeModule, List list, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                list = youMightLikeModule.list;
            }
            return youMightLikeModule.copy(list);
        }

        @NotNull
        public final List<YouMightLikeKey> component1() {
            return this.list;
        }

        @NotNull
        public final YouMightLikeModule copy(@NotNull List<YouMightLikeKey> list) {
            Intrinsics.checkNotNullParameter(list, "list");
            return new YouMightLikeModule(list);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof YouMightLikeModule) && Intrinsics.areEqual(this.list, ((YouMightLikeModule) obj).list)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final List<YouMightLikeKey> getList() {
            return this.list;
        }

        public int hashCode() {
            return this.list.hashCode();
        }

        @NotNull
        public String toString() {
            return "YouMightLikeModule(list=" + this.list + ')';
        }
    }

    public /* synthetic */ SearchModule(int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10);
    }

    public final int getBottomMargin() {
        return this.bottomMargin;
    }

    public final int getTopMargin() {
        return this.topMargin;
    }

    public final int getViewType() {
        return this.viewType;
    }

    public final void setBottomMargin(int i10) {
        this.bottomMargin = i10;
    }

    public final void setTopMargin(int i10) {
        this.topMargin = i10;
    }

    private SearchModule(int i10) {
        this.viewType = i10;
    }
}
