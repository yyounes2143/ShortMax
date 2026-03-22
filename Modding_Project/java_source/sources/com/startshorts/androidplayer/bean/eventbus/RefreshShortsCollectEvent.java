package com.startshorts.androidplayer.bean.eventbus;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RefreshShortsCollectEvent.kt */
@Metadata
/* loaded from: classes6.dex */
public final class RefreshShortsCollectEvent {
    private final boolean collect;
    private final int shortsId;

    public RefreshShortsCollectEvent(int i10, boolean z10) {
        this.shortsId = i10;
        this.collect = z10;
    }

    public static /* synthetic */ RefreshShortsCollectEvent copy$default(RefreshShortsCollectEvent refreshShortsCollectEvent, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = refreshShortsCollectEvent.shortsId;
        }
        if ((i11 & 2) != 0) {
            z10 = refreshShortsCollectEvent.collect;
        }
        return refreshShortsCollectEvent.copy(i10, z10);
    }

    public final int component1() {
        return this.shortsId;
    }

    public final boolean component2() {
        return this.collect;
    }

    @NotNull
    public final RefreshShortsCollectEvent copy(int i10, boolean z10) {
        return new RefreshShortsCollectEvent(i10, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RefreshShortsCollectEvent)) {
            return false;
        }
        RefreshShortsCollectEvent refreshShortsCollectEvent = (RefreshShortsCollectEvent) obj;
        if (this.shortsId == refreshShortsCollectEvent.shortsId && this.collect == refreshShortsCollectEvent.collect) {
            return true;
        }
        return false;
    }

    public final boolean getCollect() {
        return this.collect;
    }

    public final int getShortsId() {
        return this.shortsId;
    }

    public int hashCode() {
        return (Integer.hashCode(this.shortsId) * 31) + Boolean.hashCode(this.collect);
    }

    @NotNull
    public String toString() {
        return "RefreshShortsCollectEvent(shortsId=" + this.shortsId + ", collect=" + this.collect + ')';
    }
}
