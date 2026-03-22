package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FinishImmersionActivityEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class FinishImmersionActivityEvent {
    @NotNull
    private final String exceptActivityId;

    public FinishImmersionActivityEvent(@NotNull String exceptActivityId) {
        Intrinsics.checkNotNullParameter(exceptActivityId, "exceptActivityId");
        this.exceptActivityId = exceptActivityId;
    }

    public static /* synthetic */ FinishImmersionActivityEvent copy$default(FinishImmersionActivityEvent finishImmersionActivityEvent, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = finishImmersionActivityEvent.exceptActivityId;
        }
        return finishImmersionActivityEvent.copy(str);
    }

    @NotNull
    public final String component1() {
        return this.exceptActivityId;
    }

    @NotNull
    public final FinishImmersionActivityEvent copy(@NotNull String exceptActivityId) {
        Intrinsics.checkNotNullParameter(exceptActivityId, "exceptActivityId");
        return new FinishImmersionActivityEvent(exceptActivityId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof FinishImmersionActivityEvent) && Intrinsics.areEqual(this.exceptActivityId, ((FinishImmersionActivityEvent) obj).exceptActivityId)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getExceptActivityId() {
        return this.exceptActivityId;
    }

    public int hashCode() {
        return this.exceptActivityId.hashCode();
    }

    @NotNull
    public String toString() {
        return "FinishImmersionActivityEvent(exceptActivityId=" + this.exceptActivityId + ')';
    }
}
