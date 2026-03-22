package com.startshorts.androidplayer.bean.mylist;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancelCollectBatchRequest.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CollectIdRequest {
    private long collectId;
    private int contentTag;

    public CollectIdRequest(long j10, int i10) {
        this.collectId = j10;
        this.contentTag = i10;
    }

    public static /* synthetic */ CollectIdRequest copy$default(CollectIdRequest collectIdRequest, long j10, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j10 = collectIdRequest.collectId;
        }
        if ((i11 & 2) != 0) {
            i10 = collectIdRequest.contentTag;
        }
        return collectIdRequest.copy(j10, i10);
    }

    public final long component1() {
        return this.collectId;
    }

    public final int component2() {
        return this.contentTag;
    }

    @NotNull
    public final CollectIdRequest copy(long j10, int i10) {
        return new CollectIdRequest(j10, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CollectIdRequest)) {
            return false;
        }
        CollectIdRequest collectIdRequest = (CollectIdRequest) obj;
        if (this.collectId == collectIdRequest.collectId && this.contentTag == collectIdRequest.contentTag) {
            return true;
        }
        return false;
    }

    public final long getCollectId() {
        return this.collectId;
    }

    public final int getContentTag() {
        return this.contentTag;
    }

    public int hashCode() {
        return (Long.hashCode(this.collectId) * 31) + Integer.hashCode(this.contentTag);
    }

    public final void setCollectId(long j10) {
        this.collectId = j10;
    }

    public final void setContentTag(int i10) {
        this.contentTag = i10;
    }

    @NotNull
    public String toString() {
        return "CollectIdRequest(collectId=" + this.collectId + ", contentTag=" + this.contentTag + ')';
    }
}
