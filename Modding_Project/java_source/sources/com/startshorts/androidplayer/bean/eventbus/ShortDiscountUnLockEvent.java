package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortDiscountUnLockEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ShortDiscountUnLockEvent {
    private final int shortsId;

    public ShortDiscountUnLockEvent(int i10) {
        this.shortsId = i10;
    }

    public static /* synthetic */ ShortDiscountUnLockEvent copy$default(ShortDiscountUnLockEvent shortDiscountUnLockEvent, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = shortDiscountUnLockEvent.shortsId;
        }
        return shortDiscountUnLockEvent.copy(i10);
    }

    public final int component1() {
        return this.shortsId;
    }

    @NotNull
    public final ShortDiscountUnLockEvent copy(int i10) {
        return new ShortDiscountUnLockEvent(i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ShortDiscountUnLockEvent) && this.shortsId == ((ShortDiscountUnLockEvent) obj).shortsId) {
            return true;
        }
        return false;
    }

    public final int getShortsId() {
        return this.shortsId;
    }

    public int hashCode() {
        return Integer.hashCode(this.shortsId);
    }

    @NotNull
    public String toString() {
        return "ShortDiscountUnLockEvent(shortsId=" + this.shortsId + ')';
    }
}
