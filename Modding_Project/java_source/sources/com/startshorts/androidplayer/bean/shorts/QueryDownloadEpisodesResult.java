package com.startshorts.androidplayer.bean.shorts;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryDownloadEpisodesResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryDownloadEpisodesResult {
    @Nullable
    private final List<BaseEpisode> dramaResponseList;
    @Nullable
    private final Integer finalDramId;
    @Nullable
    private final ShortPlayContentInfo shortPlayContentRatingResponse;

    public QueryDownloadEpisodesResult(@Nullable List<BaseEpisode> list, @Nullable Integer num, @Nullable ShortPlayContentInfo shortPlayContentInfo) {
        this.dramaResponseList = list;
        this.finalDramId = num;
        this.shortPlayContentRatingResponse = shortPlayContentInfo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ QueryDownloadEpisodesResult copy$default(QueryDownloadEpisodesResult queryDownloadEpisodesResult, List list, Integer num, ShortPlayContentInfo shortPlayContentInfo, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = queryDownloadEpisodesResult.dramaResponseList;
        }
        if ((i10 & 2) != 0) {
            num = queryDownloadEpisodesResult.finalDramId;
        }
        if ((i10 & 4) != 0) {
            shortPlayContentInfo = queryDownloadEpisodesResult.shortPlayContentRatingResponse;
        }
        return queryDownloadEpisodesResult.copy(list, num, shortPlayContentInfo);
    }

    @Nullable
    public final List<BaseEpisode> component1() {
        return this.dramaResponseList;
    }

    @Nullable
    public final Integer component2() {
        return this.finalDramId;
    }

    @Nullable
    public final ShortPlayContentInfo component3() {
        return this.shortPlayContentRatingResponse;
    }

    @NotNull
    public final QueryDownloadEpisodesResult copy(@Nullable List<BaseEpisode> list, @Nullable Integer num, @Nullable ShortPlayContentInfo shortPlayContentInfo) {
        return new QueryDownloadEpisodesResult(list, num, shortPlayContentInfo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QueryDownloadEpisodesResult)) {
            return false;
        }
        QueryDownloadEpisodesResult queryDownloadEpisodesResult = (QueryDownloadEpisodesResult) obj;
        if (Intrinsics.areEqual(this.dramaResponseList, queryDownloadEpisodesResult.dramaResponseList) && Intrinsics.areEqual(this.finalDramId, queryDownloadEpisodesResult.finalDramId) && Intrinsics.areEqual(this.shortPlayContentRatingResponse, queryDownloadEpisodesResult.shortPlayContentRatingResponse)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<BaseEpisode> getDramaResponseList() {
        return this.dramaResponseList;
    }

    @Nullable
    public final Integer getFinalDramId() {
        return this.finalDramId;
    }

    @Nullable
    public final ShortPlayContentInfo getShortPlayContentRatingResponse() {
        return this.shortPlayContentRatingResponse;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        List<BaseEpisode> list = this.dramaResponseList;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int i11 = hashCode * 31;
        Integer num = this.finalDramId;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        ShortPlayContentInfo shortPlayContentInfo = this.shortPlayContentRatingResponse;
        if (shortPlayContentInfo != null) {
            i10 = shortPlayContentInfo.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "QueryDownloadEpisodesResult(dramaResponseList=" + this.dramaResponseList + ", finalDramId=" + this.finalDramId + ", shortPlayContentRatingResponse=" + this.shortPlayContentRatingResponse + ')';
    }

    public /* synthetic */ QueryDownloadEpisodesResult(List list, Integer num, ShortPlayContentInfo shortPlayContentInfo, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, num, (i10 & 4) != 0 ? null : shortPlayContentInfo);
    }
}
