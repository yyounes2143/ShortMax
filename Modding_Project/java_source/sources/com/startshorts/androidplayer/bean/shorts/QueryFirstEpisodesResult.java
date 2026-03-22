package com.startshorts.androidplayer.bean.shorts;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryFirstEpisodesResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryFirstEpisodesResult {
    @Nullable
    private final BaseEpisode currentEpisodesResponse;
    @Nullable
    private final ShortPlayContentInfo shortPlayContentRatingResponse;

    public QueryFirstEpisodesResult(@Nullable BaseEpisode baseEpisode, @Nullable ShortPlayContentInfo shortPlayContentInfo) {
        this.currentEpisodesResponse = baseEpisode;
        this.shortPlayContentRatingResponse = shortPlayContentInfo;
    }

    public static /* synthetic */ QueryFirstEpisodesResult copy$default(QueryFirstEpisodesResult queryFirstEpisodesResult, BaseEpisode baseEpisode, ShortPlayContentInfo shortPlayContentInfo, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            baseEpisode = queryFirstEpisodesResult.currentEpisodesResponse;
        }
        if ((i10 & 2) != 0) {
            shortPlayContentInfo = queryFirstEpisodesResult.shortPlayContentRatingResponse;
        }
        return queryFirstEpisodesResult.copy(baseEpisode, shortPlayContentInfo);
    }

    @Nullable
    public final BaseEpisode component1() {
        return this.currentEpisodesResponse;
    }

    @Nullable
    public final ShortPlayContentInfo component2() {
        return this.shortPlayContentRatingResponse;
    }

    @NotNull
    public final QueryFirstEpisodesResult copy(@Nullable BaseEpisode baseEpisode, @Nullable ShortPlayContentInfo shortPlayContentInfo) {
        return new QueryFirstEpisodesResult(baseEpisode, shortPlayContentInfo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QueryFirstEpisodesResult)) {
            return false;
        }
        QueryFirstEpisodesResult queryFirstEpisodesResult = (QueryFirstEpisodesResult) obj;
        if (Intrinsics.areEqual(this.currentEpisodesResponse, queryFirstEpisodesResult.currentEpisodesResponse) && Intrinsics.areEqual(this.shortPlayContentRatingResponse, queryFirstEpisodesResult.shortPlayContentRatingResponse)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final BaseEpisode getCurrentEpisodesResponse() {
        return this.currentEpisodesResponse;
    }

    @Nullable
    public final ShortPlayContentInfo getShortPlayContentRatingResponse() {
        return this.shortPlayContentRatingResponse;
    }

    public int hashCode() {
        int hashCode;
        BaseEpisode baseEpisode = this.currentEpisodesResponse;
        int i10 = 0;
        if (baseEpisode == null) {
            hashCode = 0;
        } else {
            hashCode = baseEpisode.hashCode();
        }
        int i11 = hashCode * 31;
        ShortPlayContentInfo shortPlayContentInfo = this.shortPlayContentRatingResponse;
        if (shortPlayContentInfo != null) {
            i10 = shortPlayContentInfo.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "QueryFirstEpisodesResult(currentEpisodesResponse=" + this.currentEpisodesResponse + ", shortPlayContentRatingResponse=" + this.shortPlayContentRatingResponse + ')';
    }

    public final void updateIsMergeShorts(boolean z10) {
        BaseEpisode baseEpisode = this.currentEpisodesResponse;
        if (baseEpisode != null) {
            baseEpisode.setMergeShortPlay(z10);
        }
    }

    public /* synthetic */ QueryFirstEpisodesResult(BaseEpisode baseEpisode, ShortPlayContentInfo shortPlayContentInfo, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseEpisode, (i10 & 2) != 0 ? null : shortPlayContentInfo);
    }
}
