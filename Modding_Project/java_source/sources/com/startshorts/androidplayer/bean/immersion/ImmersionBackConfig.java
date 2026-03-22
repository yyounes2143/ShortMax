package com.startshorts.androidplayer.bean.immersion;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionBackConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionBackConfig {
    @NotNull
    private String popupTitle;
    private int retainCountLimitByDay;
    private int retainCountLimitByShortPlay;
    private int retainCountLimitByThreeHour;
    private int retainTriggerTime;

    public ImmersionBackConfig() {
        this(null, 0, 0, 0, 0, 31, null);
    }

    public static /* synthetic */ ImmersionBackConfig copy$default(ImmersionBackConfig immersionBackConfig, String str, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            str = immersionBackConfig.popupTitle;
        }
        if ((i14 & 2) != 0) {
            i10 = immersionBackConfig.retainCountLimitByDay;
        }
        int i15 = i10;
        if ((i14 & 4) != 0) {
            i11 = immersionBackConfig.retainCountLimitByThreeHour;
        }
        int i16 = i11;
        if ((i14 & 8) != 0) {
            i12 = immersionBackConfig.retainCountLimitByShortPlay;
        }
        int i17 = i12;
        if ((i14 & 16) != 0) {
            i13 = immersionBackConfig.retainTriggerTime;
        }
        return immersionBackConfig.copy(str, i15, i16, i17, i13);
    }

    @NotNull
    public final String component1() {
        return this.popupTitle;
    }

    public final int component2() {
        return this.retainCountLimitByDay;
    }

    public final int component3() {
        return this.retainCountLimitByThreeHour;
    }

    public final int component4() {
        return this.retainCountLimitByShortPlay;
    }

    public final int component5() {
        return this.retainTriggerTime;
    }

    @NotNull
    public final ImmersionBackConfig copy(@NotNull String popupTitle, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(popupTitle, "popupTitle");
        return new ImmersionBackConfig(popupTitle, i10, i11, i12, i13);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersionBackConfig)) {
            return false;
        }
        ImmersionBackConfig immersionBackConfig = (ImmersionBackConfig) obj;
        if (Intrinsics.areEqual(this.popupTitle, immersionBackConfig.popupTitle) && this.retainCountLimitByDay == immersionBackConfig.retainCountLimitByDay && this.retainCountLimitByThreeHour == immersionBackConfig.retainCountLimitByThreeHour && this.retainCountLimitByShortPlay == immersionBackConfig.retainCountLimitByShortPlay && this.retainTriggerTime == immersionBackConfig.retainTriggerTime) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getPopupTitle() {
        return this.popupTitle;
    }

    public final int getRetainCountLimitByDay() {
        return this.retainCountLimitByDay;
    }

    public final int getRetainCountLimitByShortPlay() {
        return this.retainCountLimitByShortPlay;
    }

    public final int getRetainCountLimitByThreeHour() {
        return this.retainCountLimitByThreeHour;
    }

    public final int getRetainTriggerTime() {
        return this.retainTriggerTime;
    }

    public int hashCode() {
        return (((((((this.popupTitle.hashCode() * 31) + Integer.hashCode(this.retainCountLimitByDay)) * 31) + Integer.hashCode(this.retainCountLimitByThreeHour)) * 31) + Integer.hashCode(this.retainCountLimitByShortPlay)) * 31) + Integer.hashCode(this.retainTriggerTime);
    }

    public final void setPopupTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.popupTitle = str;
    }

    public final void setRetainCountLimitByDay(int i10) {
        this.retainCountLimitByDay = i10;
    }

    public final void setRetainCountLimitByShortPlay(int i10) {
        this.retainCountLimitByShortPlay = i10;
    }

    public final void setRetainCountLimitByThreeHour(int i10) {
        this.retainCountLimitByThreeHour = i10;
    }

    public final void setRetainTriggerTime(int i10) {
        this.retainTriggerTime = i10;
    }

    @NotNull
    public String toString() {
        return "ImmersionBackConfig(popupTitle=" + this.popupTitle + ", retainCountLimitByDay=" + this.retainCountLimitByDay + ", retainCountLimitByThreeHour=" + this.retainCountLimitByThreeHour + ", retainCountLimitByShortPlay=" + this.retainCountLimitByShortPlay + ", retainTriggerTime=" + this.retainTriggerTime + ')';
    }

    public ImmersionBackConfig(@NotNull String popupTitle, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(popupTitle, "popupTitle");
        this.popupTitle = popupTitle;
        this.retainCountLimitByDay = i10;
        this.retainCountLimitByThreeHour = i11;
        this.retainCountLimitByShortPlay = i12;
        this.retainTriggerTime = i13;
    }

    public /* synthetic */ ImmersionBackConfig(String str, int i10, int i11, int i12, int i13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? "" : str, (i14 & 2) != 0 ? 10 : i10, (i14 & 4) != 0 ? 5 : i11, (i14 & 8) != 0 ? 3 : i12, (i14 & 16) == 0 ? i13 : 10);
    }
}
