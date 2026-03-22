package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DestroyNotificationActivityEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DestroyNotificationActivityEvent {
    @Nullable
    private final String exceptActivityId;

    public DestroyNotificationActivityEvent() {
        this(null, 1, null);
    }

    public static /* synthetic */ DestroyNotificationActivityEvent copy$default(DestroyNotificationActivityEvent destroyNotificationActivityEvent, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = destroyNotificationActivityEvent.exceptActivityId;
        }
        return destroyNotificationActivityEvent.copy(str);
    }

    @Nullable
    public final String component1() {
        return this.exceptActivityId;
    }

    @NotNull
    public final DestroyNotificationActivityEvent copy(@Nullable String str) {
        return new DestroyNotificationActivityEvent(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DestroyNotificationActivityEvent) && Intrinsics.areEqual(this.exceptActivityId, ((DestroyNotificationActivityEvent) obj).exceptActivityId)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getExceptActivityId() {
        return this.exceptActivityId;
    }

    public int hashCode() {
        String str = this.exceptActivityId;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    @NotNull
    public String toString() {
        return "DestroyNotificationActivityEvent(exceptActivityId=" + this.exceptActivityId + ')';
    }

    public DestroyNotificationActivityEvent(@Nullable String str) {
        this.exceptActivityId = str;
    }

    public /* synthetic */ DestroyNotificationActivityEvent(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str);
    }
}
