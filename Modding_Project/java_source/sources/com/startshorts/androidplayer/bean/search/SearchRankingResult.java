package com.startshorts.androidplayer.bean.search;

import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchRankingResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SearchRankingResult {
    @Nullable
    private final DiscoverModule bannerResponse;
    @Nullable
    private final List<EpisodeSearchResult> topResponseList;

    public SearchRankingResult(@Nullable DiscoverModule discoverModule, @Nullable List<EpisodeSearchResult> list) {
        this.bannerResponse = discoverModule;
        this.topResponseList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchRankingResult copy$default(SearchRankingResult searchRankingResult, DiscoverModule discoverModule, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            discoverModule = searchRankingResult.bannerResponse;
        }
        if ((i10 & 2) != 0) {
            list = searchRankingResult.topResponseList;
        }
        return searchRankingResult.copy(discoverModule, list);
    }

    @Nullable
    public final DiscoverModule component1() {
        return this.bannerResponse;
    }

    @Nullable
    public final List<EpisodeSearchResult> component2() {
        return this.topResponseList;
    }

    @NotNull
    public final SearchRankingResult copy(@Nullable DiscoverModule discoverModule, @Nullable List<EpisodeSearchResult> list) {
        return new SearchRankingResult(discoverModule, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchRankingResult)) {
            return false;
        }
        SearchRankingResult searchRankingResult = (SearchRankingResult) obj;
        if (Intrinsics.areEqual(this.bannerResponse, searchRankingResult.bannerResponse) && Intrinsics.areEqual(this.topResponseList, searchRankingResult.topResponseList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final DiscoverModule getBannerResponse() {
        return this.bannerResponse;
    }

    @Nullable
    public final List<EpisodeSearchResult> getTopResponseList() {
        return this.topResponseList;
    }

    public int hashCode() {
        int hashCode;
        DiscoverModule discoverModule = this.bannerResponse;
        int i10 = 0;
        if (discoverModule == null) {
            hashCode = 0;
        } else {
            hashCode = discoverModule.hashCode();
        }
        int i11 = hashCode * 31;
        List<EpisodeSearchResult> list = this.topResponseList;
        if (list != null) {
            i10 = list.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "SearchRankingResult(bannerResponse=" + this.bannerResponse + ", topResponseList=" + this.topResponseList + ')';
    }
}
