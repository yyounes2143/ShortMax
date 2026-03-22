package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RefreshReservationEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RefreshReservationEvent {
    private final boolean reservation;
    private final int shortsId;

    public RefreshReservationEvent(int i10, boolean z10) {
        this.shortsId = i10;
        this.reservation = z10;
    }

    public static /* synthetic */ RefreshReservationEvent copy$default(RefreshReservationEvent refreshReservationEvent, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = refreshReservationEvent.shortsId;
        }
        if ((i11 & 2) != 0) {
            z10 = refreshReservationEvent.reservation;
        }
        return refreshReservationEvent.copy(i10, z10);
    }

    public final int component1() {
        return this.shortsId;
    }

    public final boolean component2() {
        return this.reservation;
    }

    @NotNull
    public final RefreshReservationEvent copy(int i10, boolean z10) {
        return new RefreshReservationEvent(i10, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RefreshReservationEvent)) {
            return false;
        }
        RefreshReservationEvent refreshReservationEvent = (RefreshReservationEvent) obj;
        if (this.shortsId == refreshReservationEvent.shortsId && this.reservation == refreshReservationEvent.reservation) {
            return true;
        }
        return false;
    }

    public final boolean getReservation() {
        return this.reservation;
    }

    public final int getShortsId() {
        return this.shortsId;
    }

    public int hashCode() {
        return (Integer.hashCode(this.shortsId) * 31) + Boolean.hashCode(this.reservation);
    }

    @NotNull
    public String toString() {
        return "RefreshReservationEvent(shortsId=" + this.shortsId + ", reservation=" + this.reservation + ')';
    }
}
