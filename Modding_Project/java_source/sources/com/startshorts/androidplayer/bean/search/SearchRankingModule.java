package com.startshorts.androidplayer.bean.search;

import com.startshorts.androidplayer.bean.discover.PlayListDiscoverRanking;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchRankingModule.kt */
@Metadata
/* loaded from: classes6.dex */
public abstract class SearchRankingModule {

    /* compiled from: SearchRankingModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class PopularModule extends SearchRankingModule {
        @Nullable
        private final List<EpisodeSearchResult> info;

        public PopularModule(@Nullable List<EpisodeSearchResult> list) {
            super(null);
            this.info = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ PopularModule copy$default(PopularModule popularModule, List list, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                list = popularModule.info;
            }
            return popularModule.copy(list);
        }

        @Nullable
        public final List<EpisodeSearchResult> component1() {
            return this.info;
        }

        @NotNull
        public final PopularModule copy(@Nullable List<EpisodeSearchResult> list) {
            return new PopularModule(list);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof PopularModule) && Intrinsics.areEqual(this.info, ((PopularModule) obj).info)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final List<EpisodeSearchResult> getInfo() {
            return this.info;
        }

        public int hashCode() {
            List<EpisodeSearchResult> list = this.info;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "PopularModule(info=" + this.info + ')';
        }
    }

    /* compiled from: SearchRankingModule.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class RankingModule extends SearchRankingModule {
        @Nullable
        private final PlayListDiscoverRanking info;

        public RankingModule(@Nullable PlayListDiscoverRanking playListDiscoverRanking) {
            super(null);
            this.info = playListDiscoverRanking;
        }

        public static /* synthetic */ RankingModule copy$default(RankingModule rankingModule, PlayListDiscoverRanking playListDiscoverRanking, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                playListDiscoverRanking = rankingModule.info;
            }
            return rankingModule.copy(playListDiscoverRanking);
        }

        @Nullable
        public final PlayListDiscoverRanking component1() {
            return this.info;
        }

        @NotNull
        public final RankingModule copy(@Nullable PlayListDiscoverRanking playListDiscoverRanking) {
            return new RankingModule(playListDiscoverRanking);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof RankingModule) && Intrinsics.areEqual(this.info, ((RankingModule) obj).info)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final PlayListDiscoverRanking getInfo() {
            return this.info;
        }

        public int hashCode() {
            PlayListDiscoverRanking playListDiscoverRanking = this.info;
            if (playListDiscoverRanking == null) {
                return 0;
            }
            return playListDiscoverRanking.hashCode();
        }

        @NotNull
        public String toString() {
            return "RankingModule(info=" + this.info + ')';
        }
    }

    public /* synthetic */ SearchRankingModule(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private SearchRankingModule() {
    }
}
