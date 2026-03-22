package com.startshorts.androidplayer.bean.shorts;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsListResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortsListResult {
    @Nullable
    private final Integer consecutiveTimes;
    @Nullable
    private final List<ShortsEpisode> forYouList;
    private final boolean hasMore;
    @Nullable
    private final Integer lastShortPlayId;

    public ShortsListResult(@Nullable List<ShortsEpisode> list, boolean z10, @Nullable Integer num, @Nullable Integer num2) {
        this.forYouList = list;
        this.hasMore = z10;
        this.lastShortPlayId = num;
        this.consecutiveTimes = num2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ShortsListResult copy$default(ShortsListResult shortsListResult, List list, boolean z10, Integer num, Integer num2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = shortsListResult.forYouList;
        }
        if ((i10 & 2) != 0) {
            z10 = shortsListResult.hasMore;
        }
        if ((i10 & 4) != 0) {
            num = shortsListResult.lastShortPlayId;
        }
        if ((i10 & 8) != 0) {
            num2 = shortsListResult.consecutiveTimes;
        }
        return shortsListResult.copy(list, z10, num, num2);
    }

    @Nullable
    public final List<ShortsEpisode> component1() {
        return this.forYouList;
    }

    public final boolean component2() {
        return this.hasMore;
    }

    @Nullable
    public final Integer component3() {
        return this.lastShortPlayId;
    }

    @Nullable
    public final Integer component4() {
        return this.consecutiveTimes;
    }

    @NotNull
    public final ShortsListResult copy(@Nullable List<ShortsEpisode> list, boolean z10, @Nullable Integer num, @Nullable Integer num2) {
        return new ShortsListResult(list, z10, num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShortsListResult)) {
            return false;
        }
        ShortsListResult shortsListResult = (ShortsListResult) obj;
        if (Intrinsics.areEqual(this.forYouList, shortsListResult.forYouList) && this.hasMore == shortsListResult.hasMore && Intrinsics.areEqual(this.lastShortPlayId, shortsListResult.lastShortPlayId) && Intrinsics.areEqual(this.consecutiveTimes, shortsListResult.consecutiveTimes)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer getConsecutiveTimes() {
        return this.consecutiveTimes;
    }

    @Nullable
    public final List<ShortsEpisode> getForYouList() {
        return this.forYouList;
    }

    public final boolean getHasMore() {
        return this.hasMore;
    }

    @Nullable
    public final Integer getLastShortPlayId() {
        return this.lastShortPlayId;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        List<ShortsEpisode> list = this.forYouList;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int hashCode3 = ((hashCode * 31) + Boolean.hashCode(this.hasMore)) * 31;
        Integer num = this.lastShortPlayId;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i11 = (hashCode3 + hashCode2) * 31;
        Integer num2 = this.consecutiveTimes;
        if (num2 != null) {
            i10 = num2.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "ShortsListResult(forYouList=" + this.forYouList + ", hasMore=" + this.hasMore + ", lastShortPlayId=" + this.lastShortPlayId + ", consecutiveTimes=" + this.consecutiveTimes + ')';
    }
}
