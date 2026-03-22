package com.startshorts.androidplayer.bean.ad;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdShowCount.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AdShowCount {
    @NotNull
    private final String adUnitId;
    private final int dailyMaxShowCount;
    private int day;
    private int todayShowCount;

    public AdShowCount(@NotNull String adUnitId, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        this.adUnitId = adUnitId;
        this.day = i10;
        this.todayShowCount = i11;
        this.dailyMaxShowCount = i12;
    }

    public static /* synthetic */ AdShowCount copy$default(AdShowCount adShowCount, String str, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = adShowCount.adUnitId;
        }
        if ((i13 & 2) != 0) {
            i10 = adShowCount.day;
        }
        if ((i13 & 4) != 0) {
            i11 = adShowCount.todayShowCount;
        }
        if ((i13 & 8) != 0) {
            i12 = adShowCount.dailyMaxShowCount;
        }
        return adShowCount.copy(str, i10, i11, i12);
    }

    @NotNull
    public final String component1() {
        return this.adUnitId;
    }

    public final int component2() {
        return this.day;
    }

    public final int component3() {
        return this.todayShowCount;
    }

    public final int component4() {
        return this.dailyMaxShowCount;
    }

    @NotNull
    public final AdShowCount copy(@NotNull String adUnitId, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        return new AdShowCount(adUnitId, i10, i11, i12);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdShowCount)) {
            return false;
        }
        AdShowCount adShowCount = (AdShowCount) obj;
        if (Intrinsics.areEqual(this.adUnitId, adShowCount.adUnitId) && this.day == adShowCount.day && this.todayShowCount == adShowCount.todayShowCount && this.dailyMaxShowCount == adShowCount.dailyMaxShowCount) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getAdUnitId() {
        return this.adUnitId;
    }

    public final int getDailyMaxShowCount() {
        return this.dailyMaxShowCount;
    }

    public final int getDay() {
        return this.day;
    }

    public final int getTodayShowCount() {
        return this.todayShowCount;
    }

    public int hashCode() {
        return (((((this.adUnitId.hashCode() * 31) + Integer.hashCode(this.day)) * 31) + Integer.hashCode(this.todayShowCount)) * 31) + Integer.hashCode(this.dailyMaxShowCount);
    }

    public final void setDay(int i10) {
        this.day = i10;
    }

    public final void setTodayShowCount(int i10) {
        this.todayShowCount = i10;
    }

    @NotNull
    public String toString() {
        return '[' + this.todayShowCount + '|' + this.dailyMaxShowCount + "]id=" + StringsKt.l1(this.adUnitId, DomExceptionUtils.SEPARATOR, null, 2, null) + ",day=" + this.day;
    }
}
