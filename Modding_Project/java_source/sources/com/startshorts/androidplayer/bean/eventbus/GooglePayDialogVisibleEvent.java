package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GooglePayDialogVisibleEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class GooglePayDialogVisibleEvent {
    private final boolean visible;

    public GooglePayDialogVisibleEvent(boolean z10) {
        this.visible = z10;
    }

    public static /* synthetic */ GooglePayDialogVisibleEvent copy$default(GooglePayDialogVisibleEvent googlePayDialogVisibleEvent, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = googlePayDialogVisibleEvent.visible;
        }
        return googlePayDialogVisibleEvent.copy(z10);
    }

    public final boolean component1() {
        return this.visible;
    }

    @NotNull
    public final GooglePayDialogVisibleEvent copy(boolean z10) {
        return new GooglePayDialogVisibleEvent(z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof GooglePayDialogVisibleEvent) && this.visible == ((GooglePayDialogVisibleEvent) obj).visible) {
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
        return "GooglePayDialogVisibleEvent(visible=" + this.visible + ')';
    }
}
