package com.startshorts.androidplayer.bean.shorts;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryEpisodesResult.kt */
@Metadata
@SourceDebugExtension({"SMAP\nQueryEpisodesResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryEpisodesResult.kt\ncom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,25:1\n1863#2,2:26\n1863#2,2:28\n*S KotlinDebug\n*F\n+ 1 QueryEpisodesResult.kt\ncom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult\n*L\n16#1:26,2\n20#1:28,2\n*E\n"})
/* loaded from: classes6.dex */
public final class QueryEpisodesResult {
    @Nullable
    private final BaseEpisode currentEpisodesReponse;
    private int finalDramId;
    @Nullable
    private final List<BaseEpisode> nextEpisodesReponse;
    @Nullable
    private final List<BaseEpisode> previousEpisodesReponse;
    @Nullable
    private final ShortPlayContentInfo shortPlayContentRatingResponse;

    public QueryEpisodesResult(@Nullable List<BaseEpisode> list, int i10, @Nullable BaseEpisode baseEpisode, @Nullable List<BaseEpisode> list2, @Nullable ShortPlayContentInfo shortPlayContentInfo) {
        this.previousEpisodesReponse = list;
        this.finalDramId = i10;
        this.currentEpisodesReponse = baseEpisode;
        this.nextEpisodesReponse = list2;
        this.shortPlayContentRatingResponse = shortPlayContentInfo;
    }

    public static /* synthetic */ QueryEpisodesResult copy$default(QueryEpisodesResult queryEpisodesResult, List list, int i10, BaseEpisode baseEpisode, List list2, ShortPlayContentInfo shortPlayContentInfo, int i11, Object obj) {
        List<BaseEpisode> list3 = list;
        if ((i11 & 1) != 0) {
            list3 = queryEpisodesResult.previousEpisodesReponse;
        }
        if ((i11 & 2) != 0) {
            i10 = queryEpisodesResult.finalDramId;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            baseEpisode = queryEpisodesResult.currentEpisodesReponse;
        }
        BaseEpisode baseEpisode2 = baseEpisode;
        List<BaseEpisode> list4 = list2;
        if ((i11 & 8) != 0) {
            list4 = queryEpisodesResult.nextEpisodesReponse;
        }
        List list5 = list4;
        if ((i11 & 16) != 0) {
            shortPlayContentInfo = queryEpisodesResult.shortPlayContentRatingResponse;
        }
        return queryEpisodesResult.copy(list3, i12, baseEpisode2, list5, shortPlayContentInfo);
    }

    @Nullable
    public final List<BaseEpisode> component1() {
        return this.previousEpisodesReponse;
    }

    public final int component2() {
        return this.finalDramId;
    }

    @Nullable
    public final BaseEpisode component3() {
        return this.currentEpisodesReponse;
    }

    @Nullable
    public final List<BaseEpisode> component4() {
        return this.nextEpisodesReponse;
    }

    @Nullable
    public final ShortPlayContentInfo component5() {
        return this.shortPlayContentRatingResponse;
    }

    @NotNull
    public final QueryEpisodesResult copy(@Nullable List<BaseEpisode> list, int i10, @Nullable BaseEpisode baseEpisode, @Nullable List<BaseEpisode> list2, @Nullable ShortPlayContentInfo shortPlayContentInfo) {
        return new QueryEpisodesResult(list, i10, baseEpisode, list2, shortPlayContentInfo);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QueryEpisodesResult)) {
            return false;
        }
        QueryEpisodesResult queryEpisodesResult = (QueryEpisodesResult) obj;
        if (Intrinsics.areEqual(this.previousEpisodesReponse, queryEpisodesResult.previousEpisodesReponse) && this.finalDramId == queryEpisodesResult.finalDramId && Intrinsics.areEqual(this.currentEpisodesReponse, queryEpisodesResult.currentEpisodesReponse) && Intrinsics.areEqual(this.nextEpisodesReponse, queryEpisodesResult.nextEpisodesReponse) && Intrinsics.areEqual(this.shortPlayContentRatingResponse, queryEpisodesResult.shortPlayContentRatingResponse)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final BaseEpisode getCurrentEpisodesReponse() {
        return this.currentEpisodesReponse;
    }

    public final int getFinalDramId() {
        return this.finalDramId;
    }

    @Nullable
    public final List<BaseEpisode> getNextEpisodesReponse() {
        return this.nextEpisodesReponse;
    }

    @Nullable
    public final List<BaseEpisode> getPreviousEpisodesReponse() {
        return this.previousEpisodesReponse;
    }

    @Nullable
    public final ShortPlayContentInfo getShortPlayContentRatingResponse() {
        return this.shortPlayContentRatingResponse;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        List<BaseEpisode> list = this.previousEpisodesReponse;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int hashCode4 = ((hashCode * 31) + Integer.hashCode(this.finalDramId)) * 31;
        BaseEpisode baseEpisode = this.currentEpisodesReponse;
        if (baseEpisode == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = baseEpisode.hashCode();
        }
        int i11 = (hashCode4 + hashCode2) * 31;
        List<BaseEpisode> list2 = this.nextEpisodesReponse;
        if (list2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = list2.hashCode();
        }
        int i12 = (i11 + hashCode3) * 31;
        ShortPlayContentInfo shortPlayContentInfo = this.shortPlayContentRatingResponse;
        if (shortPlayContentInfo != null) {
            i10 = shortPlayContentInfo.hashCode();
        }
        return i12 + i10;
    }

    public final void setFinalDramId(int i10) {
        this.finalDramId = i10;
    }

    @NotNull
    public String toString() {
        return "QueryEpisodesResult(previousEpisodesReponse=" + this.previousEpisodesReponse + ", finalDramId=" + this.finalDramId + ", currentEpisodesReponse=" + this.currentEpisodesReponse + ", nextEpisodesReponse=" + this.nextEpisodesReponse + ", shortPlayContentRatingResponse=" + this.shortPlayContentRatingResponse + ')';
    }

    public final void updateIsMergeShorts(boolean z10) {
        List<BaseEpisode> list = this.previousEpisodesReponse;
        if (list != null) {
            for (BaseEpisode baseEpisode : list) {
                baseEpisode.setMergeShortPlay(z10);
            }
        }
        BaseEpisode baseEpisode2 = this.currentEpisodesReponse;
        if (baseEpisode2 != null) {
            baseEpisode2.setMergeShortPlay(z10);
        }
        List<BaseEpisode> list2 = this.nextEpisodesReponse;
        if (list2 != null) {
            for (BaseEpisode baseEpisode3 : list2) {
                baseEpisode3.setMergeShortPlay(z10);
            }
        }
    }

    public /* synthetic */ QueryEpisodesResult(List list, int i10, BaseEpisode baseEpisode, List list2, ShortPlayContentInfo shortPlayContentInfo, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i11 & 2) != 0 ? -1 : i10, baseEpisode, list2, (i11 & 16) != 0 ? null : shortPlayContentInfo);
    }
}
