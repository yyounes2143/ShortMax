package com.startshorts.androidplayer.bean.checkin;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CheckInInfoResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CheckInInfoResult {
    private final boolean clickDoubleAdToday;
    private final boolean clickDoubleDramaToday;
    @Nullable
    private final Integer notificationTaskBonus;
    @Nullable
    private final Integer notificationTaskId;
    private final int reSignAdTimes;
    @Nullable
    private final List<CheckInInfo> signRecords;
    private final int zoneHour;
    @NotNull
    private final String zoneStr;

    public CheckInInfoResult(int i10, boolean z10, boolean z11, @Nullable List<CheckInInfo> list, int i11, @NotNull String zoneStr, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(zoneStr, "zoneStr");
        this.reSignAdTimes = i10;
        this.clickDoubleAdToday = z10;
        this.clickDoubleDramaToday = z11;
        this.signRecords = list;
        this.zoneHour = i11;
        this.zoneStr = zoneStr;
        this.notificationTaskId = num;
        this.notificationTaskBonus = num2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CheckInInfoResult copy$default(CheckInInfoResult checkInInfoResult, int i10, boolean z10, boolean z11, List list, int i11, String str, Integer num, Integer num2, int i12, Object obj) {
        int i13;
        boolean z12;
        boolean z13;
        List<CheckInInfo> list2;
        int i14;
        String str2;
        Integer num3;
        Integer num4;
        if ((i12 & 1) != 0) {
            i13 = checkInInfoResult.reSignAdTimes;
        } else {
            i13 = i10;
        }
        if ((i12 & 2) != 0) {
            z12 = checkInInfoResult.clickDoubleAdToday;
        } else {
            z12 = z10;
        }
        if ((i12 & 4) != 0) {
            z13 = checkInInfoResult.clickDoubleDramaToday;
        } else {
            z13 = z11;
        }
        if ((i12 & 8) != 0) {
            list2 = checkInInfoResult.signRecords;
        } else {
            list2 = list;
        }
        if ((i12 & 16) != 0) {
            i14 = checkInInfoResult.zoneHour;
        } else {
            i14 = i11;
        }
        if ((i12 & 32) != 0) {
            str2 = checkInInfoResult.zoneStr;
        } else {
            str2 = str;
        }
        if ((i12 & 64) != 0) {
            num3 = checkInInfoResult.notificationTaskId;
        } else {
            num3 = num;
        }
        if ((i12 & 128) != 0) {
            num4 = checkInInfoResult.notificationTaskBonus;
        } else {
            num4 = num2;
        }
        return checkInInfoResult.copy(i13, z12, z13, list2, i14, str2, num3, num4);
    }

    public final int component1() {
        return this.reSignAdTimes;
    }

    public final boolean component2() {
        return this.clickDoubleAdToday;
    }

    public final boolean component3() {
        return this.clickDoubleDramaToday;
    }

    @Nullable
    public final List<CheckInInfo> component4() {
        return this.signRecords;
    }

    public final int component5() {
        return this.zoneHour;
    }

    @NotNull
    public final String component6() {
        return this.zoneStr;
    }

    @Nullable
    public final Integer component7() {
        return this.notificationTaskId;
    }

    @Nullable
    public final Integer component8() {
        return this.notificationTaskBonus;
    }

    @NotNull
    public final CheckInInfoResult copy(int i10, boolean z10, boolean z11, @Nullable List<CheckInInfo> list, int i11, @NotNull String zoneStr, @Nullable Integer num, @Nullable Integer num2) {
        Intrinsics.checkNotNullParameter(zoneStr, "zoneStr");
        return new CheckInInfoResult(i10, z10, z11, list, i11, zoneStr, num, num2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckInInfoResult)) {
            return false;
        }
        CheckInInfoResult checkInInfoResult = (CheckInInfoResult) obj;
        if (this.reSignAdTimes == checkInInfoResult.reSignAdTimes && this.clickDoubleAdToday == checkInInfoResult.clickDoubleAdToday && this.clickDoubleDramaToday == checkInInfoResult.clickDoubleDramaToday && Intrinsics.areEqual(this.signRecords, checkInInfoResult.signRecords) && this.zoneHour == checkInInfoResult.zoneHour && Intrinsics.areEqual(this.zoneStr, checkInInfoResult.zoneStr) && Intrinsics.areEqual(this.notificationTaskId, checkInInfoResult.notificationTaskId) && Intrinsics.areEqual(this.notificationTaskBonus, checkInInfoResult.notificationTaskBonus)) {
            return true;
        }
        return false;
    }

    public final boolean getClickDoubleAdToday() {
        return this.clickDoubleAdToday;
    }

    public final boolean getClickDoubleDramaToday() {
        return this.clickDoubleDramaToday;
    }

    @Nullable
    public final Integer getNotificationTaskBonus() {
        return this.notificationTaskBonus;
    }

    @Nullable
    public final Integer getNotificationTaskId() {
        return this.notificationTaskId;
    }

    public final int getReSignAdTimes() {
        return this.reSignAdTimes;
    }

    @Nullable
    public final List<CheckInInfo> getSignRecords() {
        return this.signRecords;
    }

    public final int getZoneHour() {
        return this.zoneHour;
    }

    @NotNull
    public final String getZoneStr() {
        return this.zoneStr;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = ((((Integer.hashCode(this.reSignAdTimes) * 31) + Boolean.hashCode(this.clickDoubleAdToday)) * 31) + Boolean.hashCode(this.clickDoubleDramaToday)) * 31;
        List<CheckInInfo> list = this.signRecords;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int hashCode4 = (((((hashCode3 + hashCode) * 31) + Integer.hashCode(this.zoneHour)) * 31) + this.zoneStr.hashCode()) * 31;
        Integer num = this.notificationTaskId;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i11 = (hashCode4 + hashCode2) * 31;
        Integer num2 = this.notificationTaskBonus;
        if (num2 != null) {
            i10 = num2.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "CheckInInfoResult(reSignAdTimes=" + this.reSignAdTimes + ", clickDoubleAdToday=" + this.clickDoubleAdToday + ", clickDoubleDramaToday=" + this.clickDoubleDramaToday + ", signRecords=" + this.signRecords + ", zoneHour=" + this.zoneHour + ", zoneStr=" + this.zoneStr + ", notificationTaskId=" + this.notificationTaskId + ", notificationTaskBonus=" + this.notificationTaskBonus + ')';
    }
}
