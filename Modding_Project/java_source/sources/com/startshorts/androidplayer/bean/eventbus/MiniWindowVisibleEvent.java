package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MiniWindowEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MiniWindowVisibleEvent {
    private final boolean visible;

    public MiniWindowVisibleEvent(boolean z10) {
        this.visible = z10;
    }

    public static /* synthetic */ MiniWindowVisibleEvent copy$default(MiniWindowVisibleEvent miniWindowVisibleEvent, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = miniWindowVisibleEvent.visible;
        }
        return miniWindowVisibleEvent.copy(z10);
    }

    public final boolean component1() {
        return this.visible;
    }

    @NotNull
    public final MiniWindowVisibleEvent copy(boolean z10) {
        return new MiniWindowVisibleEvent(z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof MiniWindowVisibleEvent) && this.visible == ((MiniWindowVisibleEvent) obj).visible) {
            return true;
        }
        return false;
    }

    public final boolean getVisible() {
        return this.visible;
    }

    public int hashCode() {
        return Boolean.hashCode(this.visible);
    }

    @NotNull
    public String toString() {
        return "MiniWindowVisibleEvent(visible=" + this.visible + ')';
    }
}
