package com.startshorts.androidplayer.bean.ad;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryWatchAdBonusResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class QueryWatchAdBonusTaskResult {
    private final int adAllCompletedGetBonus;
    private final int adWatchMaxMinute;
    private final int nextWatchAdWaitSecond;
    @Nullable
    private final List<WatchAdBonusTask> taskConfigModuleResponseList;
    @Nullable
    private final String taskUnCompletedToast;

    public QueryWatchAdBonusTaskResult(@Nullable List<WatchAdBonusTask> list, int i10, int i11, int i12, @Nullable String str) {
        this.taskConfigModuleResponseList = list;
        this.adAllCompletedGetBonus = i10;
        this.nextWatchAdWaitSecond = i11;
        this.adWatchMaxMinute = i12;
        this.taskUnCompletedToast = str;
    }

    public static /* synthetic */ QueryWatchAdBonusTaskResult copy$default(QueryWatchAdBonusTaskResult queryWatchAdBonusTaskResult, List list, int i10, int i11, int i12, String str, int i13, Object obj) {
        List<WatchAdBonusTask> list2 = list;
        if ((i13 & 1) != 0) {
            list2 = queryWatchAdBonusTaskResult.taskConfigModuleResponseList;
        }
        if ((i13 & 2) != 0) {
            i10 = queryWatchAdBonusTaskResult.adAllCompletedGetBonus;
        }
        int i14 = i10;
        if ((i13 & 4) != 0) {
            i11 = queryWatchAdBonusTaskResult.nextWatchAdWaitSecond;
        }
        int i15 = i11;
        if ((i13 & 8) != 0) {
            i12 = queryWatchAdBonusTaskResult.adWatchMaxMinute;
        }
        int i16 = i12;
        if ((i13 & 16) != 0) {
            str = queryWatchAdBonusTaskResult.taskUnCompletedToast;
        }
        return queryWatchAdBonusTaskResult.copy(list2, i14, i15, i16, str);
    }

    @Nullable
    public final List<WatchAdBonusTask> component1() {
        return this.taskConfigModuleResponseList;
    }

    public final int component2() {
        return this.adAllCompletedGetBonus;
    }

    public final int component3() {
        return this.nextWatchAdWaitSecond;
    }

    public final int component4() {
        return this.adWatchMaxMinute;
    }

    @Nullable
    public final String component5() {
        return this.taskUnCompletedToast;
    }

    @NotNull
    public final QueryWatchAdBonusTaskResult copy(@Nullable List<WatchAdBonusTask> list, int i10, int i11, int i12, @Nullable String str) {
        return new QueryWatchAdBonusTaskResult(list, i10, i11, i12, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QueryWatchAdBonusTaskResult)) {
            return false;
        }
        QueryWatchAdBonusTaskResult queryWatchAdBonusTaskResult = (QueryWatchAdBonusTaskResult) obj;
        if (Intrinsics.areEqual(this.taskConfigModuleResponseList, queryWatchAdBonusTaskResult.taskConfigModuleResponseList) && this.adAllCompletedGetBonus == queryWatchAdBonusTaskResult.adAllCompletedGetBonus && this.nextWatchAdWaitSecond == queryWatchAdBonusTaskResult.nextWatchAdWaitSecond && this.adWatchMaxMinute == queryWatchAdBonusTaskResult.adWatchMaxMinute && Intrinsics.areEqual(this.taskUnCompletedToast, queryWatchAdBonusTaskResult.taskUnCompletedToast)) {
            return true;
        }
        return false;
    }

    public final int getAdAllCompletedGetBonus() {
        return this.adAllCompletedGetBonus;
    }

    public final int getAdWatchMaxMinute() {
        return this.adWatchMaxMinute;
    }

    public final int getNextWatchAdWaitSecond() {
        return this.nextWatchAdWaitSecond;
    }

    @Nullable
    public final List<WatchAdBonusTask> getTaskConfigModuleResponseList() {
        return this.taskConfigModuleResponseList;
    }

    @Nullable
    public final String getTaskUnCompletedToast() {
        return this.taskUnCompletedToast;
    }

    public int hashCode() {
        int hashCode;
        List<WatchAdBonusTask> list = this.taskConfigModuleResponseList;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int hashCode2 = ((((((hashCode * 31) + Integer.hashCode(this.adAllCompletedGetBonus)) * 31) + Integer.hashCode(this.nextWatchAdWaitSecond)) * 31) + Integer.hashCode(this.adWatchMaxMinute)) * 31;
        String str = this.taskUnCompletedToast;
        if (str != null) {
            i10 = str.hashCode();
        }
        return hashCode2 + i10;
    }

    @NotNull
    public String toString() {
        return "QueryWatchAdBonusTaskResult(taskConfigModuleResponseList=" + this.taskConfigModuleResponseList + ", adAllCompletedGetBonus=" + this.adAllCompletedGetBonus + ", nextWatchAdWaitSecond=" + this.nextWatchAdWaitSecond + ", adWatchMaxMinute=" + this.adWatchMaxMinute + ", taskUnCompletedToast=" + this.taskUnCompletedToast + ')';
    }
}
