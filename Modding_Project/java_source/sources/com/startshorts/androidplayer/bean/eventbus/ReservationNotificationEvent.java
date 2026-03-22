package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ReservationNotificationEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ReservationNotificationEvent {
    private final boolean isShow;
    private final int shortsId;

    public ReservationNotificationEvent(int i10, boolean z10) {
        this.shortsId = i10;
        this.isShow = z10;
    }

    public static /* synthetic */ ReservationNotificationEvent copy$default(ReservationNotificationEvent reservationNotificationEvent, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = reservationNotificationEvent.shortsId;
        }
        if ((i11 & 2) != 0) {
            z10 = reservationNotificationEvent.isShow;
        }
        return reservationNotificationEvent.copy(i10, z10);
    }

    public final int component1() {
        return this.shortsId;
    }

    public final boolean component2() {
        return this.isShow;
    }

    @NotNull
    public final ReservationNotificationEvent copy(int i10, boolean z10) {
        return new ReservationNotificationEvent(i10, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReservationNotificationEvent)) {
            return false;
        }
        ReservationNotificationEvent reservationNotificationEvent = (ReservationNotificationEvent) obj;
        if (this.shortsId == reservationNotificationEvent.shortsId && this.isShow == reservationNotificationEvent.isShow) {
            return true;
        }
        return false;
    }

    public final int getShortsId() {
        return this.shortsId;
    }

    public int hashCode() {
        return (Integer.hashCode(this.shortsId) * 31) + Boolean.hashCode(this.isShow);
    }

    public final boolean isShow() {
        return this.isShow;
    }

    @NotNull
    public String toString() {
        return "ReservationNotificationEvent(shortsId=" + this.shortsId + ", isShow=" + this.isShow + ')';
    }
}
