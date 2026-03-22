package com.startshorts.androidplayer.bean.discover;

import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlayListDiscoverRanking.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PlayListDiscoverRanking extends SelectableItem {
    @Nullable
    private final String bannerId;
    @Nullable
    private final Boolean isShowMore;
    @Nullable
    private final Integer rankingId;
    @Nullable
    private final String rankingName;
    @Nullable
    private final Integer recommendRuleId;
    @Nullable
    private List<DiscoverShorts> shortPlayResponseList;

    public /* synthetic */ PlayListDiscoverRanking(Integer num, String str, Boolean bool, Integer num2, String str2, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(num, str, bool, num2, str2, (i10 & 32) != 0 ? null : list);
    }

    public static /* synthetic */ PlayListDiscoverRanking copy$default(PlayListDiscoverRanking playListDiscoverRanking, Integer num, String str, Boolean bool, Integer num2, String str2, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = playListDiscoverRanking.rankingId;
        }
        if ((i10 & 2) != 0) {
            str = playListDiscoverRanking.rankingName;
        }
        String str3 = str;
        if ((i10 & 4) != 0) {
            bool = playListDiscoverRanking.isShowMore;
        }
        Boolean bool2 = bool;
        if ((i10 & 8) != 0) {
            num2 = playListDiscoverRanking.recommendRuleId;
        }
        Integer num3 = num2;
        if ((i10 & 16) != 0) {
            str2 = playListDiscoverRanking.bannerId;
        }
        String str4 = str2;
        List<DiscoverShorts> list2 = list;
        if ((i10 & 32) != 0) {
            list2 = playListDiscoverRanking.shortPlayResponseList;
        }
        return playListDiscoverRanking.copy(num, str3, bool2, num3, str4, list2);
    }

    @Nullable
    public final Integer component1() {
        return this.rankingId;
    }

    @Nullable
    public final String component2() {
        return this.rankingName;
    }

    @Nullable
    public final Boolean component3() {
        return this.isShowMore;
    }

    @Nullable
    public final Integer component4() {
        return this.recommendRuleId;
    }

    @Nullable
    public final String component5() {
        return this.bannerId;
    }

    @Nullable
    public final List<DiscoverShorts> component6() {
        return this.shortPlayResponseList;
    }

    @NotNull
    public final PlayListDiscoverRanking copy(@Nullable Integer num, @Nullable String str, @Nullable Boolean bool, @Nullable Integer num2, @Nullable String str2, @Nullable List<DiscoverShorts> list) {
        return new PlayListDiscoverRanking(num, str, bool, num2, str2, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlayListDiscoverRanking)) {
            return false;
        }
        PlayListDiscoverRanking playListDiscoverRanking = (PlayListDiscoverRanking) obj;
        if (Intrinsics.areEqual(this.rankingId, playListDiscoverRanking.rankingId) && Intrinsics.areEqual(this.rankingName, playListDiscoverRanking.rankingName) && Intrinsics.areEqual(this.isShowMore, playListDiscoverRanking.isShowMore) && Intrinsics.areEqual(this.recommendRuleId, playListDiscoverRanking.recommendRuleId) && Intrinsics.areEqual(this.bannerId, playListDiscoverRanking.bannerId) && Intrinsics.areEqual(this.shortPlayResponseList, playListDiscoverRanking.shortPlayResponseList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getBannerId() {
        return this.bannerId;
    }

    @Nullable
    public final Integer getRankingId() {
        return this.rankingId;
    }

    @Nullable
    public final String getRankingName() {
        return this.rankingName;
    }

    @Nullable
    public final Integer getRecommendRuleId() {
        return this.recommendRuleId;
    }

    @Nullable
    public final List<DiscoverShorts> getShortPlayResponseList() {
        return this.shortPlayResponseList;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        Integer num = this.rankingId;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.rankingName;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        Boolean bool = this.isShowMore;
        if (bool == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = bool.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Integer num2 = this.recommendRuleId;
        if (num2 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = num2.hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        String str2 = this.bannerId;
        if (str2 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str2.hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        List<DiscoverShorts> list = this.shortPlayResponseList;
        if (list != null) {
            i10 = list.hashCode();
        }
        return i15 + i10;
    }

    @Nullable
    public final Boolean isShowMore() {
        return this.isShowMore;
    }

    public final void setShortPlayResponseList(@Nullable List<DiscoverShorts> list) {
        this.shortPlayResponseList = list;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "PlayListDiscoverRanking(rankingId=" + this.rankingId + ", rankingName=" + this.rankingName + ", isShowMore=" + this.isShowMore + ", recommendRuleId=" + this.recommendRuleId + ", bannerId=" + this.bannerId + ", shortPlayResponseList=" + this.shortPlayResponseList + ')';
    }

    public PlayListDiscoverRanking(@Nullable Integer num, @Nullable String str, @Nullable Boolean bool, @Nullable Integer num2, @Nullable String str2, @Nullable List<DiscoverShorts> list) {
        this.rankingId = num;
        this.rankingName = str;
        this.isShowMore = bool;
        this.recommendRuleId = num2;
        this.bannerId = str2;
        this.shortPlayResponseList = list;
    }
}
