package com.startshorts.androidplayer.bean.event;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class EventInfo {
    private final long createTime;
    @NotNull
    private final String eventName;
    @Nullable
    private final Bundle extras;

    public EventInfo(@NotNull String eventName, @Nullable Bundle bundle, long j10) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        this.eventName = eventName;
        this.extras = bundle;
        this.createTime = j10;
    }

    public static /* synthetic */ EventInfo copy$default(EventInfo eventInfo, String str, Bundle bundle, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = eventInfo.eventName;
        }
        if ((i10 & 2) != 0) {
            bundle = eventInfo.extras;
        }
        if ((i10 & 4) != 0) {
            j10 = eventInfo.createTime;
        }
        return eventInfo.copy(str, bundle, j10);
    }

    @NotNull
    public final String component1() {
        return this.eventName;
    }

    @Nullable
    public final Bundle component2() {
        return this.extras;
    }

    public final long component3() {
        return this.createTime;
    }

    @NotNull
    public final EventInfo copy(@NotNull String eventName, @Nullable Bundle bundle, long j10) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        return new EventInfo(eventName, bundle, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EventInfo)) {
            return false;
        }
        EventInfo eventInfo = (EventInfo) obj;
        if (Intrinsics.areEqual(this.eventName, eventInfo.eventName) && Intrinsics.areEqual(this.extras, eventInfo.extras) && this.createTime == eventInfo.createTime) {
            return true;
        }
        return false;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    @NotNull
    public final String getEventName() {
        return this.eventName;
    }

    @Nullable
    public final Bundle getExtras() {
        return this.extras;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.eventName.hashCode() * 31;
        Bundle bundle = this.extras;
        if (bundle == null) {
            hashCode = 0;
        } else {
            hashCode = bundle.hashCode();
        }
        return ((hashCode2 + hashCode) * 31) + Long.hashCode(this.createTime);
    }

    @NotNull
    public String toString() {
        return "EventInfo(eventName=" + this.eventName + ", extras=" + this.extras + ", createTime=" + this.createTime + ')';
    }

    public /* synthetic */ EventInfo(String str, Bundle bundle, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : bundle, (i10 & 4) != 0 ? -1L : j10);
    }
}
