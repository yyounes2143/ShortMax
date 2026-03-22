package com.startshorts.androidplayer.bean.act;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActResourceList.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ResourceIndex {
    private final int index;
    private final long time;

    public ResourceIndex(int i10, long j10) {
        this.index = i10;
        this.time = j10;
    }

    public static /* synthetic */ ResourceIndex copy$default(ResourceIndex resourceIndex, int i10, long j10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = resourceIndex.index;
        }
        if ((i11 & 2) != 0) {
            j10 = resourceIndex.time;
        }
        return resourceIndex.copy(i10, j10);
    }

    public final int component1() {
        return this.index;
    }

    public final long component2() {
        return this.time;
    }

    @NotNull
    public final ResourceIndex copy(int i10, long j10) {
        return new ResourceIndex(i10, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResourceIndex)) {
            return false;
        }
        ResourceIndex resourceIndex = (ResourceIndex) obj;
        if (this.index == resourceIndex.index && this.time == resourceIndex.time) {
            return true;
        }
        return false;
    }

    public final int getIndex() {
        return this.index;
    }

    public final long getTime() {
        return this.time;
    }

    public int hashCode() {
        return (Integer.hashCode(this.index) * 31) + Long.hashCode(this.time);
    }

    @NotNull
    public String toString() {
        return "ResourceIndex(index=" + this.index + ", time=" + this.time + ')';
    }
}
