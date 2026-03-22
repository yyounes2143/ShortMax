package com.startshorts.androidplayer.bean.checkin;

import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CheckInInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CheckInInfo {
    private final int bonus;
    @NotNull
    private final String day;
    private final int dayIndex;
    private boolean isSign;

    public CheckInInfo(@NotNull String day, int i10, int i11, boolean z10) {
        Intrinsics.checkNotNullParameter(day, "day");
        this.day = day;
        this.dayIndex = i10;
        this.bonus = i11;
        this.isSign = z10;
    }

    public static /* synthetic */ CheckInInfo copy$default(CheckInInfo checkInInfo, String str, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = checkInInfo.day;
        }
        if ((i12 & 2) != 0) {
            i10 = checkInInfo.dayIndex;
        }
        if ((i12 & 4) != 0) {
            i11 = checkInInfo.bonus;
        }
        if ((i12 & 8) != 0) {
            z10 = checkInInfo.isSign;
        }
        return checkInInfo.copy(str, i10, i11, z10);
    }

    @NotNull
    public final String component1() {
        return this.day;
    }

    public final int component2() {
        return this.dayIndex;
    }

    public final int component3() {
        return this.bonus;
    }

    public final boolean component4() {
        return this.isSign;
    }

    @NotNull
    public final CheckInInfo copy(@NotNull String day, int i10, int i11, boolean z10) {
        Intrinsics.checkNotNullParameter(day, "day");
        return new CheckInInfo(day, i10, i11, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckInInfo)) {
            return false;
        }
        CheckInInfo checkInInfo = (CheckInInfo) obj;
        if (Intrinsics.areEqual(this.day, checkInInfo.day) && this.dayIndex == checkInInfo.dayIndex && this.bonus == checkInInfo.bonus && this.isSign == checkInInfo.isSign) {
            return true;
        }
        return false;
    }

    public final int getBonus() {
        return this.bonus;
    }

    @NotNull
    public final String getDay() {
        return this.day;
    }

    public final int getDayIndex() {
        return this.dayIndex;
    }

    @NotNull
    public final String getFormatBonus() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        sb2.append(this.bonus);
        return v.a(sb2.toString());
    }

    public int hashCode() {
        return (((((this.day.hashCode() * 31) + Integer.hashCode(this.dayIndex)) * 31) + Integer.hashCode(this.bonus)) * 31) + Boolean.hashCode(this.isSign);
    }

    public final boolean isSign() {
        return this.isSign;
    }

    public final void setSign(boolean z10) {
        this.isSign = z10;
    }

    @NotNull
    public String toString() {
        return "CheckInInfo(day=" + this.day + ", dayIndex=" + this.dayIndex + ", bonus=" + this.bonus + ", isSign=" + this.isSign + ')';
    }
}
