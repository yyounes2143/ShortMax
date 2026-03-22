package com.startshorts.androidplayer.bean.search;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SearchRankingResultV2.kt */
@Metadata
/* loaded from: classes6.dex */
public final class SearchRankingResultV2 {
    @Nullable
    private final List<YouMightLikeKey> hotResponseList;
    @Nullable
    private final List<SearchKey> keyResponseList;
    @Nullable
    private final List<EpisodeSearchResult> topResponseList;

    public SearchRankingResultV2(@Nullable List<EpisodeSearchResult> list, @Nullable List<YouMightLikeKey> list2, @Nullable List<SearchKey> list3) {
        this.topResponseList = list;
        this.hotResponseList = list2;
        this.keyResponseList = list3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchRankingResultV2 copy$default(SearchRankingResultV2 searchRankingResultV2, List list, List list2, List list3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = searchRankingResultV2.topResponseList;
        }
        if ((i10 & 2) != 0) {
            list2 = searchRankingResultV2.hotResponseList;
        }
        if ((i10 & 4) != 0) {
            list3 = searchRankingResultV2.keyResponseList;
        }
        return searchRankingResultV2.copy(list, list2, list3);
    }

    @Nullable
    public final List<EpisodeSearchResult> component1() {
        return this.topResponseList;
    }

    @Nullable
    public final List<YouMightLikeKey> component2() {
        return this.hotResponseList;
    }

    @Nullable
    public final List<SearchKey> component3() {
        return this.keyResponseList;
    }

    @NotNull
    public final SearchRankingResultV2 copy(@Nullable List<EpisodeSearchResult> list, @Nullable List<YouMightLikeKey> list2, @Nullable List<SearchKey> list3) {
        return new SearchRankingResultV2(list, list2, list3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchRankingResultV2)) {
            return false;
        }
        SearchRankingResultV2 searchRankingResultV2 = (SearchRankingResultV2) obj;
        if (Intrinsics.areEqual(this.topResponseList, searchRankingResultV2.topResponseList) && Intrinsics.areEqual(this.hotResponseList, searchRankingResultV2.hotResponseList) && Intrinsics.areEqual(this.keyResponseList, searchRankingResultV2.keyResponseList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<YouMightLikeKey> getHotResponseList() {
        return this.hotResponseList;
    }

    @Nullable
    public final List<SearchKey> getKeyResponseList() {
        return this.keyResponseList;
    }

    @Nullable
    public final List<EpisodeSearchResult> getTopResponseList() {
        return this.topResponseList;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        List<EpisodeSearchResult> list = this.topResponseList;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int i11 = hashCode * 31;
        List<YouMightLikeKey> list2 = this.hotResponseList;
        if (list2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = list2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        List<SearchKey> list3 = this.keyResponseList;
        if (list3 != null) {
            i10 = list3.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "SearchRankingResultV2(topResponseList=" + this.topResponseList + ", hotResponseList=" + this.hotResponseList + ", keyResponseList=" + this.keyResponseList + ')';
    }
}
