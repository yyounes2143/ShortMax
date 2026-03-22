package com.startshorts.androidplayer.bean.checkin;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NewbieWatchTask.kt */
@Metadata
@SourceDebugExtension({"SMAP\nNewbieWatchTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewbieWatchTask.kt\ncom/startshorts/androidplayer/bean/checkin/NewbieWatchTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n2632#2,3:48\n*S KotlinDebug\n*F\n+ 1 NewbieWatchTask.kt\ncom/startshorts/androidplayer/bean/checkin/NewbieWatchTask\n*L\n27#1:48,3\n*E\n"})
/* loaded from: classes6.dex */
public final class NewbieWatchTask {
    private long countDownEnd;
    private long countDownStart;
    @NotNull
    private String day;
    private boolean isDaily;
    @NotNull
    private List<NewbieWatchBonus> list;
    private long systemTime;

    public NewbieWatchTask(boolean z10, long j10, long j11, long j12, @NotNull List<NewbieWatchBonus> list, @NotNull String day) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(day, "day");
        this.isDaily = z10;
        this.systemTime = j10;
        this.countDownStart = j11;
        this.countDownEnd = j12;
        this.list = list;
        this.day = day;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NewbieWatchTask copy$default(NewbieWatchTask newbieWatchTask, boolean z10, long j10, long j11, long j12, List list, String str, int i10, Object obj) {
        boolean z11;
        long j13;
        long j14;
        long j15;
        List<NewbieWatchBonus> list2;
        String str2;
        if ((i10 & 1) != 0) {
            z11 = newbieWatchTask.isDaily;
        } else {
            z11 = z10;
        }
        if ((i10 & 2) != 0) {
            j13 = newbieWatchTask.systemTime;
        } else {
            j13 = j10;
        }
        if ((i10 & 4) != 0) {
            j14 = newbieWatchTask.countDownStart;
        } else {
            j14 = j11;
        }
        if ((i10 & 8) != 0) {
            j15 = newbieWatchTask.countDownEnd;
        } else {
            j15 = j12;
        }
        if ((i10 & 16) != 0) {
            list2 = newbieWatchTask.list;
        } else {
            list2 = list;
        }
        if ((i10 & 32) != 0) {
            str2 = newbieWatchTask.day;
        } else {
            str2 = str;
        }
        return newbieWatchTask.copy(z11, j13, j14, j15, list2, str2);
    }

    public final boolean component1() {
        return this.isDaily;
    }

    public final long component2() {
        return this.systemTime;
    }

    public final long component3() {
        return this.countDownStart;
    }

    public final long component4() {
        return this.countDownEnd;
    }

    @NotNull
    public final List<NewbieWatchBonus> component5() {
        return this.list;
    }

    @NotNull
    public final String component6() {
        return this.day;
    }

    @NotNull
    public final NewbieWatchTask copy(boolean z10, long j10, long j11, long j12, @NotNull List<NewbieWatchBonus> list, @NotNull String day) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(day, "day");
        return new NewbieWatchTask(z10, j10, j11, j12, list, day);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NewbieWatchTask)) {
            return false;
        }
        NewbieWatchTask newbieWatchTask = (NewbieWatchTask) obj;
        if (this.isDaily == newbieWatchTask.isDaily && this.systemTime == newbieWatchTask.systemTime && this.countDownStart == newbieWatchTask.countDownStart && this.countDownEnd == newbieWatchTask.countDownEnd && Intrinsics.areEqual(this.list, newbieWatchTask.list) && Intrinsics.areEqual(this.day, newbieWatchTask.day)) {
            return true;
        }
        return false;
    }

    public final long getCountDownEnd() {
        return this.countDownEnd;
    }

    public final long getCountDownStart() {
        return this.countDownStart;
    }

    @NotNull
    public final String getDay() {
        return this.day;
    }

    @NotNull
    public final List<NewbieWatchBonus> getList() {
        return this.list;
    }

    public final long getSystemTime() {
        return this.systemTime;
    }

    public int hashCode() {
        return (((((((((Boolean.hashCode(this.isDaily) * 31) + Long.hashCode(this.systemTime)) * 31) + Long.hashCode(this.countDownStart)) * 31) + Long.hashCode(this.countDownEnd)) * 31) + this.list.hashCode()) * 31) + this.day.hashCode();
    }

    public final boolean isAllTaskComplete() {
        List<NewbieWatchBonus> list = this.list;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        for (NewbieWatchBonus newbieWatchBonus : list) {
            if (!newbieWatchBonus.isReceive()) {
                return false;
            }
        }
        return true;
    }

    public final boolean isDaily() {
        return this.isDaily;
    }

    public final boolean isInvalid() {
        return !this.list.isEmpty();
    }

    public final void setCountDownEnd(long j10) {
        this.countDownEnd = j10;
    }

    public final void setCountDownStart(long j10) {
        this.countDownStart = j10;
    }

    public final void setDaily(boolean z10) {
        this.isDaily = z10;
    }

    public final void setDay(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.day = str;
    }

    public final void setList(@NotNull List<NewbieWatchBonus> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.list = list;
    }

    public final void setSystemTime(long j10) {
        this.systemTime = j10;
    }

    @NotNull
    public String toString() {
        return "NewbieWatchTask(isDaily=" + this.isDaily + ", systemTime=" + this.systemTime + ", countDownStart=" + this.countDownStart + ", countDownEnd=" + this.countDownEnd + ", list=" + this.list + ", day=" + this.day + ')';
    }

    public /* synthetic */ NewbieWatchTask(boolean z10, long j10, long j11, long j12, List list, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, j10, j11, j12, (i10 & 16) != 0 ? new ArrayList() : list, str);
    }

    public NewbieWatchTask(boolean z10) {
        this(z10, 0L, 0L, 0L, new ArrayList(), "");
    }
}
