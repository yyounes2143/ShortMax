package com.startshorts.androidplayer.bean.act;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActShowTimeInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ActShowTimeInfo {
    private int actId;
    private int days;

    public ActShowTimeInfo(int i10, int i11) {
        this.days = i10;
        this.actId = i11;
    }

    public static /* synthetic */ ActShowTimeInfo copy$default(ActShowTimeInfo actShowTimeInfo, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = actShowTimeInfo.days;
        }
        if ((i12 & 2) != 0) {
            i11 = actShowTimeInfo.actId;
        }
        return actShowTimeInfo.copy(i10, i11);
    }

    public final int component1() {
        return this.days;
    }

    public final int component2() {
        return this.actId;
    }

    @NotNull
    public final ActShowTimeInfo copy(int i10, int i11) {
        return new ActShowTimeInfo(i10, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActShowTimeInfo)) {
            return false;
        }
        ActShowTimeInfo actShowTimeInfo = (ActShowTimeInfo) obj;
        if (this.days == actShowTimeInfo.days && this.actId == actShowTimeInfo.actId) {
            return true;
        }
        return false;
    }

    public final int getActId() {
        return this.actId;
    }

    public final int getDays() {
        return this.days;
    }

    public int hashCode() {
        return (Integer.hashCode(this.days) * 31) + Integer.hashCode(this.actId);
    }

    public final void setActId(int i10) {
        this.actId = i10;
    }

    public final void setDays(int i10) {
        this.days = i10;
    }

    @NotNull
    public String toString() {
        return "ActShowTimeInfo(days=" + this.days + ", actId=" + this.actId + ')';
    }
}
